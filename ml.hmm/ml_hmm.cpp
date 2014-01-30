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

namespace ml
{
    class ml_hmm : ml_classification_base
    {
        FLEXT_HEADER_S(ml_hmm, ml_classification_base, setup);
        
    public:
        ml_hmm()
        :
        ml_classification_base(&classifier, LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            post("ml.hmm: Dynamic Time Warping based on the GRT library version %s", grt_version.c_str());
        }
        
        ~ml_hmm()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            ml_classification_base::setup(c);
            
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        
        
        // Attribute Getters
        
        
    private:
        // Method wrappers
        
        // Attribute wrappers
               
        // Instance variables
        GRT::HMM classifier;
        
    };
    
    // Attribute setters
    
    // methods
    void ml_hmm::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and model");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
        
    }
    
    FLEXT_LIB("ml.hmm", ml_hmm);
    
} //namespace ml


