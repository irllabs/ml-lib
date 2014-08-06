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

#include "ml_feature_extraction.h"

namespace ml
{
    // Constants
    static const std::string ml_object_name = "ml.zerox";
    static const std::string k_attribute_help =  "";
    
    // Utility functions
    
    // Class declaration
    class ml_zerox : ml_classification
    {
        FLEXT_HEADER_S(ml_zerox, ml_classification, setup);
        
    public:
        ml_zerox()
        {
            post("Zero Crossings Extraction based on the GRT library version " + get_grt_version());
        }
        
        ~ml_zerox()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "search_window_size", set_search_window_size);
            FLEXT_CADDATTR_SET(c, "dead_zone_threshold", set_dead_zone_threshold);
            
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "search_window_size", get_search_window_size);
            FLEXT_CADDATTR_GET(c, "dead_zone_threshold", get_dead_zone_threshold);

        
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,ml_object_name.c_str());
        }
        
        // Methods
        
        // Attribute Setters
        void set_search_window_size(int search_window_size);
        void set_dead_zone_threshold(int dead_zone_threshold);
        
        // Attribute Getters
        void get_search_window_size(int &search_window_size) const;
        void get_dead_zone_threshold(int &dead_zone_threshold) const;
        
        // Pure virtual method implementations
        GRT::FeatureExtraction &get_FeatureExtraction_instance();
        const GRT::FeatureExtraction &get_FeatureExtraction_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_search_window_size, set_search_window_size);
        FLEXT_CALLVAR_I(get_dead_zone_threshold, set_dead_zone_threshold);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        // Instance variables
        GRT::ZeroCrossingCounter zerox;
    };
    
    // Utility functions
    
    // Attribute setters
    void ml_zerox::set_search_window_size(int search_window_size)
    {
        zerox.setSearchWindowSize(search_window_size);
    }
    
    void ml_zerox::set_dead_zone_threshold(int dead_zone_threshold)
    {
        zerox.setDeadZoneThreshold(dead_zone_threshold);
    }
    
    // Attribute getters
    void ml_zerox::get_search_window_size(int &search_window_size)
    {
        search_window_size = zerox.getSearchWindowSize();
    }
    
    void ml_zerox::get_dead_zone_threshold(int &dead_zone_threshold)
    {
        dead_zone_threshold = zerox.getDeadZoneThreshold();
    }
    
    // Methods
    
        // Implement pure virtual methods
    GRT::FeatureExtraction &ml_zerox::get_FeatureExtraction_instance()
    {
        return zerox;
    }
    
    const GRT::FeatureExtraction &ml_zerox::get_FeatureExtraction_instance() const
    {
        return zerox;
    }
    
    FLEXT_LIB(ml_object_name.c_str(), ml_zerox);
    
} //namespace ml



