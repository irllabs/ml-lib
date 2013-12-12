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

#include <algorithm>
#include <numeric>

#include <flext.h>
#include <math.h>

namespace ml
{
    
template<typename T>
struct sum_square
{
    T operator()(const T& Left, const T& Right) const
    {
        return (Left + Right*Right);
    }
};
    
typedef struct result_
{
    double label;
    long long location;
    double distance;
    
    bool operator < (const result_& result) const
    {
        return (distance < result.distance);
    }
}
result;

bool compare_observation_label(observation ob1, observation ob2)
{
    return (ob1.label < ob2.label);
}
    

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
    
    void dtw_(std::vector<double> query, const observation &observation, long long &location, double &distance);

    
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
    
void ml_dtw::dtw_(std::vector<double> query, const observation &observation, long long &location, double &distance)
{
    
    if (query.size() == 0 || observation.features.size() == 0)
    {
        return;
    }
    
    uint32_t EPOCH = 100000;
    
    z_normalizer normalizer;
    double sum = std::accumulate(query.begin(), query.end(), 0.0);
    double sum_squared = std::accumulate(query.begin(), query.end(), 0.0, sum_square<double>());
    long long location_ = 0;
    uint32_t query_length = query.size();
    uint32_t window_size_absolute = floor(window_size * query_length);
    int kim = 0;
    int keogh = 0;
    int keogh2 = 0;
    double dist = 0;
    double lower_bound_kim = 0.0;
    double lower_bound_keogh = 0.0;
    double lower_bound_keogh2 = 0.0;
    double mean = 0.0;
    double std_deviation = 0.0;
    double best_so_far = INF;
    double *query_data = &query[0];
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
    
    normalizer.mean = sum / query_length;
    normalizer.std_deviation = sqrt((sum_squared / query_length) - mean * mean);
    
    for(uint32_t i = 0 ; i < query_length ; ++i)
    {
        query_data[i] = normalizer.normalize(query_data[i]);
    }
    
    lower_upper_lemire(query_data, query_length, window_size_absolute, lower_envelope, upper_envelope);
    
    for(uint32_t i = 0; i < query_length; ++i)
    {
        Q_tmp[i].value = query_data[i];
        Q_tmp[i].index = i;
    }
    qsort(Q_tmp, query_length, sizeof(Index), comp);
    
    for(uint32_t i = 0; i < query_length; ++i)
    {
        int o = Q_tmp[i].index;
        order[i] = o;
        query_ordered[i] = query_data[o];
        upper_ordered[i] = upper_envelope[o];
        lower_ordered[i] = lower_envelope[o];
    }
    
    for(uint32_t i = 0; i < query_length; ++i)
    {   cumulative_bound[i]=0;
        cumulative_bound1[i]=0;
        cumulative_bound2[i]=0;
    }
    
    uint32_t i = 0;
    uint32_t j = 0;
    sum = sum_squared = 0;
    bool done = false;
    int it = 0;
    uint32_t epoch = 0;
    int32_t k = 0;
    long long I;
    double current = 0.0;

    feature_map::const_iterator feature_iterator = observation.features.begin();
    
    while(!done)
    {
        epoch = 0;
        if (it==0)
        {
            for(k = 0; k < 0 ||  (uint32_t)k < query_length - 1; ++k)
            {
                if (feature_iterator != observation.features.end())
                {
                    current = feature_iterator->second; // value
                    buffer[k] = current;
                    feature_iterator++;
                }
            }
        }
        else
        {
            for(k = 0; k < 0 || (uint32_t)k < query_length - 1; ++k)
            buffer[k] = buffer[EPOCH-query_length+1+k];
        }
        
        epoch = query_length - 1;
        while(epoch < EPOCH)
        {
            if (feature_iterator == observation.features.end())
            {
                break;
            }
            current = feature_iterator->second; // value
            buffer[epoch] = current;
            epoch++;
            feature_iterator++;
        }
        
        if (epoch <= query_length-1)
        {
            done = true;
        }
        else
        {
            lower_upper_lemire(buffer, epoch, window_size_absolute, lower_buff, upper_buffer);
            
            if (it%(1000000/(EPOCH-query_length+1))==0)
            {
//                post(".");
            }
            
            sum=0;
            sum_squared=0;
            
            for(i = 0; i < epoch; i++)
            {
                current = buffer[i];
                
                sum += current;
                sum_squared += current*current;
                
                time_series[i%query_length] = current;
                time_series[(i%query_length)+query_length] = current;
                
                if( i >= query_length-1 )
                {
                    mean = sum/query_length;
                    std_deviation = sum_squared/query_length;
                    std_deviation = sqrt(std_deviation-mean*mean);
                    
                    j = (i+1)%query_length;
                    I = i-(query_length-1);
                    
                    lower_bound_kim = lb_kim_hierarchy(time_series, query_data, j, query_length, mean, std_deviation, best_so_far);
                    
                    if (lower_bound_kim < best_so_far)
                    {
                        lower_bound_keogh = lb_keogh_cumulative(order, time_series, upper_ordered, lower_ordered, cumulative_bound1, j, query_length, mean, std_deviation, best_so_far);
                        
                        if (lower_bound_keogh < best_so_far)
                        {
                            for(k = 0; k < 0 || (uint32_t)k < query_length; k++)
                            {
                                z_normalized_time_series[k] = (time_series[(k+j)] - mean)/std_deviation;
                            }
                            
                            lower_bound_keogh2 = lb_keogh_data_cumulative(order, z_normalized_time_series, query_ordered, cumulative_bound2, lower_buff+I, upper_buffer+I, query_length, mean, std_deviation, best_so_far);
                            
                            if (lower_bound_keogh2 < best_so_far)
                            {
                                if (lower_bound_keogh > lower_bound_keogh2)
                                {
                                    cumulative_bound[query_length-1]=cumulative_bound1[query_length-1];
                                    for(k = query_length-2; k >= 0; k--)
                                        cumulative_bound[k] = cumulative_bound[k+1]+cumulative_bound1[k];
                                }
                                else
                                {
                                    cumulative_bound[query_length-1]=cumulative_bound2[query_length-1];
                                    for(k=query_length-2; k>=0; k--)
                                        cumulative_bound[k] = cumulative_bound[k+1]+cumulative_bound2[k];
                                }
                                
                                dist = dtw(z_normalized_time_series, query_data, cumulative_bound, query_length, window_size_absolute, best_so_far);
                                
                                if( dist < best_so_far )
                                {
                                    best_so_far = dist;
                                    location_ = (it)*(EPOCH-query_length+1) + i-query_length+1;
                                }
                            }
                            else
                            {
                                keogh2++;
                            }
                        }
                        else
                        {
                            keogh++;
                        }
                    }
                    else
                    {
                        kim++;
                    }
                    
                    sum -= time_series[j];
                    sum_squared -= time_series[j]*time_series[j];
                }
            }
            
            /// If the size of last chunk is less then EPOCH, then no more data and terminate.
            if (epoch<EPOCH)
            {
                done=true;
            }
            else
            {
                it++;
            }
        }
    }
    
    location = location_;
    distance = sqrt(best_so_far);
    
    delete[] lower_envelope;
    delete[] upper_envelope;
    delete[] query_ordered;
    delete[] upper_ordered;
    delete[] lower_ordered;
    delete[] cumulative_bound;
    delete[] cumulative_bound1;
    delete[] cumulative_bound2;
    delete[] z_normalized_time_series;
    delete[] time_series;
    delete[] buffer;
    delete[] upper_buffer;
    delete[] lower_buff;
    delete[] order;
    delete[] Q_tmp;
    
}

// Methods
void ml_dtw::classify(int argc, const t_atom *argv)
{
    if (observations.size() == 0)
    {
        error("no observations added, use 'add' to add labeled feature vectors");
        return;
    }
    
    std::vector<double> query;
    
    for (uint32_t index = 0; index < (uint32_t)argc; ++index)
    {
        double value = GetAFloat(argv[index]);
        query.push_back(value);
    }
    
    std::vector<observation>::iterator observation_iterator;
    std::vector<result> results;
    std::sort(observations.begin(), observations.end(), compare_observation_label);
    
    AtomList triples;
    
    for (observation_iterator = observations.begin(); observation_iterator != observations.end(); ++observation_iterator)
    {
        long long location = 0;
        double distance = 0;
        result result;
        t_atom label_a;
        t_atom location_a;
        t_atom distance_a;
        
        dtw_(query, *observation_iterator, location, distance);
        
        result.location = location;
        result.distance = distance;
        result.label = observation_iterator->label;

        SetDouble(&distance_a, result.distance);
        SetInt(label_a, result.label);
        SetInt(location_a, result.location);
        
        triples.Append(label_a);
        triples.Append(location_a);
        triples.Append(distance_a);
        
        results.push_back(result);
    }
    
    std::sort(results.begin(), results.end());
    result winner = results[0];
    
    AtomList result_;
    
    t_atom label_a;
    t_atom location_a;
    
    SetInt(label_a, winner.label);
    SetInt(location_a, winner.location);
    
    result_.Append(label_a);
    result_.Append(location_a);
    
    ToOutList(0, result_);
    ToOutList(1, triples);
}
    

FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
