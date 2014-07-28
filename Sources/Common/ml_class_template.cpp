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
    class ml_svm : ml_classification
    {
        FLEXT_HEADER_S(ml_svm, ml, setup);
        
    public:
        ml_svm()
        {
            post("ml.svm: Support Vector Machines based on the GRT library version %s", get_grt_version().c_str());
            set_scaling(default_scaling);
        }
        
        ~ml_svm()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "type", set_type);
            
            // Flext attribute get messages
            FLEXT_CADDATTR_GET(c, "type", get_type);
            
            // Flext method messages
            FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c,"ml.svm");
        }
        
        // Methods
        void cross_validation();
        void usage();
        
        // Attribute Setters
        void set_type(int type);
        
        // Attribute Getters
        void get_type(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        FLEXT_CALLBACK(cross_validation);
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_type, set_type);
        
        // Instance variables
        GRT::SVM svm;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_svm::set_type(int type)
    {
            //
    }
    
    
    // Attribute getters
    void ml_svm::get_type(int &type) const
    {
        //
    }
    
    // Methods
    void ml_svm::cross_validation()
    {
        //
    }
    
    void ml_svm::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        // Attribute help here
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        // Method help here
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
        
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_svm::get_Classifier_instance()
    {
        return svm;
    }
    
    const GRT::Classifier &ml_svm::get_Classifier_instance() const
    {
        return svm;
    }
    
    FLEXT_LIB("ml.svm", ml_svm);
    
} //namespace ml


