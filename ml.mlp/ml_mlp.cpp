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
#include "fann.h"

#include <flext.h>

namespace ml
{
    
    typedef struct result_
    {
        double label;
    }
    result;
    
    class ml_mlp : ml_base
    {
        FLEXT_HEADER_S(ml_mlp, ml_base, setup);
        
    public:
        ml_mlp()
        {
            post("ml.mlp: Multilayer Perceptron based on the FANN library");
        }
        
        ~ml_mlp()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            
        }
        
        // Methods
        
        // Attribute Setters
        
        // Attribute Getters
        
    private:
        // Attribute wrappers
        
        // Instance variables
    };
    
    // Utility functions
    
    
    // Attribute setters
    
    // Attribute getters
    
    // Methods
    
    
    FLEXT_LIB("ml.mlp", ml_mlp);
    
} //namespace ml

