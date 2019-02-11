//
//  ml_defaults.h
//  ml
//
//  Created by Jamie Bullock on 06/08/2015.
//
//

#ifndef ml_ml_defaults_h
#define ml_ml_defaults_h

#include "ml_types.h"

namespace ml
{
    namespace defaults
    {
        
        const bool scaling = true;
        const bool probabilities = false;
        const unsigned int num_input_dimensions = 2;
        const unsigned int num_output_dimensions = 1;
        const unsigned int num_hidden_neurons = 2;

        const data_type data_type = LABELLED_CLASSIFICATION;
    }
    
}

#endif
