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
    const std::string object_name = "ml.mindist";
    
    class mindist : classification
    {
        FLEXT_HEADER_S(mindist, classification, setup);
        
    public:
        mindist()
        {
            post("MinDist classifier algorithm based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
            help.append_attributes(attribute_help);
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "num_clusters", set_num_clusters);
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "num_clusters", get_num_clusters);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_num_clusters(int type);
        
        // Flext attribute getters
        void get_num_clusters(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_clusters, set_num_clusters);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::MinDist grt_mindist;
        
        static const std::string attribute_help;
    };
    
    
    // Flext attribute setters
    void mindist::set_num_clusters(int num_clusters)
    {
        grt_mindist.setNumClusters(num_clusters);
    }
    
    // Flext attribute getters
    void mindist::get_num_clusters(int &num_clusters) const
    {
        error("function not implemented");
    }
        
    // Implement pure virtual methods
    GRT::Classifier &mindist::get_Classifier_instance()
    {
        return grt_mindist;
    }
    
    const GRT::Classifier &mindist::get_Classifier_instance() const
    {
        return grt_mindist;
    }
    
    const std::string mindist::attribute_help = "num_clusters:\tinteger (n > 0) sets how many clusters each model will try to find during the training phase (default 10)";
    
    typedef class mindist ml0x2emindist;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), mindist);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2emindist);
#endif

    
} //namespace ml


