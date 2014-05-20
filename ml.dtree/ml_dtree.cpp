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
    class ml_dtree : ml_classification
    {
        FLEXT_HEADER_S(ml_dtree, ml, setup);
        
    public:
        ml_dtree()
        {
            post("ml.dtree: Decision Tree learning algorithm based on the GRT library version %s", get_grt_version().c_str());
            set_scaling(default_scaling);
        }
        
        ~ml_dtree()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "training_mode", set_training_mode);
            FLEXT_CADDATTR_SET(c, "num_splitting_steps", set_num_splitting_steps);
            FLEXT_CADDATTR_SET(c, "min_samples_per_node", set_min_samples_per_node);
            FLEXT_CADDATTR_SET(c, "max_depth", set_max_depth);
            FLEXT_CADDATTR_SET(c, "remove_features_at_each_split", set_remove_features_at_each_split);
            
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "training_mode", get_training_mode);
            FLEXT_CADDATTR_GET(c, "num_splitting_steps", get_num_splitting_steps);
            FLEXT_CADDATTR_GET(c, "min_samples_per_node", get_min_samples_per_node);
            FLEXT_CADDATTR_GET(c, "max_depth", get_max_depth);
            FLEXT_CADDATTR_GET(c, "remove_features_at_each_split", get_remove_features_at_each_split);
            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,"ml.dtree");
        }
        
        // Methods
        void cross_validation();
        void usage();
        
        // Attribute Setters
        void set_training_mode(int training_mode);
        void set_num_splitting_steps(int num_splitting_steps);
        void set_min_samples_per_node(int min_samples_per_node);
        void set_max_depth(int max_depth);
        void set_remove_features_at_each_split(bool remove_features_at_each_split);

        
        // Attribute Getters
        void get_training_mode(int &training_mode) const;
        void get_num_splitting_steps(int &num_splitting_steps) const;
        void get_min_samples_per_node(int &min_samples_per_node) const;
        void get_max_depth(int &get_max_depth) const;
        void get_remove_features_at_each_split(bool &remove_features_at_each_split) const;

        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_training_mode, set_training_mode);
        FLEXT_CALLVAR_I(get_num_splitting_steps, set_num_splitting_steps);
        FLEXT_CALLVAR_I(get_min_samples_per_node, set_min_samples_per_node);
        FLEXT_CALLVAR_I(get_max_depth, set_max_depth);
        FLEXT_CALLVAR_B(get_remove_features_at_each_split, set_remove_features_at_each_split);
        
        // Instance variables
        GRT::DecisionTree dtree;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_dtree::set_training_mode(int training_mode)
    {
        bool success = dtree.setTrainingMode(training_mode);
        
        if (success == false)
        {
            flext::error("unable to set training_mode, hint: must be a value between 0 and %d",
                         GRT::DecisionTree::NUM_TRAINING_MODES);
        }
    }
    
    void ml_dtree::set_num_splitting_steps(int num_splitting_steps)
    {
        dtree.setNumSplittingSteps(num_splitting_steps);
    }

    void ml_dtree::set_min_samples_per_node(int min_samples_per_node)
    {
        dtree.setMinNumSamplesPerNode(min_samples_per_node);
    }
    
    void ml_dtree::set_max_depth(int max_depth)
    {
        dtree.setMaxDepth(max_depth);
    }

    void ml_dtree::set_remove_features_at_each_split(bool remove_features_at_each_split)
    {
        dtree.setRemoveFeaturesAtEachSpilt(remove_features_at_each_split);
    }
    
    // Attribute getters
    void ml_dtree::get_training_mode(int &training_mode) const
    {
        training_mode = dtree.getTrainingMode();
    }

    void ml_dtree::get_num_splitting_steps(int &num_splitting_steps) const
    {
        num_splitting_steps = dtree.getNumSplittingSteps();
    }

    void ml_dtree::get_min_samples_per_node(int &min_samples_per_node) const
    {
        min_samples_per_node = dtree.getMinNumSamplesPerNode();
    }
    
    void ml_dtree::get_max_depth(int &max_depth) const
    {
        max_depth = dtree.getMaxDepth();
    }
    
    void ml_dtree::get_remove_features_at_each_split(bool &remove_features_at_each_split) const
    {
        remove_features_at_each_split = dtree.getRemoveFeaturesAtEachSpilt();
    }

    void ml_dtree::usage()
    {
        post("%s", ML_LINE_SEPARATOR);
        post("Attributes:");
        post("%s", ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post("training_mode:\tinteger (0 = BEST_ITERATIVE_SPILT, 1=BEST_RANDOM_SPLIT) sets the training mode (default 0)");
        post("num_splitting_steps:\tinteger (n > 0) Sets the number of steps that will be used to search for the best spliting value for each node (default 100)");
        post("min_samples_per_node:\tinteger (n > 0) sets the minimum number of samples that are allowed per node, if the number of samples at a node is below this value then the node will automatically become a leaf node (default 5)");
        post("max_depth:\tinteger (n > 0) sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node (default 10)");
        post("probs:\tbool (0 or 1) sets if a feature is removed at each spilt so it can not be used again (default 0)");
        post("%s", ML_LINE_SEPARATOR);
        post("Methods:");
        post("%s", ML_LINE_SEPARATOR);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("save:\tsave training examples, first argument gives path to save location");
        post("load:\tload training examples, first argument gives path to the load location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and data_typel");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_LINE_SEPARATOR);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_dtree::get_Classifier_instance()
    {
        return dtree;
    }
    
    const GRT::Classifier &ml_dtree::get_Classifier_instance() const
    {
        return dtree;
    }
    
    FLEXT_LIB("ml.dtree", ml_dtree);
    
} //namespace ml


