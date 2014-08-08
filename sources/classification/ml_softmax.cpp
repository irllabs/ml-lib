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

#include "ml_classification.h"

namespace ml
{
    static const std::string ml_object_name = "ml.softmax";
    
    class ml_softmax : ml_classification
    {
        FLEXT_HEADER_S(ml_softmax, ml_classification, setup);
        
    public:
        ml_softmax()
        {
            post("Softmax algorithm based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        GRT::Softmax softmax;
    };
    
    // Implement pure virtual methods
    GRT::Classifier &ml_softmax::get_Classifier_instance()
    {
        return softmax;
    }
    
    const GRT::Classifier &ml_softmax::get_Classifier_instance() const
    {
        return softmax;
    }
    
    typedef class ml_softmax ml0x2esoftmax;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_softmax);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2esoftmax);
#endif
    
} //namespace ml


