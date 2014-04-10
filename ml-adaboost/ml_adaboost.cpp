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
            post("ml-adaboost: Adaboost classifier based on the GRT library version %s", get_grt_version().c_str());
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
            DefineHelp(c,"ml-adaboost");
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
            error("unable to set prediction method, must be %d or %d",
                  GRT::AdaBoost::MAX_POSITIVE_VALUE,
                  GRT::AdaBoost::MAX_VALUE
                  );
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
            error("invalid weak classifier: %d, must be %d:DECISION_STUMP or %d:RADIAL_BASIS_FUNCTION", weak_classifier, DECISION_STUMP, RADIAL_BASIS_FUNCTION);
        }
    }

    // Attribute getters
    
    
    // Methods
    void ml_adaboost::usage()
    {
        post("%s", ML_POST_SEP);
        post("Attributes:");
        post("%s", ML_POST_SEP);
        post("prediction_method:\tinteger (%d:MAX_VALUE or %d:MAX_POSITIVE_VALUE) sets the Adaboost prediction method (default %d)",
             GRT::AdaBoost::MAX_VALUE, GRT::AdaBoost::MAX_POSITIVE_VALUE, GRT::AdaBoost::MAX_VALUE);
        post("num_boosting_iterations:\tinteger (>0) sets the number of boosting iterations that should be used when training the model (default 20)");
        post("weak_classifier:\tinteger (%d:DECISION_STUMP or %d:RADIAL_BASIS_FUNCTION) sets the weak classifier to be used by Adaboost, (default: %d)", DECISION_STUMP, RADIAL_BASIS_FUNCTION, DECISION_STUMP);
        post("%s", ML_POST_SEP);
        post("Methods:");
        post("%s", ML_POST_SEP);
        // Method help here
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
        
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

#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB("ml-adaboost", ml_adaboost);
#else
    FLEXT_NEW("ml-adaboost", ml_adaboost);
#endif
    
} //namespace ml


