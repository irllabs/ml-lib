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
    const std::string object_name = ML_NAME_PREFIX "hmmc";
    
    class hmmc : classification
    {
        FLEXT_HEADER_S(hmmc, classification, setup);
        
    public:
        hmmc()
        {
            post("Hidden Markov Model based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
            set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
        }
        
    protected:
        static void setup(t_classid c)
        {
            classification::setup(c);
            
            FLEXT_CADDATTR_SET(c, "model_type", set_model_type);
            FLEXT_CADDATTR_SET(c, "delta", set_delta);
            FLEXT_CADDATTR_SET(c, "max_num_iterations", set_max_num_iterations);
            FLEXT_CADDATTR_SET(c, "committee_size", set_committee_size);
            FLEXT_CADDATTR_SET(c, "downsample_factor", set_downsample_factor);


            FLEXT_CADDATTR_GET(c, "model_type", get_model_type);
            FLEXT_CADDATTR_GET(c, "delta", get_delta);
            FLEXT_CADDATTR_GET(c, "max_num_iterations", get_max_num_iterations);
            FLEXT_CADDATTR_GET(c, "committee_size", get_committee_size);
            FLEXT_CADDATTR_GET(c, "downsample_factor", get_downsample_factor);
            
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_model_type(int model_type);
        void set_delta(int delta);
        void set_max_num_iterations(int max_num_iterations);
        void set_committee_size(int committee_size);
        void set_downsample_factor(int downsample_factor);
        
        // Flext attribute getters
        void get_model_type(int &model_type) const;
        void get_delta(int &delta) const;
        void get_max_num_iterations(int &max_num_iterations) const;
        void get_committee_size(int &committee_size) const;
        void get_downsample_factor(int &downsample_factor) const;
        
        // Implement pure virtual methods
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_model_type, set_model_type);
        FLEXT_CALLVAR_I(get_delta, set_delta);
        FLEXT_CALLVAR_I(get_max_num_iterations, set_max_num_iterations);
        FLEXT_CALLVAR_I(get_committee_size, set_committee_size);
        FLEXT_CALLVAR_I(get_downsample_factor, set_downsample_factor);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        // Instance variables
        GRT::HMM classifier;
        
        int committee_size_cache = 5;
        int downsample_factor_cache = 5;
    };
    
    // Flext attribute setters
    
    void hmmc::set_model_type(int model_type)
    {
        bool success = classifier.setModelType(model_type);
        
        if (!success)
        {
            error("unable to set model type");
        }
    }
    
    void hmmc::set_delta(int delta)
    {
        bool success = classifier.setDelta(delta);
        
        if (!success)
        {
            error("unable to set delta");
        }
    }
    
    void hmmc::set_max_num_iterations(int max_num_iterations)
    {
        bool success = classifier.setMaxNumEpochs(max_num_iterations);
        
        if (!success)
        {
            error("unable to set max number of iterations");
        }
    }
    
    void hmmc::set_committee_size(int committee_size)
    {
        bool success = classifier.setCommitteeSize(committee_size);
        
        if (!success)
        {
            error("unable to set committee size");
            return;
        }
        
        committee_size_cache = committee_size;
    }
    
    void hmmc::set_downsample_factor(int downsample_factor)
    {
        bool success = classifier.setDownsampleFactor(downsample_factor);
        
        if (!success)
        {
            error("unable to set downsample factor");
            return;
        }
        downsample_factor_cache = downsample_factor;
    }
    
    // Flext attribute getters
    void hmmc::get_model_type(int &model_type) const
    {
        model_type = classifier.getModelType();
    }
    
    void hmmc::get_delta(int &delta) const
    {
        delta = classifier.getDelta();
    }
    
    void hmmc::get_max_num_iterations(int &max_num_iterations) const
    {
        max_num_iterations = classifier.getMaxNumEpochs();
    }
    
    void hmmc::get_committee_size(int &committee_size) const
    {
        committee_size = committee_size_cache;
    }
    
    void hmmc::get_downsample_factor(int &downsample_factor) const
    {
        downsample_factor = downsample_factor_cache;
    }
    
    // Implement pure virtual methods
    GRT::Classifier &hmmc::get_Classifier_instance()
    {
        return classifier;
    }
    
    const GRT::Classifier &hmmc::get_Classifier_instance() const
    {
        return classifier;
    }
    
    bool hmmc::read_specialised_dataset(std::string &path)
    {
        return time_series_classification_data.loadDatasetFromFile(path);
    }

    bool hmmc::write_specialised_dataset(std::string &path) const
    {
        return time_series_classification_data.save(path);
    }
    
    typedef class hmmc ml0x2ehmmc;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), hmmc);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2ehmmc);
#endif
    
} //namespace ml


