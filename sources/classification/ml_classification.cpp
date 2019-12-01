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
    classification::classification()
    : probs(false)
    {
        set_data_type(LABELLED_CLASSIFICATION);
    }
    
    // Flext attribute setters
    void classification::set_null_rejection(bool null_rejection)
    {
        GRT::Classifier &classifier = get_Classifier_instance();
        bool success = classifier.enableNullRejection(null_rejection);
        
        if (!success)
        {
            error("unable to enable NULL rejection");
        }
    }
    
    void classification::set_probs(bool probs)
    {
        this->probs = probs;
    }
    
    void classification::set_null_rejection_coeff(float null_rejection_coeff)
    {
        GRT::Classifier &classifier = get_Classifier_instance();
        bool success = classifier.setNullRejectionCoeff(null_rejection_coeff);
        
        if (!success)
        {
            error("unable to set NULL rejection coefficient");
        }
    }
    
    // Flext attribute getters
    void classification::get_null_rejection(bool &null_rejection) const
    {
        error("function not implemented");
    }
    
    void classification::get_probs(bool &probs) const
    {
        probs = this->probs;
    }
    
    void classification::get_null_rejection_coeff(float &null_rejection_coeff) const
    {
        const GRT::Classifier &classifier = get_Classifier_instance();
        null_rejection_coeff = classifier.getNullRejectionCoeff();
    }
    
    bool classification::get_num_samples() const
    {
        GRT::UINT numSamples = 0;
        const data_type data_type = get_data_type();
        
        if (data_type == LABELLED_REGRESSION)
        {
            regression_data.getNumSamples();
        }
        else if (data_type == LABELLED_CLASSIFICATION)
        {
            numSamples = classification_data.getNumSamples();
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            numSamples = time_series_classification_data.getNumSamples();
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            numSamples = unlabelled_data.getNumSamples();
        }
        
        return numSamples;
    }
    
    void classification::train()
    {
        GRT::UINT numSamples = get_num_samples();
        const enum data_type data_type = get_data_type();
        GRT::Classifier &classifier = get_Classifier_instance();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            success = classifier.train(classification_data);
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            success = classifier.train(time_series_classification_data);
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            success = classifier.train(unlabelled_data);
        }
        
        if (!success)
        {
            error("training failed");
        }
        
        t_atom a_success;
        
        SetInt(a_success, success);
        ToOutAnything(1, get_s_train(), 1, &a_success);
    }
    
    void classification::map(int argc, const t_atom *argv)
    {
        GRT::Classifier &classifier = get_Classifier_instance();
        const data_type data_type = get_data_type();
        
        if (classifier.getTrained() == false)
        {
            error("model has not been trained, use 'train' to train the model");
            return;
        }
        
        if (classifier.getNumClasses() == 0)
        {
            error("no classes in the trained model, use 'add' to add more training data");
            return;
        }
        
        if (recording && data_type != LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            error("recording classification only available for time series");
            return;
        }
        
        GRT::UINT numInputFeatures = classifier.getNumInputFeatures();
        GRT::VectorDouble query(numInputFeatures);
        
        if (argc < 0 || (unsigned)argc != numInputFeatures)
        {
            std::stringstream ss;
            ss << "invalid input length, expected " << numInputFeatures << ", got " << argc;
            error(ss.str());
            return;
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = false;
        
        if (recording)
        {
            success = time_series_data.push_back(query);
            if (!success)
            {
                flext::error("unable to add time series, buffer may be full");
                return;
            }
            success = classifier.predict(time_series_data);
            ToOutFloat(1, classifier.getPhase());
        }
        else
        {
            success = classifier.predict(query);
        }
        
        if (success == false)
        {
            error("unable to map input");
            return;
        }
        
        if (!recording && probs)
        {
            GRT::VectorDouble likelihoods = classifier.getClassLikelihoods();
            AtomList probs_l;
            
            if (data_type == LABELLED_CLASSIFICATION || data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
            {
                GRT::Vector<GRT::UINT> labels;
                
                if (data_type == LABELLED_CLASSIFICATION)
                {
                    labels = classification_data.getClassLabels();
                }
                else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
                {
                    // For some reason getClassLabels() isn't implemented for TimeSeriesClassificationData so we do this manually
                    std::vector<GRT::ClassTracker> classTracker = time_series_classification_data.getClassTracker();
                    for (uint16_t index = 0; index < classTracker.size(); ++index)
                    {
                        labels.push_back(classTracker[index].classLabel);
                    }
                }
                
                if (likelihoods.size() != labels.size())
                {
                    error("labels / likelihoods size mismatch");
                }
                else
                {
                    for (uint16_t count = 0; count < labels.size(); ++count)
                    {
                        t_atom label_a;
                        t_atom likelihood_a;
                        
                        SetFloat(likelihood_a, static_cast<float>(likelihoods[count]));
                        SetInt(label_a, labels[count]);
                        
                        probs_l.Append(label_a);
                        probs_l.Append(likelihood_a);
                    }
                }
                
                
            }
            else if (data_type == UNLABELLED_CLASSIFICATION)
            {
                for (uint16_t count = 0; count < likelihoods.size(); ++count)
                {
                    t_atom likelihood_a;
                    
                    SetFloat(likelihood_a, static_cast<float>(likelihoods[count]));
                    probs_l.Append(likelihood_a);
                }
            }
            
            ToOutAnything(1, get_s_probs(), probs_l);
        }
        
        GRT::UINT classification = classifier.getPredictedClassLabel();
        ToOutInt(0, classification);
    }
    
    // pure virtual method implementation
    GRT::MLBase &classification::get_MLBase_instance()
    {
        return get_Classifier_instance();
    }
    
    const GRT::MLBase &classification::get_MLBase_instance() const
    {
        return get_Classifier_instance();
    }
    
    bool classification::read_specialised_dataset(std::string &path)
    {
        return classification_data.loadDatasetFromFile(path);
    }
    
    bool classification::write_specialised_dataset(std::string &path) const
    {
        return classification_data.save(path);
    }
    
}
