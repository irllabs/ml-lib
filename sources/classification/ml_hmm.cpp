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
    const std::string object_name = NAME_PREFIX "hmm";
    
    class hmm : classification
    {
        FLEXT_HEADER_S(hmm, classification, setup);
        
    public:
        hmm()
        {
            post("Hidden Markov Model based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
            set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
            help.append_attributes(attribute_help);
        }
        
    protected:
        static void setup(t_classid c)
        {
            classification::setup(c);
            
            FLEXT_CADDATTR_SET(c, "num_states", set_num_states);
            FLEXT_CADDATTR_SET(c, "num_symbols", set_num_symbols);
            FLEXT_CADDATTR_SET(c, "num_model_type", set_model_type);
            FLEXT_CADDATTR_SET(c, "delta", set_delta);
            FLEXT_CADDATTR_SET(c, "max_num_iterations", set_max_num_iterations);
            FLEXT_CADDATTR_SET(c, "num_random_training_iterations", set_num_random_training_iterations);

            FLEXT_CADDATTR_GET(c, "num_states", get_num_states);
            FLEXT_CADDATTR_GET(c, "num_symbols", get_num_symbols);
            FLEXT_CADDATTR_GET(c, "num_symbols", get_model_type);
            FLEXT_CADDATTR_GET(c, "delta", get_delta);
            FLEXT_CADDATTR_GET(c, "max_num_iterations", get_max_num_iterations);
            
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_num_states(int num_states);
        void set_num_symbols(int num_symbols);
        void set_model_type(int model_type);
        void set_delta(int delta);
        void set_max_num_iterations(int max_num_iterations);
        void set_num_random_training_iterations(int num_random_training_iterations);
        
        // Flext attribute getters
        void get_num_states(int &num_states) const;
        void get_num_symbols(int &num_symbols) const;
        void get_model_type(int &model_type) const;
        void get_delta(int &delta) const;
        void get_max_num_iterations(int &max_num_iterations) const;
        void get_num_random_training_iterations(int &num_random_training_iterations) const;
        
        // Implement pure virtual methods
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_states, set_num_states);
        FLEXT_CALLVAR_I(get_num_symbols, set_num_symbols);
        FLEXT_CALLVAR_I(get_model_type, set_model_type);
        FLEXT_CALLVAR_I(get_delta, set_delta);
        FLEXT_CALLVAR_I(get_max_num_iterations, set_max_num_iterations);
        FLEXT_CALLVAR_I(get_num_random_training_iterations, set_num_random_training_iterations);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        // Instance variables
        GRT::HMM classifier;
    };
    
    // Flext attribute setters
    void hmm::set_num_states(int num_states)
    {
        bool success = classifier.setNumStates(num_states);

        if (!success)
        {
            error("unable to set number of states");
        }
    }
    
    void hmm::set_num_symbols(int num_symbols)
    {
        bool success = classifier.setNumSymbols(num_symbols);
        
        if (!success)
        {
            error("unable to set number of symbols");
        }
    }
    
    void hmm::set_model_type(int model_type)
    {
        bool success = classifier.setModelType(model_type);
        
        if (!success)
        {
            error("unable to set model type");
        }
    }
    
    void hmm::set_delta(int delta)
    {
        bool success = classifier.setDelta(delta);
        
        if (!success)
        {
            error("unable to set delta");
        }
    }
    
    void hmm::set_max_num_iterations(int max_num_iterations)
    {
        bool success = classifier.setMaxNumEpochs(max_num_iterations);
        
        if (!success)
        {
            error("unable to set max number of iterations");
        }
    }
    
    void hmm::set_num_random_training_iterations(int num_random_training_iterations)
    {
        bool success = classifier.setNumRandomTrainingIterations(num_random_training_iterations);
        
        if (!success)
        {
            error("unable to set number of random training iterations");
        }
    }
    
    // Flext attribute getters
    void hmm::get_num_states(int &num_states) const
    {
        num_states = classifier.getNumStates();
    }
    
    void hmm::get_num_symbols(int &num_symbols) const
    {
        num_symbols = classifier.getNumSymbols();
    }
    
    void hmm::get_model_type(int &model_type) const
    {
        model_type = classifier.getModelType();
    }
    
    void hmm::get_delta(int &delta) const
    {
        delta = classifier.getDelta();
    }
    
    void hmm::get_max_num_iterations(int &max_num_iterations) const
    {
        max_num_iterations = classifier.getMaxNumEpochs();
    }
    
    void hmm::get_num_random_training_iterations(int &num_random_training_iterations) const
    {
        num_random_training_iterations = classifier.getNumRandomTrainingIterations();
    }
    
    
    // Implement pure virtual methods
    GRT::Classifier &hmm::get_Classifier_instance()
    {
        return classifier;
    }
    
    const GRT::Classifier &hmm::get_Classifier_instance() const
    {
        return classifier;
    }
    
    bool hmm::read_specialised_dataset(std::string &path)
    {
        return time_series_classification_data.loadDatasetFromFile(path);
    }

    bool hmm::write_specialised_dataset(std::string &path) const
    {
        return time_series_classification_data.saveDatasetToFile(path);
    }
    
    const std::string hmm::attribute_help =  "num_states:\tinteger ( > 0) sets the number of states in the model (default 5)\n"
    "num_symbols:\tinteger ( > 0) sets the number of symbols in the model (default 10)\n"
    "model_type:\tinteger (0 = ERGODIC, 1 = LEFTRIGHT) sets the model type used for the HMM (default LEFTRIGHT)\n"
    "delta:\tinteger ( > 0) controls how many states a model can transition to if the LEFTRIGHT model type is used (default 1)\n"
    "max_num_iterations:\tinteger ( > 0) set the maximum number of training iterations (default 100)\n"
    "num_random_training_iterations:\tinteger setting the number of random training iterations (default 10)\n"
    "min_improvement:\tfloat sets the minimum improvement parameter which controls when the HMM training algorithm should stop (default 1.0e-2)\n";
    
    typedef class hmm ml0x2ehmm;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), hmm);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2ehmm);
#endif
    
} //namespace ml


