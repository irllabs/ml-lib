//
//  ml_regression.cpp
//  ml
//
//  Created by Jamie Bullock on 25/02/2014.
//
//

#include "ml_regression.h"
#include "ml_defaults.h"

namespace ml
{
    // Flext attribute setters
    
    
    // Flext attribute getters
    
    
    // Methods
    regression::regression()
    {
        regression_data.setInputAndTargetDimensions(defaults::num_input_dimensions, defaults::num_output_dimensions);
        set_data_type(LABELLED_REGRESSION);
    }
    
    void regression::train()
    {
        GRT::UINT numSamples = regression_data.getNumSamples();
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        success = regressifier.train(regression_data);
        
        if (!success)
        {
            error("training failed");
        }
        
        t_atom a_success;
        
        SetInt(a_success, success);
        ToOutAnything(1, get_s_train(), 1, &a_success);
    }

    void regression::map(int argc, const t_atom *argv)
    {
        GRT::Regressifier &regressifier = get_Regressifier_instance();
        
        if (regressifier.getTrained() == false)
        {
            error("model has not been trained, use 'train' to train the model");
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
        
        GRT::VectorDouble regression_data = regressifier.getRegressionData();
        GRT::VectorDouble::size_type numOutputDimensions = regression_data.size();
        
        if (numOutputDimensions != regressifier.getNumOutputDimensions())
        {
            error("invalid output dimensions: " + std::to_string(numOutputDimensions));
            return;
        }
        
        AtomList result;
        
        for (uint32_t index = 0; index < numOutputDimensions; ++index)
        {
            t_atom value_a;
            double value = regression_data[index];
            SetFloat(value_a, value);
            result.Append(value_a);
        }
        
        ToOutList(0, result);
    }
    
    // pure virtual method implementation
    GRT::MLBase &regression::get_MLBase_instance()
    {
        return get_Regressifier_instance();
    }
    
    const GRT::MLBase &regression::get_MLBase_instance() const
    {
        return get_Regressifier_instance();
    }
    
    bool regression::read_specialised_dataset(std::string &path)
    {
        return regression_data.loadDatasetFromFile(path);
    }
    
    bool regression::write_specialised_dataset(std::string &path) const
    {
        return regression_data.saveDatasetToFile(path);
    }
}
