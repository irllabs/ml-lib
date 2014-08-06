//
//  ml_feature_extraction.cpp
//  ml
//
//  Created by Jamie Bullock on 06/08/2014.
//
//

#include "ml_feature_extraction.h"

#include <sstream>

namespace ml
{
    // Constants
    const std::string k_attribute_help =
    "null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' feature_extraction results below the NULL-rejection threshold will be discarded (default 1)\n"
    "null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)\n";
    
    // ml_feature_extraction implementation
    ml_feature_extraction::ml_feature_extraction()
    {
        help.append_attributes(k_attribute_help);
    }
    
    // Attribute Getters
    void ml_feature_extraction::get_num_input_dimensions(int &num_input_dimensions)
    {
        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
        num_input_dimensions = feature_extractor.getNumInputDimensions();
    }
    
    void ml_feature_extraction::get_num_output_dimensions(int &num_output_dimensions)
    {
        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
        num_output_dimensions = feature_extractor.getNumOutputDimensions();
    }
    
    // Methods
    void ml_feature_extraction::map(int argc, const t_atom *argv)
    {
        GRT::VectorDouble input(argc);
        
        if (argc <= 0)
        {
            std::stringstream ss;
            ss << "invalid input length: " << argc;
            error(ss.str());
            return;
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            input[index] = value;
        }

        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
        
        feature_extractor.computeFeatures(input);
        
        GRT::VectorDouble features = feature_extractor.getFeatureVector();
        AtomList features_l;
        
        for (uint32_t count = 0; count < features.size(); ++count)
        {
            t_atom feature_a;
            
            SetDouble(&feature_a, features[count]);
            features_l.Append(feature_a);
        }

        ToOutList(0, features_l);
    }
    
    // pure virtual method implementation
    GRT::MLBase &ml_feature_extraction::get_MLBase_instance()
    {
        return get_FeatureExtraction_instance();
    }
    
    const GRT::MLBase &ml_feature_extraction::get_MLBase_instance() const
    {
        return get_FeatureExtraction_instance();
    }
    
}
