//
//  ml_feature_extraction.cpp
//  ml
//
//  Created by Jamie Bullock on 06/08/2014.
//
//

#include "ml_feature_extraction.h"

#include <sstream>

// TODO: we need to override the method help becase ml_feature_extraction subclasses don't support most of the standard ml methods

namespace ml
{
    ml_feature_extraction::ml_feature_extraction()
    {
        help.append_attributes(attribute_help);
    }
    
    // Flext attribute getters
    void ml_feature_extraction::get_num_input_dimensions(int &num_input_dimensions) const
    {
//        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
//        num_input_dimensions = feature_extractor.getNumInputDimensions();
    }
    
    void ml_feature_extraction::get_num_output_dimensions(int &num_output_dimensions) const
    {
//        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
//        num_output_dimensions = feature_extractor.getNumOutputDimensions();
    }
    
    void ml_feature_extraction::map(int argc, const t_atom *argv)
    {
        GRT::VectorDouble input(argc);
        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
        
        if (argc <= 0 || (GRT::UINT)argc != feature_extractor.getNumInputDimensions())
        {
            std::stringstream ss;
            ss << "invalid input length: " << argc << ", expected: " << feature_extractor.getNumInputDimensions();
            error(ss.str());
            return;
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            input[index] = value;
        }
        
        bool success = feature_extractor.computeFeatures(input);
        
        if (success == false)
        {
            error("unable to map input");
            return;
        }
        
        GRT::VectorDouble features = feature_extractor.getFeatureVector();
        
        if (features.size() == 0 || features.size() != feature_extractor.getNumOutputDimensions())
        {
            std::stringstream ss;
            ss << "unexpected output length: " << features.size() << ", expected: " << feature_extractor.getNumOutputDimensions();
            error(ss.str());
            return;
        }
        
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
    
    const std::string ml_feature_extraction::attribute_help =
    "null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' feature_extraction results below the NULL-rejection threshold will be discarded (default 1)\n"
    "null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)\n";
    
}
