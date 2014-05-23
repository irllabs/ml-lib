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

namespace ml
{
    static const std::string ml_object_name = "ml.dtw";
    
    class ml_dtw : ml_classification
    {
        FLEXT_HEADER_S(ml_dtw, ml_classification, setup);
        
    public:
        ml_dtw()
        {
            post("Dynamic Time Warping based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
            set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
        }
        
        ~ml_dtw()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            ml_classification::setup(c);
            
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
            
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
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
        
        // Implement pure virtual methods
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        // Method wrappers
        
        // Attribute wrappers
        FLEXT_CALLVAR_I(get_rejection_mode, set_rejection_mode);
        FLEXT_CALLVAR_F(get_warping_radius, set_warping_radius);
        FLEXT_CALLVAR_B(get_offget_time_series, set_offset_time_series);
        FLEXT_CALLVAR_B(get_constrain_warping_path, set_constrain_warping_path);
        FLEXT_CALLVAR_B(get_enable_z_normalization, set_enable_z_normalization);
        FLEXT_CALLVAR_B(get_enable_trim_training_data, set_enable_trim_training_data);
        
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
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
        error("function not implemented");
    }

    void ml_dtw::get_warping_radius(float &warping_radius) const
    {
        error("function not implemented");
    }
    

    void ml_dtw::get_offget_time_series(bool &offget_time_series) const
    {
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
    
    // methods
    void ml_dtw::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) sets NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("rejection_mode:\tinteger sets the method used for null rejection. (0 = TEMPLATE_THRESHOLDS, 1 = CLASS_LIKELIHOODS, 2 = THRESHOLDS_AND_LIKELIHOODS, default 0)");
        post("warping_radius:\tfloat (0..1)  sets the radius of the warping path, which is used if the constrain_warping_path is set to 1. (default 0.2)");
        post("offset_time_series:\tinteger (0 or 1) sets if each timeseries should be offset by the first sample in the timeseries (default 0)");
        post("constrain_warping_path:\tinteger (0 or 1) sets the warping path should be constrained to within a specific radius from the main diagonal of the cost matrix (default 1)");
        post("enable_z_normalization:\tinteger (0 or 1) turning z-normalization on or off for training and prediction (default 0)");
        post("enable_trim_training_data:\tinteger (0 or 1) enabling data trimming prior to training (default 0)");        
        post(ML_LINE_SEPARATOR);
        post("Methods:");
        post(ML_LINE_SEPARATOR);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("write:\twrite training examples, first argument gives path to write location");
        post("read:\tread training examples, first argument gives path to the read location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and model");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post(ML_LINE_SEPARATOR);

    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_dtw::get_Classifier_instance()
    {
        return classifier;
    }
    
    const GRT::Classifier &ml_dtw::get_Classifier_instance() const
    {
        return classifier;
    }
    
    bool ml_dtw::read_specialised_dataset(std::string &path)
    {
        return timeSeriesClassificationData.loadDatasetFromFile(path);
    }
    
    bool ml_dtw::write_specialised_dataset(std::string &path) const
    {
        return timeSeriesClassificationData.saveDatasetToFile(path);
    }
    
    typedef class ml_dtw ml0x2edtw;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_dtw);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2edtw);
#endif
    
} //namespace ml

