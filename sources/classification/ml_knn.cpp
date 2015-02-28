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
    static const std::string object_name = "ml.knn";
    
    class knn : classification
    {
        FLEXT_HEADER_S(knn, classification, setup);
        
    public:
        knn()
        {
            post("Support Vector Machines based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
            help.append_attributes(attribute_help);
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
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,object_name.c_str());
        }
        
        // Flext attribute setters
        void set_k(int k);
        void set_min_k_search_value(int min_k_search_value);
        void set_max_k_search_value(int max_k_search_value);
        void set_best_k_value_search(bool best_k_value_search);
        
        // Flext attribute getters
        void get_k(int &k) const;
        void get_min_k_search_value(int &min_k_search_value) const;
        void get_max_k_search_value(int &max_k_search_value) const;
        void get_best_k_value_search(bool &best_k_value_search) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLVAR_I(get_k, set_k);
        FLEXT_CALLVAR_I(get_min_k_search_value, set_min_k_search_value);
        FLEXT_CALLVAR_I(get_max_k_search_value, set_max_k_search_value);
        FLEXT_CALLVAR_B(get_best_k_value_search, set_best_k_value_search);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::KNN grt_knn;
        
        static const std::string attribute_help;
    };
    
    // Flext attribute setters
    void knn::set_k(int k)
    {
        grt_knn.setK(k);
    }
    
    void knn::set_min_k_search_value(int min_k_search_value)
    {
        grt_knn.setMinKSearchValue(min_k_search_value);
    }
    
    void knn::set_max_k_search_value(int max_k_search_value)
    {
        grt_knn.setMaxKSearchValue(max_k_search_value);
    }
    
    void knn::set_best_k_value_search(bool best_k_value_search)
    {
        grt_knn.enableBestKValueSearch(best_k_value_search);
    }
    
    // Flext attribute getters
    void knn::get_k(int &k) const
    {
        flext::error("function not implemented");
    }

    void knn::get_min_k_search_value(int &min_k_search_value) const
    {
        flext::error("function not implemented");
    }

    void knn::get_max_k_search_value(int &max_k_search_value) const
    {
        flext::error("function not implemented");
    }

    void knn::get_best_k_value_search(bool &best_k_value_search) const
    {
        flext::error("function not implemented");
    }
    
    // Implement pure virtual methods
    GRT::Classifier &knn::get_Classifier_instance()
    {
        return grt_knn;
    }
    
    const GRT::Classifier &knn::get_Classifier_instance() const
    {
        return grt_knn;
    }
    
    const std::string knn::attribute_help =  "k:\tinteger (k > 1) Sets the K nearest neighbours that will be searched for by the algorithm during prediction.(default 10)\n"
    "min_k_search_value:\tinteger (n > 0) sets the minimum K value to use when searching for the best K value. (default 1)\n"
    "max_k_search_value:\tinteger (n > 0) sets the maximum K value to use when searching for the best K value. (default 10)\n"
    "best_k_value_search:\tbool (0 or 1) set whether k value search is enabled or not (default 0)\n";
    
    typedef class knn ml0x2eknn;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), knn);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2eknn);
#endif
    
} //namespace ml


