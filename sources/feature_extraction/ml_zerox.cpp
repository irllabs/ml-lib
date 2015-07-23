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
    static const std::string object_name = NAME_PREFIX "zerox";
    
    class zerox : feature_extraction
    {
        FLEXT_HEADER_S(zerox, feature_extraction, setup);
        
    public:
        zerox()
        {
            post("Zero Crossings Extraction based on the GRT library version " + GRT::GRTBase::getGRTVersion());
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

            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_search_window_size(int search_window_size);
        void set_dead_zone_threshold(int dead_zone_threshold);
        
        // Flext attribute getters
        void get_search_window_size(int &search_window_size) const;
        void get_dead_zone_threshold(int &dead_zone_threshold) const;
        
        // Pure virtual method implementations
        GRT::FeatureExtraction &get_FeatureExtraction_instance();
        const GRT::FeatureExtraction &get_FeatureExtraction_instance() const;
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_search_window_size, set_search_window_size);
        FLEXT_CALLVAR_I(get_dead_zone_threshold, set_dead_zone_threshold);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::ZeroCrossingCounter grt_zerox;
        
        static const std::string attribute_help;
    };
    
    // Flext attribute setters
    void zerox::set_search_window_size(int search_window_size)
    {
        grt_zerox.setSearchWindowSize(search_window_size);
    }
    
    void zerox::set_dead_zone_threshold(int dead_zone_threshold)
    {
        grt_zerox.setDeadZoneThreshold(dead_zone_threshold);
    }
    
    // Flext attribute getters
    void zerox::get_search_window_size(int &search_window_size) const
    {
       // search_window_size = zerox.getSearchWindowSize();
    }
    
    void zerox::get_dead_zone_threshold(int &dead_zone_threshold) const
    {
       // dead_zone_threshold = zerox.getDeadZoneThreshold();
    }
    
    // Implement pure virtual methods
    GRT::FeatureExtraction &zerox::get_FeatureExtraction_instance()
    {
        return grt_zerox;
    }
    
    const GRT::FeatureExtraction &zerox::get_FeatureExtraction_instance() const
    {
        return grt_zerox;
    }
    
    const std::string zerox::attribute_help =  "";
    
    typedef class zerox ml0x2ezerox;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), zerox);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2ezerox);
#endif
    
} //namespace ml



