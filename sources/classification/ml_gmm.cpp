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
    const std::string object_name = "ml.gmm";
    
    class gmm : classification
    {
        FLEXT_HEADER_S(gmm, classification, setup);
        
    public:
        gmm()
        {
            post("Gaussian Mixture Models based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
            help.append_attributes(attribute_help);
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "num_mixture_models", set_num_mixture_models);
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "num_mixture_models", get_num_mixture_models);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_num_mixture_models(int type);
        
        // Flext attribute getters
        void get_num_mixture_models(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_mixture_models, set_num_mixture_models);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::GMM grt_gmm;
        
        static const std::string attribute_help;
    };
    
    // Flext attribute setters
    void gmm::set_num_mixture_models(int num_mixture_models)
    {
        grt_gmm.setNumMixtureModels(num_mixture_models);
    }
    
    
    // Flext attribute getters
    void gmm::get_num_mixture_models(int &num_mixture_models) const
    {
        flext::error("function not implemented");
    }
    
    // Implement pure virtual methods
    GRT::Classifier &gmm::get_Classifier_instance()
    {
        return grt_gmm;
    }
    
    const GRT::Classifier &gmm::get_Classifier_instance() const
    {
        return grt_gmm;
    }
    
    const std::string gmm::attribute_help =
    "num_mixture_models:\tinteger (n > 0) sets the number of mixture models used for class (default 2)\n";
        
    typedef class gmm ml0x2egmm;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), gmm);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2egmm);
#endif

    
} //namespace ml


