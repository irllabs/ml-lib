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
    class ml_dtw : ml_classification_base
    {
        FLEXT_HEADER_S(ml_dtw, ml_classification_base, setup);
        
    public:
        ml_dtw()
        :
        ml_classification_base(&classifier, LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            post("ml.dtw: Dynamic Time Warping based on the GRT library version %s", grt_version.c_str());
        }
        
        ~ml_dtw()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            ml_classification_base::setup(c);
            
            FLEXT_CADDATTR_SET(c, "rejection_mode", set_rejection_mode);
            FLEXT_CADDATTR_SET(c, "warping_radius", set_warping_radius);
            FLEXT_CADDATTR_SET(c, "offset_time_series", set_offset_time_series);
            FLEXT_CADDATTR_SET(c, "constrain_warping_path", set_constrain_warping_path);
            FLEXT_CADDATTR_SET(c, "enable_z_normalization", set_enable_z_normalization);
            FLEXT_CADDATTR_SET(c, "enable_trim_training_data", set_enable_trim_training_data);
            
            FLEXT_CADDATTR_GET(c, "rejection_mode", get_rejection_mode);
            FLEXT_CADDATTR_GET(c, "warping_radius", get_warping_radius);
            FLEXT_CADDATTR_GET(c, "offget_time_series", get_offget_time_series);
            FLEXT_CADDATTR_GET(c, "constrain_warping_path", get_constrain_warping_path);
            FLEXT_CADDATTR_GET(c, "enable_z_normalization", get_enable_z_normalization);
            FLEXT_CADDATTR_GET(c, "enable_trim_training_data", get_enable_trim_training_data);

        }

        // Attribute Setters
        void set_rejection_mode(int rejection_mode);
        void set_warping_radius(float warping_radius);
        void set_offset_time_series(bool offset_time_series);
        void set_constrain_warping_path(bool constrain_warping_path);
        void set_enable_z_normalization(bool enable_z_normalization);
        void set_enable_trim_training_data(bool enable_trim_training_data);

        
        // Attribute Getters
        void get_rejection_mode(int &rejection_mode) const;
        void get_warping_radius(float &warping_radius) const;
        void get_offget_time_series(bool &offget_time_series) const;
        void get_constrain_warping_path(bool &constrain_warping_path) const;
        void get_enable_z_normalization(bool &enable_z_normalization) const;
        void get_enable_trim_training_data(bool &enable_trim_training_data) const;
        
    private:
        // Attribute wrappers
        FLEXT_CALLVAR_I(get_rejection_mode, set_rejection_mode);
        FLEXT_CALLVAR_F(get_warping_radius, set_warping_radius);
        FLEXT_CALLVAR_B(get_offget_time_series, set_offset_time_series);
        FLEXT_CALLVAR_B(get_constrain_warping_path, set_constrain_warping_path);
        FLEXT_CALLVAR_B(get_enable_z_normalization, set_enable_z_normalization);
        FLEXT_CALLVAR_B(get_enable_trim_training_data, set_enable_trim_training_data);
        
        // Instance variables
        GRT::DTW classifier;
        
    };
    
    // Attribute setters
    void ml_dtw::set_rejection_mode(int rejection_mode)
    {
        bool success = classifier.setRejectionMode(rejection_mode);
        
        if (!success)
        {
            error("unable to set rejection mode");
        }
    }
    
    void ml_dtw::set_warping_radius(float warping_radius)
    {
        bool success = classifier.setWarpingRadius(warping_radius);
        
        if (!success)
        {
            error("unable to set warping radius");
        }
    }
    
    void ml_dtw::set_offset_time_series(bool offset_time_series)
    {
        bool success = classifier.setOffsetTimeseriesUsingFirstSample(offset_time_series);
        
        if (!success)
        {
            error("unable to set offset time series using first sample");
        }
    }
    

    void ml_dtw::set_constrain_warping_path(bool constrain_warping_path)
    {
        bool succes = classifier.setContrainWarpingPath(constrain_warping_path);
        
        if (!succes)
        {
            error("unable to set constrain warping path");
        }
    }
    

    void ml_dtw::set_enable_z_normalization(bool enable_z_normalization)
    {
        bool success = classifier.enableZNormalization(enable_z_normalization);
        
        if (!success)
        {
            error("unable to set z-normalization");
        }
    }
    

    void ml_dtw::set_enable_trim_training_data(bool enable_trim_training_data)
    {
        // Use defaults for threshold and percentage
        bool success = classifier.enableTrimTrainingData(enable_trim_training_data, 0.1, 90);
        
        if (!success)
        {
            error("unable to enable trim training data");
        }
    }
    
    // Attribute getters
    void ml_dtw::get_rejection_mode(int &rejection_mode) const
    {
//        rejection_mode = classifier.getRejectionMode();
        error("function not implemented");
    }

    void ml_dtw::get_warping_radius(float &warping_radius) const
    {
//        warping_radius = classifier.getW
        error("function not implemented");
    }
    

    void ml_dtw::get_offget_time_series(bool &offget_time_series) const
    {
//        offget_time_series = classifier.getO
        error("function not implemented");
    }
    

    void ml_dtw::get_constrain_warping_path(bool &constrain_warping_path) const
    {
        error("function not implement");
    }
    

    void ml_dtw::get_enable_z_normalization(bool &enable_z_normalization) const
    {
        error("function not implemented");
    }
    

    void ml_dtw::get_enable_trim_training_data(bool &enable_trim_training_data) const
    {
        error("function not implemented");
    }
    
    FLEXT_LIB("ml.dtw", ml_dtw);
    
} //namespace ml

