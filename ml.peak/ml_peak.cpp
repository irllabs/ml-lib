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
    class ml_peak : ml_base
    {
        FLEXT_HEADER_S(ml_peak, ml_base, setup);
        
    public:
        ml_peak()
        :
        ml_base()
        {
            post("ml.peak: Peak Detection based on the GRT library version %s", grt_version.c_str());
            FLEXT_ADDMETHOD(0, update);
        }
        
        ~ml_peak()
        {
            
        }
        
    protected:
        
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_SET(c, "threshold_crossing_mode", set_threshold_crossing_mode);
            FLEXT_CADDATTR_SET(c, "negative_threshold", set_negative_threshold);
            FLEXT_CADDATTR_SET(c, "positive_threshold", set_positive_threshold);
            FLEXT_CADDATTR_SET(c, "low_pass_filter_size", set_low_pass_filter_size);

            FLEXT_CADDATTR_GET(c, "threshold_crossing_mode", get_threshold_crossing_mode);
            FLEXT_CADDATTR_GET(c, "negative_threshold", get_negative_threshold);
            FLEXT_CADDATTR_GET(c, "positive_threshold", get_positive_threshold);
            FLEXT_CADDATTR_GET(c, "low_pass_filter_size", get_low_pass_filter_size);
            
            FLEXT_CADDMETHOD_(c, 0, "reset", reset);
            FLEXT_CADDMETHOD_(c, 0, "timeout", timeout);
        }
        
        // Methods
        void update(float f);
        void reset();
        void timeout();
        void usage();

  
        // Attribute setters
        void set_threshold_crossing_mode(int threshold_crossing_mode);
        void set_negative_threshold(float negative_threshold);
        void set_positive_threshold(float positive_threshold);
        void set_low_pass_filter_size(int low_pass_filter_size);
        
        // Attribute Getters
        void get_threshold_crossing_mode(int &threshold_crossing_mode) const;
        void get_negative_threshold(float &negative_threshold) const;
        void get_positive_threshold(float &positive_threshold) const;
        void get_low_pass_filter_size(int &low_pass_filter_size) const;

    private:
        
        // Method wrappers
        FLEXT_CALLBACK_F(update);
        FLEXT_CALLBACK(reset);
        FLEXT_CALLBACK(timeout);
        
        // Attribute wrappers
        FLEXT_CALLVAR_I(get_threshold_crossing_mode, set_threshold_crossing_mode);
        FLEXT_CALLVAR_F(get_negative_threshold, set_negative_threshold);
        FLEXT_CALLVAR_F(get_positive_threshold, set_positive_threshold);
        FLEXT_CALLVAR_I(get_low_pass_filter_size, set_low_pass_filter_size);

        // Instance variables
        GRT::PeakDetection peakDetection;
        
    };
    
    // Attribute setters
    void ml_peak::set_threshold_crossing_mode(int threshold_crossing_mode)
    {
        bool success = peakDetection.setThresholdCrossingMode(threshold_crossing_mode);
    
        if (!success)
        {
            error("unable to set threshold crossing mode");
        }
    }
    
    void ml_peak::set_negative_threshold(float negative_threshold)
    {
        bool success = peakDetection.setNegativeThreshold(negative_threshold);
        
        if (!success)
        {
            error("unable to set negative threshold");
        }
    }
    
    void ml_peak::set_positive_threshold(float positive_threshold)
    {
        bool success = peakDetection.setPositiveThreshold(positive_threshold);
        
        if (!success)
        {
            error("unable to set positive threshold");
        }
    }
    
    void ml_peak::set_low_pass_filter_size(int low_pass_filter_size)
    {
        bool success = peakDetection.setLowPassFilterSize(low_pass_filter_size);
        
        if (!success)
        {
            error("unable to set low pass filter size");
        }
    }
    
    
    // Attribute Getters
    void ml_peak::get_threshold_crossing_mode(int &threshold_crossing_mode) const
    {
        threshold_crossing_mode = peakDetection.getThresholdCrossingMode();
    }
    
    void ml_peak::get_negative_threshold(float &negative_threshold) const
    {
        negative_threshold = peakDetection.getNegativeThreshold();
    }
    
    void ml_peak::get_positive_threshold(float &positive_threshold) const
    {
        positive_threshold = peakDetection.getPositiveThreshold();
    }
    
    void ml_peak::get_low_pass_filter_size(int &low_pass_filter_size) const
    {
        peakDetection.getLowPassFilterSize();
    }
    
    // Methods
    void ml_peak::update(float f)
    {
        bool peakFound = peakDetection.update(f);
        float derivative = peakDetection.getDerivative();

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
        bool success = peakDetection.triggerGateTimeout();
        
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
        post("threshold_crossing_mode: 0 - positive threshold crossing, 1 - negative threshold crossing, 2 - positive / negative threshold crossing, 3 - negative / positive threshold crossing");
        post("negative_threshold: a floating point value setting the negative threshold" );
        post("positive_threshold: a floating point value setting the positive threshold" );
        post("low_pass_filter_size: an integer setting the low pass filter size (2 or higher)");
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

