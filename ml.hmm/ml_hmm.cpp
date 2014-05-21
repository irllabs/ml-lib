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
    static const std::string ml_object_name = "ml.hmm";
    
    class ml_hmm : ml_classification
    {
        FLEXT_HEADER_S(ml_hmm, ml_classification, setup);
        
    public:
        ml_hmm()
        {
            post("Hidden Markov Model based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
            set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
        }
        
        ~ml_hmm()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            ml_classification::setup(c);
            
            FLEXT_CADDATTR_SET(c, "num_states", set_num_states);
            FLEXT_CADDATTR_SET(c, "num_symbols", set_num_symbols);
            FLEXT_CADDATTR_SET(c, "num_model_type", set_model_type);
            FLEXT_CADDATTR_SET(c, "delta", set_delta);
            FLEXT_CADDATTR_SET(c, "max_num_iterations", set_max_num_iterations);
            FLEXT_CADDATTR_SET(c, "num_random_training_iterations", set_num_random_training_iterations);
            FLEXT_CADDATTR_SET(c, "min_improvement", set_min_improvement);

            FLEXT_CADDATTR_GET(c, "num_states", get_num_states);
            FLEXT_CADDATTR_GET(c, "num_symbols", get_num_symbols);
            FLEXT_CADDATTR_GET(c, "num_symbols", get_model_type);
            FLEXT_CADDATTR_GET(c, "delta", get_delta);
            FLEXT_CADDATTR_GET(c, "max_num_iterations", get_max_num_iterations);
            FLEXT_CADDATTR_GET(c, "min_improvement", get_min_improvement);
            
            DefineHelp(c,ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_num_states(int num_states);
        void set_num_symbols(int num_symbols);
        void set_model_type(int model_type);
        void set_delta(int delta);
        void set_max_num_iterations(int max_num_iterations);
        void set_num_random_training_iterations(int num_random_training_iterations);
        void set_min_improvement(float min_improvement);
        
        
        // Attribute Getters
        void get_num_states(int &num_states) const;
        void get_num_symbols(int &num_symbols) const;
        void get_model_type(int &model_type) const;
        void get_delta(int &delta) const;
        void get_max_num_iterations(int &max_num_iterations) const;
        void get_num_random_training_iterations(int &num_random_training_iterations) const;
        void get_min_improvement(float &min_improvement) const;
        
        // Implement pure virtual methods
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        bool read_specialised_data(std::string &path);
        bool write_specialised_data(std::string &path) const;
        
    private:
        // Method wrappers
        
        // Attribute wrappers
        FLEXT_CALLVAR_I(get_num_states, set_num_states);
        FLEXT_CALLVAR_I(get_num_symbols, set_num_symbols);
        FLEXT_CALLVAR_I(get_model_type, set_model_type);
        FLEXT_CALLVAR_I(get_delta, set_delta);
        FLEXT_CALLVAR_I(get_max_num_iterations, set_max_num_iterations);
        FLEXT_CALLVAR_I(get_num_random_training_iterations, set_num_random_training_iterations);
        FLEXT_CALLVAR_F(get_min_improvement, set_min_improvement);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        // Instance variables
        GRT::HMM classifier;
        
    };
    
    // Attribute setters
    void ml_hmm::set_num_states(int num_states)
    {
        bool success = classifier.setNumStates(num_states);

        if (!success)
        {
            error("unable to set number of states");
        }
    }
    
    void ml_hmm::set_num_symbols(int num_symbols)
    {
        bool success = classifier.setNumSymbols(num_symbols);
        
        if (!success)
        {
            error("unable to set number of symbols");
        }
    }
    
    void ml_hmm::set_model_type(int model_type)
    {
        bool success = classifier.setModelType(model_type);
        
        if (!success)
        {
            error("unable to set model type");
        }
    }
    
    void ml_hmm::set_delta(int delta)
    {
        bool success = classifier.setDelta(delta);
        
        if (!success)
        {
            error("unable to set delta");
        }
    }
    
    void ml_hmm::set_max_num_iterations(int max_num_iterations)
    {
        bool success = classifier.setMaxNumIterations(max_num_iterations);
        
        if (!success)
        {
            error("unable to set max number of iterations");
        }
    }
    
    void ml_hmm::set_num_random_training_iterations(int num_random_training_iterations)
    {
        bool success = classifier.setNumRandomTrainingIterations(num_random_training_iterations);
        
        if (!success)
        {
            error("unable to set number of random training iterations");
        }
    }
    
    void ml_hmm::set_min_improvement(float min_improvement)
    {
        bool success = classifier.setMinImprovement(min_improvement);
        
        if (!success)
        {
            error("unable to set min improvement");
        }
    }
    
    // Attribute getters
    void ml_hmm::get_num_states(int &num_states) const
    {
        num_states = classifier.getNumStates();
    }
    
    void ml_hmm::get_num_symbols(int &num_symbols) const
    {
        num_symbols = classifier.getNumSymbols();
    }
    
    void ml_hmm::get_model_type(int &model_type) const
    {
        model_type = classifier.getModelType();
    }
    
    void ml_hmm::get_delta(int &delta) const
    {
        delta = classifier.getDelta();
    }
    
    void ml_hmm::get_max_num_iterations(int &max_num_iterations) const
    {
        max_num_iterations = classifier.getMaxNumIterations();
    }
    
    void ml_hmm::get_num_random_training_iterations(int &num_random_training_iterations) const
    {
        num_random_training_iterations = classifier.getNumRandomTrainingIterations();
    }
    
    void ml_hmm::get_min_improvement(float &min_improvement) const
    {
        min_improvement = classifier.getMinImprovement();
    }
    
    // methods
    void ml_hmm::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("num_states:\tinteger ( > 0) sets the number of states in the model (default 5)");
        post("num_symbols:\tinteger ( > 0) sets the number of symbols in the model (default 10)");
        post("model_type:\tinteger (0 = ERGODIC, 1 = LEFTRIGHT) sets the model type used for the HMM (default LEFTRIGHT)");
        post("delta:\tinteger ( > 0) controls how many states a model can transition to if the LEFTRIGHT model type is used (default 1)");
        post("max_num_iterations:\tinteger ( > 0) set the maximum number of training iterations (default 100)");
        post("num_random_training_iterations:\tinteger setting the number of random training iterations (default 10)");
        post("min_improvement:\tfloat sets the minimum improvement parameter which controls when the HMM training algorithm should stop (default 1.0e-2)");
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
    GRT::Classifier &ml_hmm::get_Classifier_instance()
    {
        return classifier;
    }
    
    const GRT::Classifier &ml_hmm::get_Classifier_instance() const
    {
        return classifier;
    }
    
    bool ml_hmm::read_specialised_data(std::string &path)
    {
        return timeSeriesClassificationData.loadDatasetFromFile(path);
    }

    bool ml_hmm::write_specialised_data(std::string &path) const
    {
        return timeSeriesClassificationData.saveDatasetToFile(path);
    }
    
    typedef class ml_hmm ml0x2ehmm;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_hmm);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2ehmm);
#endif
    
} //namespace ml


