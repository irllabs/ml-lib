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
    static const std::string ml_object_name = "ml.randforest";
    
    // Utility functions
    
    
    // Class declaration
    class ml_randforest : ml_classification
    {
        FLEXT_HEADER_S(ml_randforest, ml, setup);
        
    public:
        ml_randforest()
        {
            post("Random Forests algorithm based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
        }
        
        ~ml_randforest()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "num_random_splits", set_num_random_splits);
            FLEXT_CADDATTR_SET(c, "min_samples_per_node", set_min_samples_per_node);
            FLEXT_CADDATTR_SET(c, "max_depth", set_max_depth);

            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "num_random_splits", get_num_random_splits);
            FLEXT_CADDATTR_GET(c, "min_samples_per_node", get_min_samples_per_node);
            FLEXT_CADDATTR_GET(c, "max_depth", get_max_depth);

            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_num_random_splits(int num_random_splits);
        void set_min_samples_per_node(int min_samples_per_node);
        void set_max_depth(int max_depth);

        
        // Attribute Getters
        void get_num_random_splits(int &num_random_splits) const;
        void get_min_samples_per_node(int &min_samples_per_node) const;
        void get_max_depth(int &max_depth) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_random_splits, set_num_random_splits);
        FLEXT_CALLVAR_I(get_min_samples_per_node, set_min_samples_per_node);
        FLEXT_CALLVAR_I(get_max_depth, set_max_depth);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        // Instance variables
        GRT::RandomForests randforest;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_randforest::set_num_random_splits(int num_random_splits)
    {
        randforest.setNumRandomSpilts(num_random_splits);
    }
    
    void ml_randforest::set_min_samples_per_node(int min_samples_per_node)
    {
        randforest.setMinNumSamplesPerNode(min_samples_per_node);
    }
    
    void ml_randforest::set_max_depth(int max_depth)
    {
        randforest.setMinNumSamplesPerNode(max_depth);
    }
    
    // Attribute getters
    void ml_randforest::get_num_random_splits(int &num_random_splits) const
    {
        num_random_splits = randforest.getNumRandomSpilts();
    }
    
    void ml_randforest::get_min_samples_per_node(int &min_samples_per_node) const
    {
        min_samples_per_node = randforest.getMinNumSamplesPerNode();
    }
    
    void ml_randforest::get_max_depth(int &max_depth) const
    {
        max_depth = randforest.getMaxDepth();
    }

    
    // Methods
    void ml_randforest::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("num_random_splits:\tinteger (n > 0) sets the number of steps that will be used to search for the best spliting value for each node. (default 100)");
        post("min_samples_per_node:\tinteger (n > 0) Sets the minimum number of samples that are allowed per node (default 5)");
        post("max_depth:\tinteger (n > 0) Sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node. (default 10)");

        post(ML_LINE_SEPARATOR);
        post("Methods:");
        post(ML_LINE_SEPARATOR);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and data_typel");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post(ML_LINE_SEPARATOR);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_randforest::get_Classifier_instance()
    {
        return randforest;
    }
    
    const GRT::Classifier &ml_randforest::get_Classifier_instance() const
    {
        return randforest;
    }
    
    FLEXT_LIB(ml_object_name.c_str(), ml_randforest);
    
} //namespace ml


