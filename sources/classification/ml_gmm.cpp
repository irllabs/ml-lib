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
    // Constants
    const std::string ml_object_name = "ml.gmm";
    const std::string k_attribute_help =
    "num_mixture_models:\tinteger (n > 0) sets the number of mixture models used for class (default 2)\n";
    
    // Utility functions
    
    
    // Class declaration
    class ml_gmm : ml_classification
    {
        FLEXT_HEADER_S(ml_gmm, ml_classification, setup);
        
    public:
        ml_gmm()
        {
            post("Gaussian Mixture Models based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
            help.append_attributes(k_attribute_help);
        }
        
        ~ml_gmm()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "num_mixture_models", set_num_mixture_models);
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "num_mixture_models", get_num_mixture_models);
            
            // Flext method messages
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_num_mixture_models(int type);
        
        // Attribute Getters
        void get_num_mixture_models(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_num_mixture_models, set_num_mixture_models);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        // Instance variables
        GRT::GMM gmm;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_gmm::set_num_mixture_models(int num_mixture_models)
    {
        gmm.setNumMixtureModels(num_mixture_models);
    }
    
    
    // Attribute getters
    void ml_gmm::get_num_mixture_models(int &num_mixture_models) const
    {
        flext::error("function not implemented");
    }
    
    // Methods
    
    
    // Implement pure virtual methods
    GRT::Classifier &ml_gmm::get_Classifier_instance()
    {
        return gmm;
    }
    
    const GRT::Classifier &ml_gmm::get_Classifier_instance() const
    {
        return gmm;
    }
    
    FLEXT_LIB(ml_object_name.c_str(), ml_gmm);
    
} //namespace ml


