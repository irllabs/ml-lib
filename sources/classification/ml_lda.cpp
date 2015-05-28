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


// TODO: GRT header states class is still under development (August 5th 2014)

#include "ml_classification.h"

namespace ml
{
    static const ml_doc::name object_name = ml_doc::name::lda;
    
    // Utility functions
    
    
    // Class declaration
    class lda : classification
    {
        FLEXT_HEADER_S(lda, classification, setup);
        
    public:
        lda()
        {
            post("LDA algorithm based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
        }
        
        ~lda()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            
            // Flext attribute get messages
            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_doc::name_lookup[object_name].c_str());
        }
        
        // Methods
        
        // Flext attribute setters
        
        // Flext attribute getters
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext method wrappers
        
        // Flext Flext attribute wrappers
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::LDA lda;
    };
    
    // Utility functions
        
    // Flext attribute setters
    
    // Flext attribute getters
    
    // Methods
    
    // Implement pure virtual methods
    GRT::Classifier &lda::get_Classifier_instance()
    {
        return lda;
    }
    
    const GRT::Classifier &lda::get_Classifier_instance() const
    {
        return lda;
    }
    
    typedef class lda ml0x2elda;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_doc::name_lookup[object_name].c_str(), lda);
#else
    FLEXT_NEW(ml_doc::name_lookup[object_name].c_str(), ml0x2elda);
#endif

    
} //namespace ml


