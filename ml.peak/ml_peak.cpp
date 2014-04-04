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

namespace ml
{
    class ml_peak : flext_base
    {
        FLEXT_HEADER_S(ml_peak, flext_base, setup);
        
    public:
        ml_peak()
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
//            FLEXT_CADDATTR_SET(c, "low_pass_filter_size", set_low_pass_filter_size);
            
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

        
        // Attribute Getters
        
    private:
        
        // Method wrappers
        FLEXT_CALLBACK_F(update);
        FLEXT_CALLBACK_V(peaks);
        FLEXT_CALLBACK(reset);
        FLEXT_CALLBACK(timeout);
        
        // Attribute wrappers
//        FLEXT_CALLSET_I(set_low_pass_filter_size);
        FLEXT_CALLSET_I(set_search_window_size);

        // Instance variables
        GRT::PeakDetection peakDetection;
        
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

    
    // Attribute Getters
    
    // Methods
    void ml_peak::peaks(int argc, t_atom *argv)
    {
        AtomList peaks;
        bool peakFound = false;
        
        
        // TODO: update this when we the GRT code is complete
        error("peak detection currently not fully implemented in GRT");
        return;
        
        
        for (uint32_t index = 0; index < (unsigned)argc; ++index)
        {
            float value = GetAFloat(argv[index]);
        
            peakFound = peakDetection.update(value);

            if (peakFound)
            {
                t_atom location_a;
                t_atom value_a;
                
                uint32_t rel_index = 0; // peakDetection.getPeakLocation();
                uint32_t abs_index = index - rel_index;
                
                if (rel_index > index)
                {
                    error("peak reported is in previous block");
                    continue;
                }
                
                SetInt(location_a, abs_index);
                SetFloat(value_a, GetAFloat(argv[abs_index]));
                
                peaks.Append(location_a);
                peaks.Append(value_a);
            }
        }
        
        if (peakFound)
        {
            ToOutList(0, peaks);
        }
    }
    
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
        post("search_window_size: an integer setting the search window size in values (default: 5)");

//        post("low_pass_filter_size: an integer setting the low pass filter size (2 or higher)");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("float:\ta floating point value to the inlet updates the current value of the peak detector");
        post("reset:\treset the peak detector");
        post("timeout:\t (see GRT documentation)");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
    }
    
    FLEXT_LIB("ml.peak", ml_peak);
    
} //namespace ml

