//
//  ml_regression.cpp
//  ml
//
//  Created by Jamie Bullock on 25/02/2014.
//
//

#include "ml_regression.h"

namespace ml
{

    // Constants
    const std::string k_attribute_help =
    "training_rate:\tfloating point value used to update the weights at each step of the stochastic gradient descent (default 0.1)\n"
    "max_iterations:\tinteger setting the maximum number of training iterations (default 100)\n"
    "min_change:\tfloating point value setting the minimum change that must be achieved between two training epochs for the training to continue (default 1.0e-5)\n";


    // Attribute setters
    void ml_regression::set_max_iterations(int max_iterations)
    {
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        regressifier.setMaxNumEpochs(max_iterations);
    }
    
    void ml_regression::set_min_change(float min_change)
    {
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        bool success = regressifier.setMinChange(min_change);
        
        if (success == false)
        {
            error("unable to set min_change, hint: should be greater than 0");
        }
    }
    
    void ml_regression::set_training_rate(float training_rate)
    {
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        bool success = regressifier.setLearningRate(training_rate);
        
        if (success == false)
        {
            error("unable to set training_rate, hint: should be between 0-1");
        }
    }
    
    // Attribute getters
    void ml_regression::get_max_iterations(int &max_iterations) const
    {
        const GRT::Regressifier &regressifier = get_Regressifier_instance();
        max_iterations = regressifier.getMaxNumEpochs();
    }
    
    void ml_regression::get_min_change(float &min_change) const
    {
        error("function not implemented");
        //        min_change = regressifier->getMinChange();
    }
    
    void ml_regression::get_training_rate(float &training_rate) const
    {
        const GRT::Regressifier &regressifier = get_Regressifier_instance();
        training_rate = regressifier.getLearningRate();
    }
    
    // Methods
    ml_regression::ml_regression()
    {
        regressionData.setInputAndTargetDimensions(defaultNumInputDimensions, defaultNumOutputDimensions);
        set_data_type(LABELLED_REGRESSION);
        help.append_attributes(k_attribute_help);
    }
    
    void ml_regression::train()
    {
        GRT::UINT numSamples = regressionData.getNumSamples();
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        success = regressifier.train(regressionData);
        
        if (!success)
        {
            error("training failed");
        }
        
        t_atom a_success;
        
        SetInt(a_success, success);
        ToOutAnything(1, s_train, 1, &a_success);
    }

    void ml_regression::map(int argc, const t_atom *argv)
    {
        GRT::UINT numSamples = regressionData.getNumSamples();
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        if (regressifier.getTrained() == false)
        {
            error("data_typel has not been trained, use 'train' to train the data_typel");
            return;
        }
        
        GRT::UINT numInputNeurons = regressifier.getNumInputFeatures();
        GRT::VectorDouble query(numInputNeurons);
        
        if (argc < 0 || (unsigned)argc != numInputNeurons)
        {
            error("invalid input length, expected " + std::to_string(numInputNeurons) + " got " + std::to_string(argc));
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = regressifier.predict(query);
        
        if (success == false)
        {
            error("unable to map input");
            return;
        }
        
        GRT::VectorDouble regressionData = regressifier.getRegressionData();
        GRT::VectorDouble::size_type numOutputDimensions = regressionData.size();
        
        if (numOutputDimensions != regressifier.getNumOutputDimensions())
        {
            error("invalid output dimensions: " + std::to_string(numOutputDimensions));
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
    
    // pure virtual method implementation
    GRT::MLBase &ml_regression::get_MLBase_instance()
    {
        return get_Regressifier_instance();
    }
    
    const GRT::MLBase &ml_regression::get_MLBase_instance() const
    {
        return get_Regressifier_instance();
    }
    
    bool ml_regression::read_specialised_dataset(std::string &path)
    {
        return regressionData.loadDatasetFromFile(path);
    }
    
    bool ml_regression::write_specialised_dataset(std::string &path) const
    {
        return regressionData.saveDatasetToFile(path);
    }
}
