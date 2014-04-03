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

#include <vector>

namespace ml
{
    class ml_peak : flext_base
    {
        FLEXT_HEADER_S(ml_peak, flext_base, setup);
        
    public:
        ml_peak()
        : peak_threshold(1e-6)
        {
            post("ml.peak: Peak Detection based on the GRT library version %s", GRT::GRTBase::getGRTRevison().c_str());
            FLEXT_ADDMETHOD(0, update);
            FLEXT_ADDMETHOD(0, peaks);
        }
        
        ~ml_peak()
        {
            
        }
        
    protected:
        
        static void setup(t_classid c)
        {
            
            FLEXT_CADDATTR_SET(c, "search_window_size", set_search_window_size);
            FLEXT_CADDATTR_SET(c, "peak_threshold", set_peak_threshold);

            //            FLEXT_CADDATTR_SET(c, "low_pass_filter_size", set_low_pass_filter_size);
            
            FLEXT_CADDATTR_GET(c, "peak_threshold", get_peak_threshold);
            
            FLEXT_CADDMETHOD_(c, 0, "reset", reset);
            FLEXT_CADDMETHOD_(c, 0, "timeout", timeout);
            
            
            //            FLEXT_CADDMETHOD_(c, 0, "peaks", peaks);
            
            DefineHelp(c,"ml.peak");
        }
        
        // Methods
        void update(float f);
        void peaks(int argc, t_atom *argv);
        void reset();
        void timeout();
        void usage();
        
        // Attribute setters
        //        void set_low_pass_filter_size(int low_pass_filter_size);
        void set_search_window_size(int search_window_size);
        void set_peak_threshold(float peak_threshold);
        
        // Attribute Getters
        void get_peak_threshold(float &peak_threshold) const;

        
    private:
        
        // Method wrappers
        FLEXT_CALLBACK_F(update);
        FLEXT_CALLBACK_V(peaks);
        FLEXT_CALLBACK(reset);
        FLEXT_CALLBACK(timeout);
        
        // Attribute wrappers
        //        FLEXT_CALLSET_I(set_low_pass_filter_size);
        FLEXT_CALLSET_I(set_search_window_size);
        FLEXT_CALLVAR_F(get_peak_threshold, set_peak_threshold);
        
        // Instance variables
        GRT::PeakDetection peakDetection;
        double peak_threshold;
        
        void detect_peak(const std::vector<double> &data, std::vector<uint32_t> &peak_locations);
        
    };
    
    // Attribute setters
    //    void ml_peak::set_low_pass_filter_size(int low_pass_filter_size)
    //    {
    //        bool success = peakDetection.setLowPassFilterSize(low_pass_filter_size);
    //
    //        if (!success)
    //        {
    //            error("unable to set low pass filter size");
    //        }
    //    }
    
    void ml_peak::set_search_window_size(int search_window_size)
    {
        bool success = peakDetection.setSearchWindowSize(search_window_size);
        
        if (!success)
        {
            error("unable to set search window size");
        }
    }
    
    void ml_peak::set_peak_threshold(float peak_threshold)
    {
        this->peak_threshold = peak_threshold;
    }
    
    // Attribute Getters
    void ml_peak::get_peak_threshold(float &peak_threshold) const
    {
        peak_threshold = this->peak_threshold;
    }
    
    // Methods
    void ml_peak::peaks(int argc, t_atom *argv)
    {
        AtomList peaks;
        std::vector<double> data;
        std::vector<uint32_t> peak_locations;
        
        for (uint32_t index = 0; index < (unsigned)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            data.push_back(value);
        }

        detect_peak(data, peak_locations);
    
        if (peak_locations.empty())
        {
            ToOutInt(0, -1);
            return;
        }
        
        for (uint32_t index = 0; index < peak_locations.size(); ++index)
        {
            t_atom value_a;
            int value = peak_locations[index];
            SetInt(value_a, value);
            peaks.Append(value_a);
        }
        
        ToOutList(0, peaks);
    }
//    void ml_peak::peaks(int argc, t_atom *argv)
//    {
//        AtomList peaks;
//        bool peakFound = false;
//        
//        
//        // TODO: update this when we the GRT code is complete
//        error("peak detection currently not fully implemented in GRT");
//        return;
//        
//        
//        for (uint32_t index = 0; index < (unsigned)argc; ++index)
//        {
//            float value = GetAFloat(argv[index]);
//            
//            peakFound = peakDetection.update(value);
//            
//            if (peakFound)
//            {
//                t_atom location_a;
//                t_atom value_a;
//                
//                uint32_t rel_index = 0; // peakDetection.getPeakLocation();
//                uint32_t abs_index = index - rel_index;
//                
//                if (rel_index > index)
//                {
//                    error("peak reported is in previous block");
//                    continue;
//                }
//                
//                SetInt(location_a, abs_index);
//                SetFloat(value_a, GetAFloat(argv[abs_index]));
//                
//                peaks.Append(location_a);
//                peaks.Append(value_a);
//            }
//        }
//        
//        if (peakFound)
//        {
//            ToOutList(0, peaks);
//        }
//    }
    
    void ml_peak::update(float f)
    {
        // TODO: update this when we the GRT code is complete
        error("peak detection currently not fully implemented in GRT");
        return;
        
        
        bool peakFound = peakDetection.update(f);
        float derivative = 0; // peakDetection.getDerivative();
        
        ToOutFloat(1, derivative);
        
        if (peakFound)
        {
            ToOutBang(0);
        }
    }
    
    void ml_peak::reset()
    {
        bool success = peakDetection.reset();
        
        if (!success)
        {
            error("unable to reset peak detector");
        }
    }
    
    void ml_peak::timeout()
    {
        // TODO: update this when we the GRT code is complete
        error("peak detection currently not fully implemented in GRT");
        return;
        
        
        bool success = true;// peakDetection.triggerGateTimeout();
        
        if (!success)
        {
            error("unable to trigger gate timeout");
        }
    }
    
    void ml_peak::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("peak_threshold: a float setting the peak threshold. Values will be considered if they are greater than the previous and next value by at least the threshold value. (default: 1e-6)");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
    }
    
    FLEXT_LIB("ml.peak", ml_peak);
    
#pragma mark - private methods
    
    void ml_peak::detect_peak(const std::vector<double> &data, std::vector<uint32_t> &peak_locations)
    {
        double  mx = data[0];
        double  mn = data[0];
        uint32_t mx_pos = 0;
        uint32_t mn_pos = 0;
        bool    is_detecting_emi = false;
        
        if (!peak_locations.empty())
        {
            std::cout << "error: peak_locations was non-empty" << std::endl;
            peak_locations.clear();
        }
        
        // Use int32_t because the loop body decrements i
        for(int32_t i = 1; i < data.size(); ++i)
        {
            if(data[i] > mx)
            {
                mx_pos = i;
                mx = data[i];
            }
            if(data[i] < mn)
            {
                mn_pos = i;
                mn = data[i];
            }
            
            if(is_detecting_emi &&
               data[i] < mx - this->peak_threshold)
            {
                peak_locations.push_back(mx_pos);
                
                is_detecting_emi = false;
                
                i = mx_pos - 1;
                
                mn = data[mx_pos];
                mn_pos = mx_pos;
            }
            else if((!is_detecting_emi) &&
                    data[i] > mn + this->peak_threshold)
            {
                is_detecting_emi = true;
                
                i = mn_pos - 1;
                
                mx = data[mn_pos];
                mx_pos = mn_pos;
            }
        }
    }
    
} //namespace ml

