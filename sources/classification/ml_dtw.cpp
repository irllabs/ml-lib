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

#include "ml_classification.h"

#include "ml_defaults.h"

namespace ml
{
    const std::string object_name = ML_NAME_PREFIX "dtw";
    
    class dtw : classification
    {
        FLEXT_HEADER_S(dtw, classification, setup);
        
    public:
        dtw()
        {
            post("Dynamic Time Warping based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
            set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
        }
        
    protected:
        static void setup(t_classid c)
        {
            classification::setup(c);
            
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
            
            DefineHelp(c, object_name.c_str());
        }
                
        // Flext attribute setters
        void set_rejection_mode(int rejection_mode);
        void set_warping_radius(float warping_radius);
        void set_offset_time_series(bool offset_time_series);
        void set_constrain_warping_path(bool constrain_warping_path);
        void set_enable_z_normalization(bool enable_z_normalization);
        void set_enable_trim_training_data(bool enable_trim_training_data);

        
        // Flext attribute getters
        void get_rejection_mode(int &rejection_mode) const;
        void get_warping_radius(float &warping_radius) const;
        void get_offget_time_series(bool &offget_time_series) const;
        void get_constrain_warping_path(bool &constrain_warping_path) const;
        void get_enable_z_normalization(bool &enable_z_normalization) const;
        void get_enable_trim_training_data(bool &enable_trim_training_data) const;
        
        // Implement pure virtual methods
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_rejection_mode, set_rejection_mode);
        FLEXT_CALLVAR_F(get_warping_radius, set_warping_radius);
        FLEXT_CALLVAR_B(get_offget_time_series, set_offset_time_series);
        FLEXT_CALLVAR_B(get_constrain_warping_path, set_constrain_warping_path);
        FLEXT_CALLVAR_B(get_enable_z_normalization, set_enable_z_normalization);
        FLEXT_CALLVAR_B(get_enable_trim_training_data, set_enable_trim_training_data);
        
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::DTW classifier;
    };
    
    // Flext attribute setters
    void dtw::set_rejection_mode(int rejection_mode)
    {
        bool success = classifier.setRejectionMode(rejection_mode);
        
        if (!success)
        {
            error("unable to set rejection mode");
        }
    }
    
    void dtw::set_warping_radius(float warping_radius)
    {
        bool success = classifier.setWarpingRadius(warping_radius);
        
        if (!success)
        {
            error("unable to set warping radius");
        }
    }
    
    void dtw::set_offset_time_series(bool offset_time_series)
    {
        bool success = classifier.setOffsetTimeseriesUsingFirstSample(offset_time_series);
        
        if (!success)
        {
            error("unable to set offset time series using first sample");
        }
    }
    

    void dtw::set_constrain_warping_path(bool constrain_warping_path)
    {
        bool succes = classifier.setContrainWarpingPath(constrain_warping_path);
        
        if (!succes)
        {
            error("unable to set constrain warping path");
        }
    }
    

    void dtw::set_enable_z_normalization(bool enable_z_normalization)
    {
        bool success = classifier.enableZNormalization(enable_z_normalization);
        
        if (!success)
        {
            error("unable to set z-normalization");
        }
    }
    

    void dtw::set_enable_trim_training_data(bool enable_trim_training_data)
    {
        // Use defaults for threshold and percentage
        bool success = classifier.enableTrimTrainingData(enable_trim_training_data, 0.1, 90);
        
        if (!success)
        {
            error("unable to enable trim training data");
        }
    }
    
    // Flext attribute getters
    void dtw::get_rejection_mode(int &rejection_mode) const
    {
        error("function not implemented");
    }

    void dtw::get_warping_radius(float &warping_radius) const
    {
        error("function not implemented");
    }
    

    void dtw::get_offget_time_series(bool &offget_time_series) const
    {
        error("function not implemented");
    }
    

    void dtw::get_constrain_warping_path(bool &constrain_warping_path) const
    {
        error("function not implement");
    }
    

    void dtw::get_enable_z_normalization(bool &enable_z_normalization) const
    {
        error("function not implemented");
    }
    

    void dtw::get_enable_trim_training_data(bool &enable_trim_training_data) const
    {
        error("function not implemented");
    }
    
    // Implement pure virtual methods
    GRT::Classifier &dtw::get_Classifier_instance()
    {
        return classifier;
    }
    
    const GRT::Classifier &dtw::get_Classifier_instance() const
    {
        return classifier;
    }
    
    bool dtw::read_specialised_dataset(std::string &path)
    {
        return time_series_classification_data.loadDatasetFromFile(path);
    }
    
    bool dtw::write_specialised_dataset(std::string &path) const
    {
        return time_series_classification_data.saveDatasetToFile(path);
    }
    
    typedef class dtw ml0x2edtw;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), dtw);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2edtw);
#endif
    
} //namespace ml

