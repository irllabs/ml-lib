/*
 * ml-lib, a machine learning library for Max and Pure Data
 * Copyright (C) 2013 Carnegie Mellon University
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 2 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of  MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "ml.h"
#include "UCR_DTW.h"

#include <flext.h>
#include <math.h>

namespace ml
{
    
// TODO: refactor this and normalizer into a standard interface that can be used by the normalize method
class z_normalizer
{
public:
    z_normalizer()
    : mean(0), std_deviation(0)
    {
        
    }
    
    ~z_normalizer()
    {
        
    }
    
    double normalize(double value)
    {
        return (value - mean) / std_deviation;
    }
    
    double mean;
    double std_deviation;
};


class ml_dtw : ml_base
{
    FLEXT_HEADER_S(ml_dtw, ml_base, setup);
    
public:
    ml_dtw()
    : window_size(.05)
    {
        post("ml.DTW: Dynamic Time Warping based on the UCR Suite");
    }
    
    ~ml_dtw()
    {
    
    }
    
protected:
    static void setup(t_classid c)
    {
        FLEXT_CADDATTR_SET(c, "window_size", set_window_size);
        
        FLEXT_CADDATTR_GET(c, "window_size", get_window_size);

    }
    
    // Methods
    void classify(int argc, const t_atom *argv);
    
    // Attribute Setters
    void set_window_size(float size);
    
    // Attribute Getters
    void get_window_size(float &size) const;
    
private:
    // Attribute wrappers
    FLEXT_CALLVAR_F(get_window_size, set_window_size);
    
    // Instance variables
    double window_size;
};
    
// Utility functions

    
// Attribute setters
void ml_dtw::set_window_size(float size)
{
    if (size >= 0.0 && size <= 1.0)
    {
        window_size = (double)size;
    }
}
    
// Attribute getters
void ml_dtw::get_window_size(float &size) const
{
    size = window_size;
}
    
// Methods
    
void ml_dtw::classify(int argc, const t_atom *argv)
{
    if (observations.size() == 0)
    {
        error("no observations added, use 'add' to add labeled feature vectors");
        return;
    }
    
    /// For every EPOCH points, all cummulative values, such as ex (sum), ex2 (sum square), will be restarted for reducing the floating point error.
    int EPOCH = 100000;
    
    uint32_t num_values = argc;
    uint32_t max_index = num_values + 1;
    std::vector<int> labels;
    std::vector<double> probabilities;
    AtomList estimates;
    z_normalizer normalizer;
    double sum = 0.0;
    double sum_squared = 0.0;
    long long location = 0;
    int query_length = argc;
    uint32_t window_size_absolute = floor(window_size * query_length);
    int kim = 0;
    int keogh = 0;
    int keogh2 = 0;
    double dist = 0;
    double lower_bound_kim = 0;
    double lower_bound_keogh = 0;
    double lower_bound_keogh2 = 0;
    double mean = 0.0;
    double std_deviation = 0.0;
    double best_so_far = INF;
    double *query = new double[query_length];
    double *lower_envelope = new double[query_length];
    double *upper_envelope = new double[query_length];
    double *query_ordered = new double[query_length];
    double *upper_ordered = new double[query_length];
    double *lower_ordered = new double[query_length];
    double *cumulative_bound = new double[query_length];
    double *cumulative_bound1 = new double[query_length];
    double *cumulative_bound2 = new double[query_length];
    double *z_normalized_time_series = new double[query_length];
    double *time_series = new double[query_length * 2];
    double *buffer = new double[EPOCH];
    double *upper_buffer = new double[EPOCH];
    double *lower_buff = new double[EPOCH];
    int *order = new int[query_length];
    Index *Q_tmp = new Index[query_length];
    
    double classification = 0.0;
    
    for (uint32_t index = 0; index < num_values; ++index)
    {
        double value = GetAFloat(argv[index]);
        query[index] = value;
        sum += value;
        sum_squared += value * value;
    }
    
    /// Do z-normalize the query, keep in same array, q
    normalizer.mean = sum / query_length;
    normalizer.std_deviation = sqrt((sum_squared / query_length) - mean * mean);
    
    for(uint32_t i = 0 ; i < query_length ; ++i)
    {
        query[i] = normalizer.normalize(query[i]);
    }
    
    /// Create envelop of the query: lower envelop, l, and upper envelop, u
    lower_upper_lemire(query, query_length, window_size_absolute, lower_envelope, upper_envelope);
    
    /// Sort the query one time by abs(z-norm(q[i]))
    for(uint32_t i = 0; i < query_length; ++i)
    {
        Q_tmp[i].value = query[i];
        Q_tmp[i].index = i;
    }
    qsort(Q_tmp, query_length, sizeof(Index), comp);
    
    /// also create another arrays for keeping sorted envelop
    for(uint32_t i = 0; i < query_length; ++i)
    {
        int o = Q_tmp[i].index;
        order[i] = o;
        query_ordered[i] = query[o];
        upper_ordered[i] = upper_envelope[o];
        lower_ordered[i] = lower_envelope[o];
    }
    
    /// Initial the cummulative lower bound
    for(uint32_t i = 0; i < query_length; ++i)
    {   cumulative_bound[i]=0;
        cumulative_bound1[i]=0;
        cumulative_bound2[i]=0;
    }
    
    uint32_t i = 0;          /// current index of the data in current chunk of size EPOCH
    uint32_t j = 0;          /// the starting index of the data in the circular array, t
    sum = sum_squared = 0;
    bool done = false;
    int it = 0;
    int epoch = 0;
    int k  = 0;
    long long I;    /// the starting index of the data in current chunk of size EPOCH
    double current = 0.0;
    // TODO: for now we just take the first observation
    feature_map::iterator feature_iterator = observations[0].features.begin();
    
    while(!done)
    {
        /// Read first m-1 points
        epoch = 0;
        if (it==0)
        {
            for(k = 0; k < query_length-1; ++k)
            {
                if (feature_iterator != observations[0].features.end())
                {
                    current = feature_iterator->second; // value
                    buffer[k] = current;
                    feature_iterator++;
                }
            }
        }
        else
        {
            for(k = 0; k < query_length-1; ++k)
            buffer[k] = buffer[EPOCH-query_length+1+k];
        }
        
        /// Read buffer of size EPOCH or when all data has been read.
        epoch = query_length - 1;
        while(epoch < EPOCH)
        {
            if (feature_iterator == observations[0].features.end())
            {
                break;
            }
            current = feature_iterator->second; // value
            buffer[epoch] = current;
            epoch++;
            feature_iterator++;
        }
        
        /// Data are read in chunk of size EPOCH.
        /// When there is nothing to read, the loop is end.
        if (epoch <= query_length-1)
        {
            done = true;
        }
        else
        {
            lower_upper_lemire(buffer, epoch, window_size_absolute, lower_buff, upper_buffer);
            
            /// Just for printing a dot for approximate a million point. Not much accurate.
            if (it%(1000000/(EPOCH-query_length+1))==0)
            {
                post(".");
            }
            
            /// Do main task here..
            sum=0; sum_squared=0;
            for(i = 0; i < epoch; i++)
            {
                /// A bunch of data has been read and pick one of them at a time to use
                current = buffer[i];
                
                /// Calcualte sum and sum square
                sum += current;
                sum_squared += current*current;
                
                /// t is a circular array for keeping current data
                time_series[i%query_length] = current;
                
                /// Double the size for avoiding using modulo "%" operator
                time_series[(i%query_length)+query_length] = current;
                
                /// Start the task when there are more than m-1 points in the current chunk
                if( i >= query_length-1 )
                {
                    mean = sum/query_length;
                    std_deviation = sum_squared/query_length;
                    std_deviation = sqrt(std_deviation-mean*mean);
                    
                    /// compute the start location of the data in the current circular array, t
                    j = (i+1)%query_length;
                    /// the start location of the data in the current chunk
                    I = i-(query_length-1);
                    
                    /// Use a constant lower bound to prune the obvious subsequence
                    lower_bound_kim = lb_kim_hierarchy(time_series, query, j, query_length, mean, std_deviation, best_so_far);
                    
                    if (lower_bound_kim < best_so_far)
                    {
                        /// Use a linear time lower bound to prune; z_normalization of t will be computed on the fly.
                        /// uo, lo are envelop of the query.
                        lower_bound_keogh = lb_keogh_cumulative(order, time_series, upper_ordered, lower_ordered, cumulative_bound1, j, query_length, mean, std_deviation, best_so_far);
                        if (lower_bound_keogh < best_so_far)
                        {
                            /// Take another linear time to compute z_normalization of t.
                            /// Note that for better optimization, this can merge to the previous function.
                            for(k=0;k<query_length;k++)
                            {
                                z_normalized_time_series[k] = (time_series[(k+j)] - mean)/std_deviation;
                            }
                            
                            /// Use another lb_keogh to prune
                            /// qo is the sorted query. tz is unsorted z_normalized data.
                            /// l_buff, u_buff are big envelop for all data in this chunk
                            lower_bound_keogh2 = lb_keogh_data_cumulative(order, z_normalized_time_series, query_ordered, cumulative_bound2, lower_buff+I, upper_buffer+I, query_length, mean, std_deviation, best_so_far);
                            if (lower_bound_keogh2 < best_so_far)
                            {
                                /// Choose better lower bound between lb_keogh and lb_keogh2 to be used in early abandoning DTW
                                /// Note that cb and cb2 will be cumulative summed here.
                                if (lower_bound_keogh > lower_bound_keogh2)
                                {
                                    cumulative_bound[query_length-1]=cumulative_bound1[query_length-1];
                                    for(k=query_length-2; k>=0; k--)
                                        cumulative_bound[k] = cumulative_bound[k+1]+cumulative_bound1[k];
                                }
                                else
                                {
                                    cumulative_bound[query_length-1]=cumulative_bound2[query_length-1];
                                    for(k=query_length-2; k>=0; k--)
                                        cumulative_bound[k] = cumulative_bound[k+1]+cumulative_bound2[k];
                                }
                                
                                /// Compute DTW and early abandoning if possible
                                dist = dtw(z_normalized_time_series, query, cumulative_bound, query_length, window_size_absolute, best_so_far);
                                
                                if( dist < best_so_far )
                                {   /// Update bsf
                                    /// loc is the real starting location of the nearest neighbor in the file
                                    best_so_far = dist;
                                    location = (it)*(EPOCH-query_length+1) + i-query_length+1;
                                }
                            } else
                                keogh2++;
                        } else
                            keogh++;
                    } else
                        kim++;
                    
                    /// Reduce obsolute points from sum and sum square
                    sum -= time_series[j];
                    sum_squared -= time_series[j]*time_series[j];
                }
            }
            
            /// If the size of last chunk is less then EPOCH, then no more data and terminate.
            if (epoch<EPOCH)
                done=true;
            else
                it++;
        }
    }
    
    i = (it)*(EPOCH-query_length+1) + epoch;
    
    delete[] query;
    delete[] lower_envelope;
    delete[] upper_envelope;
    delete[] query_ordered;
    delete[] upper_ordered;
    delete[] lower_ordered;
    delete[] cumulative_bound;
    delete[] cumulative_bound1;
    delete[] cumulative_bound2;
    delete[] time_series;
    delete[] order;
    delete[] Q_tmp;
    delete[] buffer;
    delete[] upper_buffer;
    delete[] lower_buff;
    
    //    classification = svm_predict(model, nodes);
    
    // TODO: loc is long long, we have a precision issue
    ToOutInt(0, location);
}

    

FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
