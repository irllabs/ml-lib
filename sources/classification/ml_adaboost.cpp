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
    const std::string object_name = "ml.adaboost";
    
    enum weak_classifiers_
    {
        DECISION_STUMP,
        RADIAL_BASIS_FUNCTION
    };
  
    class adaboost : classification
    {
        FLEXT_HEADER_S(adaboost, classification, setup);
        
    public:
        adaboost()
        {
            post("Adaboost classifier based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
            std::stringstream post_stream;
            post_stream << "prediction_method:\tinteger (" << GRT::AdaBoost::MAX_VALUE << ":MAX_VALUE or " <<  GRT::AdaBoost::MAX_POSITIVE_VALUE << ":MAX_POSITIVE_VALUE) sets the Adaboost prediction method (default " << GRT::AdaBoost::MAX_VALUE << ")";
            help.append_attributes(post_stream.str());
            post_stream.clear();
            post_stream << "set_weak_classifier:\tinteger (" << DECISION_STUMP << ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ":RADIAL_BASIS_FUNCTION) sets the weak classifier to be used by Adaboost, (default: " << DECISION_STUMP << ")";
            help.append_attributes(post_stream.str());
            post_stream.clear();
            post_stream << "add_weak_classifier:\tinteger (" << DECISION_STUMP << ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ":RADIAL_BASIS_FUNCTION) adds the weak classifier to the list of classifiers used by Adaboost)";
            help.append_attributes(post_stream.str());
            help.append_attributes(attribute_help);
        }
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute set messages
            FLEXT_CADDATTR_SET(c, "prediction_method", set_prediction_method);
            FLEXT_CADDATTR_SET(c, "num_boosting_iterations", set_num_boosting_iterations);
            FLEXT_CADDATTR_SET(c, "set_weak_classifier", set_weak_classifier);
            FLEXT_CADDATTR_SET(c, "add_weak_classifier", add_weak_classifier);
            
            // Associate this Flext class with a certain help file prefix
            DefineHelp(c, object_name.c_str());
        }
        
        // Flext attribute setters
        void set_prediction_method(int prediction_method);
        void set_num_boosting_iterations(int num_boosting_iterations);
        void set_weak_classifier(int weak_classifier);
        void add_weak_classifier(int weak_classifier);
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
           
    private:
        // Flext Flext attribute wrappers
        FLEXT_CALLSET_I(set_prediction_method);
        FLEXT_CALLSET_I(set_num_boosting_iterations);
        FLEXT_CALLSET_I(set_weak_classifier);
        FLEXT_CALLSET_I(add_weak_classifier);

        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
                
        GRT::AdaBoost grt_adaboost;
    };
    
    // Flext attribute setters
    void adaboost::set_prediction_method(int prediction_method)
    {
        bool success = false;
        
        success = grt_adaboost.setPredictionMethod(prediction_method);
        
        if (success == false)
        {
            error("unable to set prediction method, must be " + std::to_string(GRT::AdaBoost::MAX_POSITIVE_VALUE) + " or " + std::to_string(GRT::AdaBoost::MAX_VALUE));
        }
    }
    
    void adaboost::set_num_boosting_iterations(int num_boosting_iterations)
    {
        bool success = false;
        
        success = grt_adaboost.setNumBoostingIterations(num_boosting_iterations);
        
        if (success == false)
        {
            error("unable to set num_boosting_iterations, must be greater than zero");
        }
    }
    
    void adaboost::set_weak_classifier(int weak_classifier)
    {
        if (weak_classifier == DECISION_STUMP)
        {
            grt_adaboost.setWeakClassifier(GRT::DecisionStump());
        }
        else if (weak_classifier == RADIAL_BASIS_FUNCTION)
        {
            grt_adaboost.setWeakClassifier(GRT::RadialBasisFunction());
        }
        else
        {
            std::stringstream error_stream;
            error_stream << "invalid weak classifier: " << weak_classifier << " must be " << DECISION_STUMP <<
            ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ": RADIAL_BASIS_FUNCTION";
            error(error_stream.str());
        }
    }
    
    void adaboost::add_weak_classifier(int weak_classifier)
    {
        if (weak_classifier == DECISION_STUMP)
        {
            grt_adaboost.addWeakClassifier(GRT::DecisionStump());
        }
        else if (weak_classifier == RADIAL_BASIS_FUNCTION)
        {
            grt_adaboost.addWeakClassifier(GRT::RadialBasisFunction());
        }
        else
        {
            std::stringstream error_stream;
            error_stream << "invalid weak classifier: " << weak_classifier << " must be " << DECISION_STUMP <<
            ":DECISION_STUMP or " << RADIAL_BASIS_FUNCTION << ": RADIAL_BASIS_FUNCTION";
            error(error_stream.str());
        }
    }

    // Implement pure virtual methods
    GRT::Classifier &adaboost::get_Classifier_instance()
    {
        return grt_adaboost;
    }
    
    const GRT::Classifier &adaboost::get_Classifier_instance() const
    {
        return grt_adaboost;
    }

    const std::string adaboost::attribute_help = "num_boosting_iterations:\tinteger (>0) sets the number of boosting iterations that should be used when training the model (default 20)\n";
    
    typedef class adaboost ml0x2eadaboost;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), adaboost);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2eadaboost);
#endif
    
} //namespace ml


