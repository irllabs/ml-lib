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
    static const std::string object_name = "ml.softmax";
    
    class softmax : classification
    {
        FLEXT_HEADER_S(softmax, classification, setup);
        
    public:
        softmax()
        {
            post("Softmax algorithm based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::Softmax grt_softmax;
    };
    
    // Implement pure virtual methods
    GRT::Classifier &softmax::get_Classifier_instance()
    {
        return grt_softmax;
    }
    
    const GRT::Classifier &softmax::get_Classifier_instance() const
    {
        return grt_softmax;
    }
    
    typedef class softmax ml0x2esoftmax;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), softmax);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2esoftmax);
#endif
    
} //namespace ml


