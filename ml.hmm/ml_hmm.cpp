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
    class ml_hmm : ml_classification_base
    {
        FLEXT_HEADER_S(ml_hmm, ml_classification_base, setup);
        
    public:
        ml_hmm()
        :
        ml_classification_base(&classifier, LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            post("ml.hmm: Dynamic Time Warping based on the GRT library version %s", grt_version.c_str());
        }
        
        ~ml_hmm()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            ml_classification_base::setup(c);
            
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
            
            DefineHelp(c,"ml.hmm");
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
        
        // Instance variables
        GRT::HMM classifier;
        
    };
    
    // Attribute setters
    void ml_hmm::set_num_states(int num_states)
    {
        bool success = classifier.setNumStates(num_states);

        if (!success)
        {
            flext::error("unable to set number of states");
        }
    }
    
    void ml_hmm::set_num_symbols(int num_symbols)
    {
        bool success = classifier.setNumSymbols(num_symbols);
        
        if (!success)
        {
            flext::error("unable to set number of symbols");
        }
    }
    
    void ml_hmm::set_model_type(int model_type)
    {
        bool success = classifier.setModelType(model_type);
        
        if (!success)
        {
            flext::error("unable to set model type");
        }
    }
    
    void ml_hmm::set_delta(int delta)
    {
        bool success = classifier.setDelta(delta);
        
        if (!success)
        {
            flext::error("unable to set delta");
        }
    }
    
    void ml_hmm::set_max_num_iterations(int max_num_iterations)
    {
        bool success = classifier.setMaxNumIterations(max_num_iterations);
        
        if (!success)
        {
            flext::error("unable to set max number of iterations");
        }
    }
    
    void ml_hmm::set_num_random_training_iterations(int num_random_training_iterations)
    {
        bool success = classifier.setNumRandomTrainingIterations(num_random_training_iterations);
        
        if (!success)
        {
            flext::error("unable to set number of random training iterations");
        }
    }
    
    void ml_hmm::set_min_improvement(float min_improvement)
    {
        bool success = classifier.setMinImprovement(min_improvement);
        
        if (!success)
        {
            flext::error("unable to set min improvement");
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
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and model");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
        
    }
    
    FLEXT_LIB("ml.hmm", ml_hmm);
    
} //namespace ml


