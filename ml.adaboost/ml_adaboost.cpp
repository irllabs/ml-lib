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

#include <sstream>

namespace ml
{
    static const std::string ml_object_name = "ml.adaboost";
    
    enum weak_classifiers_
    {
        DECISION_STUMP,
        RADIAL_BASIS_FUNCTION
    };
    // Utility functions
    
    
    // Class declaration
    class ml_adaboost : ml_classification
    {
        FLEXT_HEADER_S(ml_adaboost, ml, setup);
        
    public:
        ml_adaboost()
        {
            post("Adaboost classifier based on the GRT library version " + get_grt_version());
            set_scaling(default_scaling);
        }
        
        ~ml_adaboost()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
              
//            /**
//             Adds a WeakClassifier to the list of WeakClassifiers to use for boosting.
//             
//             If this function is called, the new WeakClassifier will be added to the list of WeakClassifiers.
//             
//             @return returns true if the WeakClassifier was added successfully, false otherwise
//             */
//            bool addWeakClassifier(const WeakClassifier &weakClassifer);
//            
//            /**
//             Clears all the current WeakClassifiers.
//             
//             @return returns true if the WeakClassifiers was cleared successfully, false otherwise
//             */
//            bool clearWeakClassifiers();
            
            
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "prediction_method", set_prediction_method);
            FLEXT_CADDATTR_SET(c, "num_boosting_iterations", set_num_boosting_iterations);
            FLEXT_CADDATTR_SET(c, "weak_classifier", set_weak_classifier);
            
            // Flext attribute get messages
//            FLEXT_CADDATTR_GET(c, "type", get_type);
            
            // Flext method messages
//            FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Methods
        void usage();
        
        // Attribute Setters
        void set_prediction_method(int prediction_method);
        void set_num_boosting_iterations(int num_boosting_iterations);
        void set_weak_classifier(int weak_classifier);
        
        // Attribute Getters
//        void get_type(int &type) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
//        FLEXT_CALLBACK(cross_validation);
        
        // Flext attribute wrappers
        FLEXT_CALLSET_I(set_prediction_method);
        FLEXT_CALLSET_I(set_num_boosting_iterations);
        FLEXT_CALLSET_I(set_weak_classifier);

        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
                
        // Instance variables
        GRT::AdaBoost adaboost;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_adaboost::set_prediction_method(int prediction_method)
    {
        bool success = false;
        
        success = adaboost.setPredictionMethod(prediction_method);
        
        if (success == false)
        {
            error("unable to set prediction method, must be " + std::to_string(GRT::AdaBoost::MAX_POSITIVE_VALUE) + " or " + std::to_string(GRT::AdaBoost::MAX_VALUE));
        }
    }
    
    void ml_adaboost::set_num_boosting_iterations(int num_boosting_iterations)
    {
        bool success = false;
        
        success = adaboost.setNumBoostingIterations(num_boosting_iterations);
        
        if (success == false)
        {
            error("unable to set num_boosting_iterations, must be greater than zero");
        }
    }
    
    void ml_adaboost::set_weak_classifier(int weak_classifier)
    {
        if (weak_classifier == DECISION_STUMP)
        {
            adaboost.setWeakClassifier(GRT::DecisionStump());
        }
        else if (weak_classifier == RADIAL_BASIS_FUNCTION)
        {
            adaboost.setWeakClassifier(GRT::RadialBasisFunction());
        }
        else
        {
            std::stringstream error_stream;
            error_stream << "invalid weak classifier: " << weak_classifier << " must be " << DECISION_STUMP <<
            ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ": RADIAL_BASIS_FUNCTION";
            error(error_stream.str());
        }
    }

    // Attribute getters
    
    
    // Methods
    void ml_adaboost::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        std::stringstream post_stream;
        post_stream << "prediction_method:\tinteger (" << GRT::AdaBoost::MAX_VALUE << ":MAX_VALUE or " <<  GRT::AdaBoost::MAX_POSITIVE_VALUE << ":MAX_POSITIVE_VALUE) sets the Adaboost prediction method (default " << GRT::AdaBoost::MAX_VALUE << ")";
        post(post_stream.str());
        post("num_boosting_iterations:\tinteger (>0) sets the number of boosting iterations that should be used when training the model (default 20)");
        post_stream.clear();
        post_stream << "weak_classifier:\tinteger (" << DECISION_STUMP << ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ":RADIAL_BASIS_FUNCTION) sets the weak classifier to be used by Adaboost, (default: " << DECISION_STUMP << ")";
        post(ML_LINE_SEPARATOR);
        post("Methods:");
        post(ML_LINE_SEPARATOR);
        // Method help here
        post("help:\tpost this usage statement to the console");
        post(ML_LINE_SEPARATOR);
        
    }
    
    // Implement pure virtual methods
    GRT::Classifier &ml_adaboost::get_Classifier_instance()
    {
        return adaboost;
    }
    
    const GRT::Classifier &ml_adaboost::get_Classifier_instance() const
    {
        return adaboost;
    }

    typedef class ml_adaboost ml0x2eadaboost;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_adaboost);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2eadaboost);
#endif
    
} //namespace ml


