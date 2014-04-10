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

#include <vector>

namespace ml
{
    // Utility functions
    
    
    // Class declaration
    class ml_anbc : ml_classification
    {
        FLEXT_HEADER_S(ml_anbc, ml, setup);
        
    public:
        ml_anbc()
        {
            post("ml-anbc: Adaptive Naive Bayes classifier based on the GRT library version %s", get_grt_version().c_str());
            set_scaling(default_scaling);
        }
        
        ~ml_anbc()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "weights", set_weights);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,"ml-anbc");
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_weights(const AtomList &weights);
        
        // Attribute Getters
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLSET_V(set_weights);
        
        // Instance variables
        GRT::ANBC anbc;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_anbc::set_weights(const AtomList &weights)
    {
        // weights are per vector element per class so each class has a weight vector of length N where N is the input vector size
        GRT::LabelledClassificationData weightsLabelledClassificationData;
        std::vector<double> weightsVector;
        
        if (weights.Count() == 0)
        {
            anbc.clearWeights();
            return;
        }
        
        const t_atom *atomList = weights.Atoms();
        GRT::UINT classLabel = GetAInt(atomList[0]);
        
        for (uint32_t count = 1; count < weights.Count(); ++count)
        {
            weightsVector.push_back(GetAFloat(atomList[count]));
        }
        
        weightsLabelledClassificationData.addSample(classLabel, weightsVector);
        anbc.setWeights(weightsLabelledClassificationData);
    }
    
    // Attribute getters
    
    
    // Methods
    void ml_anbc::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("weights:\tvector of 1 integer and N floating point values where the integer is a class label and the floats are the weights for that class. Sending weights with a vector size of zero clears all weights");
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("Methods:");
        post("%s", ML_POST_SEP);
        // Method help here
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and model");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_anbc::get_Classifier_instance()
    {
        return anbc;
    }
    
    const GRT::Classifier &ml_anbc::get_Classifier_instance() const
    {
        return anbc;
    }
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB("ml-anbc", ml_anbc);
#else
    FLEXT_NEW("ml-anbc", ml_anbc);
#endif
    
} //namespace ml


