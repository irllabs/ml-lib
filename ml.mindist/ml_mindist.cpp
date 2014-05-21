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
    static const std::string ml_object_name = "ml.mindist";
    
    // Utility functions
    
    
    // Class declaration
    class ml_mindist : ml_classification
    {
        FLEXT_HEADER_S(ml_mindist, ml, setup);
        
    public:
        ml_mindist()
        {
            post("MinDist classifier algorithm based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
        }
        
        ~ml_mindist()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "num_clusters", set_num_clusters);
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "num_clusters", get_num_clusters);
            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_num_clusters(int type);
        
        // Attribute Getters
        void get_num_clusters(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_clusters, set_num_clusters);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        // Instance variables
        GRT::MinDist mindist;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_mindist::set_num_clusters(int num_clusters)
    {
        mindist.setNumClusters(num_clusters);
    }
    
    // Attribute getters
    void ml_mindist::get_num_clusters(int &num_clusters) const
    {
        error("function not implemented");
    }
    
    // Methods
    
    void ml_mindist::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("num_clusters:\tinteger (n > 0) sets how many clusters each model will try to find during the training phase (default 10)");
        post(ML_LINE_SEPARATOR);
        post("Methods:");
        post(ML_LINE_SEPARATOR);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("write:\twrite training examples, first argument gives path to write location");
        post("read:\tread training examples, first argument gives path to the read location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and data_typel");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post(ML_LINE_SEPARATOR);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_mindist::get_Classifier_instance()
    {
        return mindist;
    }
    
    const GRT::Classifier &ml_mindist::get_Classifier_instance() const
    {
        return mindist;
    }
    
    FLEXT_LIB(ml_object_name.c_str(), ml_mindist);
    
} //namespace ml


