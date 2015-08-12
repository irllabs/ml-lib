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
    const std::string object_name = NAME_PREFIX "randforest";
    
    // Class declaration
    class randforest : classification
    {
        FLEXT_HEADER_S(randforest, classification, setup);
        
    public:
        randforest()
        {
            post("Random Forests algorithm based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
        }
        
        ~randforest()
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

            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_num_random_splits(int num_random_splits);
        void set_min_samples_per_node(int min_samples_per_node);
        void set_max_depth(int max_depth);

        
        // Flext attribute getters
        void get_num_random_splits(int &num_random_splits) const;
        void get_min_samples_per_node(int &min_samples_per_node) const;
        void get_max_depth(int &max_depth) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_random_splits, set_num_random_splits);
        FLEXT_CALLVAR_I(get_min_samples_per_node, set_min_samples_per_node);
        FLEXT_CALLVAR_I(get_max_depth, set_max_depth);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::RandomForests grt_randforest;
    };
    
    
    // Flext attribute setters
    void randforest::set_num_random_splits(int num_random_splits)
    {
        grt_randforest.setNumRandomSplits(num_random_splits);
    }
    
    void randforest::set_min_samples_per_node(int min_samples_per_node)
    {
        grt_randforest.setMinNumSamplesPerNode(min_samples_per_node);
    }
    
    void randforest::set_max_depth(int max_depth)
    {
        grt_randforest.setMinNumSamplesPerNode(max_depth);
    }
    
    // Flext attribute getters
    void randforest::get_num_random_splits(int &num_random_splits) const
    {
        num_random_splits = grt_randforest.getNumRandomSplits();
    }
    
    void randforest::get_min_samples_per_node(int &min_samples_per_node) const
    {
        min_samples_per_node = grt_randforest.getMinNumSamplesPerNode();
    }
    
    void randforest::get_max_depth(int &max_depth) const
    {
        max_depth = grt_randforest.getMaxDepth();
    }
    
    // Implement pure virtual methods
    GRT::Classifier &randforest::get_Classifier_instance()
    {
        return grt_randforest;
    }
    
    const GRT::Classifier &randforest::get_Classifier_instance() const
    {
        return grt_randforest;
    }
    
      typedef class randforest ml0x2erandforest;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), randforest);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2erandforest);
#endif

    
} //namespace ml


