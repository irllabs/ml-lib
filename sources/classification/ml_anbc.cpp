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

#include "ml_defaults.h"

#include <vector>

namespace ml
{
    const std::string object_name = "ml.anbc";
   
    class anbc : classification
    {
        FLEXT_HEADER_S(anbc, classification, setup);
        
    public:
        anbc()
        {
            post("Adaptive Naive Bayes classifier based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
        }
    
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "weights", set_weights);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_weights(const AtomList &weights);
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
             
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLSET_V(set_weights);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        // Instance variables
        GRT::ANBC grt_anbc;
    };
    
    // Flext attribute setters
    void anbc::set_weights(const AtomList &weights)
    {
        // weights are per vector element per class so each class has a weight vector of length N where N is the input vector size
        GRT::ClassificationData weightsClassificationData;
        std::vector<double> weightsVector;
        
        if (weights.Count() == 0)
        {
            grt_anbc.clearWeights();
            return;
        }
        
        const t_atom *atomList = weights.Atoms();
        GRT::UINT classLabel = GetAInt(atomList[0]);
        
        // Use int for count instead of uint32_t because weights.Count() returns int
        for (int count = 1; count < weights.Count(); ++count)
        {
            weightsVector.push_back(GetAFloat(atomList[count]));
        }
        
        weightsClassificationData.addSample(classLabel, weightsVector);
        grt_anbc.setWeights(weightsClassificationData);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &anbc::get_Classifier_instance()
    {
        return grt_anbc;
    }
    
    const GRT::Classifier &anbc::get_Classifier_instance() const
    {
        return grt_anbc;
    }
    
    typedef class anbc ml0x2eanbc;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), anbc);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2eanbc);
#endif
    
} //namespace ml


