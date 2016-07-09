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

namespace ml
{
    const std::string object_name = NAME_PREFIX "dtree";
    
    class dtree : classification
    {
        FLEXT_HEADER_S(dtree, classification, setup);
        
    public:
        dtree()
        {
            post("Decision Tree learning algorithm based on the GRT library version %s" + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
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
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
                
        // Flext attribute setters
        void set_training_mode(int training_mode);
        void set_num_splitting_steps(int num_splitting_steps);
        void set_min_samples_per_node(int min_samples_per_node);
        void set_max_depth(int max_depth);
        void set_remove_features_at_each_split(bool remove_features_at_each_split);
        
        // Flext attribute getters
        void get_training_mode(int &training_mode) const;
        void get_num_splitting_steps(int &num_splitting_steps) const;
        void get_min_samples_per_node(int &min_samples_per_node) const;
        void get_max_depth(int &get_max_depth) const;
        void get_remove_features_at_each_split(bool &remove_features_at_each_split) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLVAR_I(get_training_mode, set_training_mode);
        FLEXT_CALLVAR_I(get_num_splitting_steps, set_num_splitting_steps);
        FLEXT_CALLVAR_I(get_min_samples_per_node, set_min_samples_per_node);
        FLEXT_CALLVAR_I(get_max_depth, set_max_depth);
        FLEXT_CALLVAR_B(get_remove_features_at_each_split, set_remove_features_at_each_split);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
                
        GRT::DecisionTree grt_dtree;
    };
    
    // Flext attribute setters
    void dtree::set_training_mode(int training_mode)
    {
        bool success = grt_dtree.setTrainingMode(training_mode);
        
        if (success == false)
        {
            error("unable to set training_mode, hint: must be a value between 0 and " + std::to_string(GRT::DecisionTree::NUM_TRAINING_MODES));
        }
    }
    
    void dtree::set_num_splitting_steps(int num_splitting_steps)
    {
        grt_dtree.setNumSplittingSteps(num_splitting_steps);
    }

    void dtree::set_min_samples_per_node(int min_samples_per_node)
    {
        grt_dtree.setMinNumSamplesPerNode(min_samples_per_node);
    }
    
    void dtree::set_max_depth(int max_depth)
    {
        grt_dtree.setMaxDepth(max_depth);
    }

    void dtree::set_remove_features_at_each_split(bool remove_features_at_each_split)
    {
        grt_dtree.setRemoveFeaturesAtEachSpilt(remove_features_at_each_split);
    }
    
    // Flext attribute getters
    void dtree::get_training_mode(int &training_mode) const
    {
        training_mode = grt_dtree.getTrainingMode();
    }

    void dtree::get_num_splitting_steps(int &num_splitting_steps) const
    {
        num_splitting_steps = grt_dtree.getNumSplittingSteps();
    }

    void dtree::get_min_samples_per_node(int &min_samples_per_node) const
    {
        min_samples_per_node = grt_dtree.getMinNumSamplesPerNode();
    }
    
    void dtree::get_max_depth(int &max_depth) const
    {
        max_depth = grt_dtree.getMaxDepth();
    }
    
    void dtree::get_remove_features_at_each_split(bool &remove_features_at_each_split) const
    {
        remove_features_at_each_split = grt_dtree.getRemoveFeaturesAtEachSpilt();
    }

    // Implement pure virtual methods
    GRT::Classifier &dtree::get_Classifier_instance()
    {
        return grt_dtree;
    }
    
    const GRT::Classifier &dtree::get_Classifier_instance() const
    {
        return grt_dtree;
    }
    
    typedef class dtree ml0x2edtree;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), dtree);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2edtree);
#endif
    
} //namespace ml


