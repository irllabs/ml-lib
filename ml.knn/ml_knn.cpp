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
    // Utility functions
    
    
    // Class declaration
    class ml_knn : ml_classification
    {
        FLEXT_HEADER_S(ml_knn, ml, setup);
        
    public:
        ml_knn()
        {
            post("ml.knn: Support Vector Machines based on the GRT library version %s", get_grt_version().c_str());
            set_scaling(default_scaling);
        }
        
        ~ml_knn()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "k", set_k);
            FLEXT_CADDATTR_SET(c, "min_k_search_value", set_min_k_search_value);
            FLEXT_CADDATTR_SET(c, "max_k_search_value", set_max_k_search_value);
            FLEXT_CADDATTR_SET(c, "best_k_value_search", set_best_k_value_search);

            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "k", get_k);
            FLEXT_CADDATTR_GET(c, "min_k_search_value", get_min_k_search_value);
            FLEXT_CADDATTR_GET(c, "max_k_search_value", get_max_k_search_value);
            FLEXT_CADDATTR_GET(c, "best_k_value_search", get_best_k_value_search);
            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,"ml.knn");
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_k(int k);
        void set_min_k_search_value(int min_k_search_value);
        void set_max_k_search_value(int max_k_search_value);
        void set_best_k_value_search(bool best_k_value_search);
        
        // Attribute Getters
        void get_k(int &k) const;
        void get_min_k_search_value(int &min_k_search_value) const;
        void get_max_k_search_value(int &max_k_search_value) const;
        void get_best_k_value_search(bool &best_k_value_search) const;

        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_k, set_k);
        FLEXT_CALLVAR_I(get_min_k_search_value, set_min_k_search_value);
        FLEXT_CALLVAR_I(get_max_k_search_value, set_max_k_search_value);
        FLEXT_CALLVAR_B(get_best_k_value_search, set_best_k_value_search);
        
        // Instance variables
        GRT::KNN knn;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_knn::set_k(int k)
    {
        knn.setK(k);
    }
    
    void ml_knn::set_min_k_search_value(int min_k_search_value)
    {
        knn.setMinKSearchValue(min_k_search_value);
    }
    
    void ml_knn::set_max_k_search_value(int max_k_search_value)
    {
        knn.setMaxKSearchValue(max_k_search_value);
    }
    
    void ml_knn::set_best_k_value_search(bool best_k_value_search)
    {
        knn.enableBestKValueSearch(best_k_value_search);
    }
    
    // Attribute getters
    void ml_knn::get_k(int &k) const
    {
        flext::error("function not implemented");
    }

    void ml_knn::get_min_k_search_value(int &min_k_search_value) const
    {
        flext::error("function not implemented");
    }

    void ml_knn::get_max_k_search_value(int &max_k_search_value) const
    {
        flext::error("function not implemented");
    }

    void ml_knn::get_best_k_value_search(bool &best_k_value_search) const
    {
        flext::error("function not implemented");
    }
    
    // Methods
    
    void ml_knn::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("k:\tinteger (k > 1) Sets the K nearest neighbours that will be searched for by the algorithm during prediction.(default 10)");
        post("min_k_search_value:\tinteger (n > 0) sets the minimum K value to use when searching for the best K value. (default 1)");
        post("max_k_search_value:\tinteger (n > 0) sets the maximum K value to use when searching for the best K value. (default 10)");
        post("best_k_value_search:\tbool (0 or 1) set whether k value search is enabled or not (default 0)");
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and data_typel");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_knn::get_Classifier_instance()
    {
        return knn;
    }
    
    const GRT::Classifier &ml_knn::get_Classifier_instance() const
    {
        return knn;
    }
    
    FLEXT_LIB("ml.knn", ml_knn);
    
} //namespace ml


