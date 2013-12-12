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
    double ex = 0.0;
    double ex2 = 0.0;
    long long loc = 0;
    int m = argc;
    uint32_t window_size_absolute = floor(window_size * m);
    int kim = 0,keogh = 0, keogh2 = 0;
    double dist=0, lb_kim=0, lb_k=0, lb_k2=0;
    
    double mean = 0.0;
    double std = 0.0;
    double bsf = INF;          /// best-so-far
    double *query = new double[m];
    double *lower_envelope = new double[m];
    double *upper_envelope = new double[m];
    double *qo = new double[m];
    double *uo = new double[m];
    double *lo = new double[m];
    double *cb = new double[m];
    double *cb1 = new double[m];
    double *cb2 = new double[m];
    double *tz = new double[m];
    double *t = new double[m * 2];
    double *buffer = new double[EPOCH];
    double *u_buff = new double[EPOCH];
    double *l_buff = new double[EPOCH];
    int *order = new int[m];
    Index *Q_tmp = new Index[m];
    
    double classification = 0.0;
    
    for (uint32_t index = 0; index < num_values; ++index)
    {
        double value = GetAFloat(argv[index]);
        query[index] = value;
        ex += value;
        ex2 += value * value;
    }
    
    /// Do z-normalize the query, keep in same array, q
    normalizer.mean = ex / m;
    normalizer.std_deviation = sqrt((ex2 / m) - mean * mean);
    
    for(uint32_t i = 0 ; i < m ; ++i)
    {
        query[i] = normalizer.normalize(query[i]);
    }
    
    /// Create envelop of the query: lower envelop, l, and upper envelop, u
    lower_upper_lemire(query, m, window_size_absolute, lower_envelope, upper_envelope);
    
    /// Sort the query one time by abs(z-norm(q[i]))
    for(uint32_t i = 0; i < m; ++i)
    {
        Q_tmp[i].value = query[i];
        Q_tmp[i].index = i;
    }
    qsort(Q_tmp, m, sizeof(Index), comp);
    
    /// also create another arrays for keeping sorted envelop
    for(uint32_t i = 0; i < m; ++i)
    {
        int o = Q_tmp[i].index;
        order[i] = o;
        qo[i] = query[o];
        uo[i] = upper_envelope[o];
        lo[i] = lower_envelope[o];
    }
    
    /// Initial the cummulative lower bound
    for(uint32_t i = 0; i < m; ++i)
    {   cb[i]=0;
        cb1[i]=0;
        cb2[i]=0;
    }
    
    uint32_t i = 0;          /// current index of the data in current chunk of size EPOCH
    uint32_t j = 0;          /// the starting index of the data in the circular array, t
    ex = ex2 = 0;
    bool done = false;
    int it = 0;
    int ep = 0;
    int k  = 0;
    long long I;    /// the starting index of the data in current chunk of size EPOCH
    double d = 0.0;
    // TODO: for now we just take the first observation
    feature_map::iterator feature_iterator = observations[0].features.begin();
    
    while(!done)
    {
        /// Read first m-1 points
        ep=0;
        if (it==0)
        {
            for(k = 0; k < m-1; ++k)
            {
                if (feature_iterator != observations[0].features.end())
                {
                    d = feature_iterator->second; // value
                    buffer[k] = d;
                    feature_iterator++;
                }
            }
        }
        else
        {
            for(k = 0; k < m-1; ++k)
            buffer[k] = buffer[EPOCH-m+1+k];
        }
        
        /// Read buffer of size EPOCH or when all data has been read.
        ep = m - 1;
        while(ep < EPOCH)
        {
            if (feature_iterator == observations[0].features.end())
            {
                break;
            }
            d = feature_iterator->second; // value
            buffer[ep] = d;
            ep++;
            feature_iterator++;
        }
        
        /// Data are read in chunk of size EPOCH.
        /// When there is nothing to read, the loop is end.
        if (ep<=m-1)
        {
            done = true;
        }
        else
        {
            lower_upper_lemire(buffer, ep, window_size_absolute, l_buff, u_buff);
            
            /// Just for printing a dot for approximate a million point. Not much accurate.
            if (it%(1000000/(EPOCH-m+1))==0)
            {
                post(".");
            }
            
            /// Do main task here..
            ex=0; ex2=0;
            for(i = 0; i < ep; i++)
            {
                /// A bunch of data has been read and pick one of them at a time to use
                d = buffer[i];
                
                /// Calcualte sum and sum square
                ex += d;
                ex2 += d*d;
                
                /// t is a circular array for keeping current data
                t[i%m] = d;
                
                /// Double the size for avoiding using modulo "%" operator
                t[(i%m)+m] = d;
                
                /// Start the task when there are more than m-1 points in the current chunk
                if( i >= m-1 )
                {
                    mean = ex/m;
                    std = ex2/m;
                    std = sqrt(std-mean*mean);
                    
                    /// compute the start location of the data in the current circular array, t
                    j = (i+1)%m;
                    /// the start location of the data in the current chunk
                    I = i-(m-1);
                    
                    /// Use a constant lower bound to prune the obvious subsequence
                    lb_kim = lb_kim_hierarchy(t, query, j, m, mean, std, bsf);
                    
                    if (lb_kim < bsf)
                    {
                        /// Use a linear time lower bound to prune; z_normalization of t will be computed on the fly.
                        /// uo, lo are envelop of the query.
                        lb_k = lb_keogh_cumulative(order, t, uo, lo, cb1, j, m, mean, std, bsf);
                        if (lb_k < bsf)
                        {
                            /// Take another linear time to compute z_normalization of t.
                            /// Note that for better optimization, this can merge to the previous function.
                            for(k=0;k<m;k++)
                            {
                                tz[k] = (t[(k+j)] - mean)/std;
                            }
                            
                            /// Use another lb_keogh to prune
                            /// qo is the sorted query. tz is unsorted z_normalized data.
                            /// l_buff, u_buff are big envelop for all data in this chunk
                            lb_k2 = lb_keogh_data_cumulative(order, tz, qo, cb2, l_buff+I, u_buff+I, m, mean, std, bsf);
                            if (lb_k2 < bsf)
                            {
                                /// Choose better lower bound between lb_keogh and lb_keogh2 to be used in early abandoning DTW
                                /// Note that cb and cb2 will be cumulative summed here.
                                if (lb_k > lb_k2)
                                {
                                    cb[m-1]=cb1[m-1];
                                    for(k=m-2; k>=0; k--)
                                        cb[k] = cb[k+1]+cb1[k];
                                }
                                else
                                {
                                    cb[m-1]=cb2[m-1];
                                    for(k=m-2; k>=0; k--)
                                        cb[k] = cb[k+1]+cb2[k];
                                }
                                
                                /// Compute DTW and early abandoning if possible
                                dist = dtw(tz, query, cb, m, window_size_absolute, bsf);
                                
                                if( dist < bsf )
                                {   /// Update bsf
                                    /// loc is the real starting location of the nearest neighbor in the file
                                    bsf = dist;
                                    loc = (it)*(EPOCH-m+1) + i-m+1;
                                }
                            } else
                                keogh2++;
                        } else
                            keogh++;
                    } else
                        kim++;
                    
                    /// Reduce obsolute points from sum and sum square
                    ex -= t[j];
                    ex2 -= t[j]*t[j];
                }
            }
            
            /// If the size of last chunk is less then EPOCH, then no more data and terminate.
            if (ep<EPOCH)
                done=true;
            else
                it++;
        }
    }
    
    i = (it)*(EPOCH-m+1) + ep;
    
    delete[] query;
    delete[] lower_envelope;
    delete[] upper_envelope;
    delete[] qo;
    delete[] uo;
    delete[] lo;
    delete[] cb;
    delete[] cb1;
    delete[] cb2;
    delete[] t;
    delete[] order;
    delete[] Q_tmp;
    delete[] buffer;
    delete[] u_buff;
    delete[] l_buff;
    
    //    classification = svm_predict(model, nodes);
    
    // TODO: loc is long long, we have a precision issue
    ToOutInt(0, loc);
}

    

FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
