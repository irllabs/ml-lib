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

#include <flext.h>

namespace ml
{
    const GRT::UINT defaultNumInputDimensions = 2;
    const GRT::UINT defaultNumOutputDimensions = 1;
    
    class ml_regression_linear : ml_base
    {
        FLEXT_HEADER_S(ml_regression_linear, ml_base, setup);
        
    public:
        ml_regression_linear()
        :
        ml_base(&regressifier, LABELLED_REGRESSION)
        {
            std::string grt_version = regressifier.getGRTVersion();
            post("ml.regressifier: Linear Regression based on the GRT library version %s", grt_version.c_str());
            
            labelledRegressionData.setInputAndTargetDimensions(defaultNumInputDimensions, defaultNumOutputDimensions);
        }
        
        ~ml_regression_linear()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_SET(c, "max_iterations", set_max_iterations);
            FLEXT_CADDATTR_SET(c, "min_change", set_min_change);
            FLEXT_CADDATTR_SET(c, "training_rate", set_training_rate);
            
            FLEXT_CADDATTR_GET(c, "max_iterations", get_max_iterations);
            FLEXT_CADDATTR_GET(c, "min_change", get_min_change);
            FLEXT_CADDATTR_GET(c, "training_rate", get_training_rate);
        }
        
        // Methods
        void clear();
        void train();
        void classify(int argc, const t_atom *argv);
        void usage();
        
        // Attribute Setters
        void set_max_iterations(int max_iterations);
        void set_min_change(float min_change);
        void set_training_rate(float training_rate);

        
        // Attribute Getters
        void get_max_iterations(int &max_iterations) const;
        void get_min_change(float &min_change) const;
        void get_training_rate(float &training_rate) const;

        
    private:
        
        // Method wrappers
        
        // Attribute wrappers
        FLEXT_CALLVAR_I(get_max_iterations, set_max_iterations);
        FLEXT_CALLVAR_F(get_min_change, set_min_change);
        FLEXT_CALLVAR_F(get_training_rate, set_training_rate);
        
        // Instance variables
        GRT::LinearRegression regressifier;
        
    };
    
    // Utility functions
    
    // Attribute setters
    void ml_regression_linear::set_max_iterations(int max_iterations)
    {
        regressifier.setMaxNumIterations(max_iterations);
    }
    
    void ml_regression_linear::set_min_change(float min_change)
    {
        bool success = regressifier.setMinChange(min_change);
        
        if (success == false)
        {
            error("unable to set min_change, hint: should be greater than 0");
        }
    }
    
    void ml_regression_linear::set_training_rate(float training_rate)
    {
        bool success = regressifier.setLearningRate(training_rate);
        
        if (success == false)
        {
            error("unable to set training_rate, hint: should be between 0-1");
        }
    }
    
    // Attribute getters
    void ml_regression_linear::get_max_iterations(int &max_iterations) const
    {
        max_iterations = regressifier.getMaxNumIterations();
    }
    
    void ml_regression_linear::get_min_change(float &min_change) const
    {
        error("function not implemented");
//        min_change = regressifier.getMinChange();
    }
    
    void ml_regression_linear::get_training_rate(float &training_rate) const
    {
        training_rate = regressifier.getLearningRate();
    }
    
    // Methods
    void ml_regression_linear::train()
    {
        GRT::UINT numSamples = labelledRegressionData.getNumSamples();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        success = regressifier.train(labelledRegressionData);
        
        if (!success)
        {
            error("training failed");
            return;
        }
        
        t_atom a_num_classes;
        
        SetInt(a_num_classes, defaultNumOutputDimensions);
        ToOutAnything(1, s_train, 1, &a_num_classes);
    }
    
    void ml_regression_linear::clear()
    {
        regressifier.clear();
        ml_base::clear();
    }
    
    void ml_regression_linear::classify(int argc, const t_atom *argv)
    {
        GRT::UINT numSamples = labelledRegressionData.getNumSamples();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        if (regressifier.getTrained() == false)
        {
            error("model has not been trained, use 'train' to train the model");
            return;
        }
        
        GRT::UINT numInputNeurons = regressifier.getNumInputFeatures();
        GRT::VectorDouble query(numInputNeurons);
        
        if (argc < 0 || (unsigned)argc != numInputNeurons)
        {
            error("invalid input length, expected %d, got %d", numInputNeurons, argc);
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = regressifier.predict(query);
        
        if (success == false)
        {
            error("unable to classify input");
            return;
        }
        
        GRT::VectorDouble regressionData = regressifier.getRegressionData();
        GRT::VectorDouble::size_type numOutputDimensions = regressionData.size();
        
        if (numOutputDimensions != regressifier.getNumOutputDimensions())
        {
            error("invalid output dimensions: %d", numOutputDimensions);
            return;
        }
        
        AtomList result;
        
        for (uint32_t index = 0; index < numOutputDimensions; ++index)
        {
            t_atom value_a;
            double value = regressionData[index];
            SetFloat(value_a, value);
            result.Append(value_a);
        }
        
        ToOutList(0, result);
    }
    
    void ml_regression_linear::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("num_inputs:\tinteger setting number of neurons in the input layer of the MLP (default %d)", defaultNumInputDimensions);
//        post("min_change:\tfloating point value setting the minimum change that must be achieved between two training epochs for the training to continue (default 1.0e-5)");
        post("training_rate:\tfloating point value used to update the weights at each step of the stochastic gradient descent (default 0.1)");
        post("enable_scaling:\tinteger (0 or 1) determining whether or not values are automatically scaled (default 1)");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc when in classification mode or N output values followed by M input values when in regression mode, where N is determined by the num_outputs attribute");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and model");
        post("classify:\tgive the class of the input feature vector provided as a list in classification mode or the regression outputs in regression mode");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
    }
    
    FLEXT_LIB("ml.regression.linear", ml_regression_linear);
    
} //namespace ml

