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

#include "ml_feature_extraction.h"

#include <sstream>

// TODO: we need to override the method help becase feature_extraction subclasses don't support most of the standard ml methods

namespace ml
{
    feature_extraction::feature_extraction()
    {
        help.append_attributes(attribute_help);
    }
    
    // Flext attribute getters
    void feature_extraction::get_num_input_dimensions(int &num_input_dimensions) const
    {
//        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
//        num_input_dimensions = feature_extractor.getNumInputDimensions();
    }
    
    void feature_extraction::get_num_output_dimensions(int &num_output_dimensions) const
    {
//        GRT::FeatureExtraction &feature_extractor = get_FeatureExtraction_instance();
//        num_output_dimensions = feature_extractor.getNumOutputDimensions();
    }
    
    void feature_extraction::map(int argc, const t_atom *argv)
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
        GRT::VectorDouble::iterator iterator;
        
        for (iterator = features.begin(); iterator != features.end(); iterator++)
        {
            t_atom feature_a;
            
            SetDouble(&feature_a, *iterator);
            features_l.Append(feature_a);
        }

        ToOutList(0, features_l);
    }
    
    // pure virtual method implementation
    GRT::MLBase &feature_extraction::get_MLBase_instance()
    {
        return get_FeatureExtraction_instance();
    }
    
    const GRT::MLBase &feature_extraction::get_MLBase_instance() const
    {
        return get_FeatureExtraction_instance();
    }
    
    const std::string feature_extraction::attribute_help =
    "null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' feature_extraction results below the NULL-rejection threshold will be discarded (default 1)\n"
    "null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)\n";
    
}
