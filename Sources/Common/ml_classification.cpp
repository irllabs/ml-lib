//
//  ml_classification.h
//  ml
//
//  Created by Jamie Bullock on 25/02/2014.
//
//

#include "ml_classification.h"

#include <sstream>

namespace ml
{
    // Attribute Setters
    void ml_classification::set_null_rejection(bool null_rejection)
    {
        GRT::Classifier &classifier = get_Classifier_instance();
        bool success = classifier.enableNullRejection(null_rejection);
        
        if (!success)
        {
            error("unable to enable NULL rejection");
        }
    }
    
    void ml_classification::set_null_rejection_coeff(float null_rejection_coeff)
    {
        GRT::Classifier &classifier = get_Classifier_instance();
        bool success = classifier.setNullRejectionCoeff(null_rejection_coeff);
        
        if (!success)
        {
            error("unable to set NULL rejection coefficient");
        }
    }
    
    // Attribute Getters
    void ml_classification::get_null_rejection(bool &null_rejection) const
    {
        error("function not implemented");
    }
    
    void ml_classification::get_null_rejection_coeff(float &null_rejection_coeff) const
    {
        const GRT::Classifier &classifier = get_Classifier_instance();
        null_rejection_coeff = classifier.getNullRejectionCoeff();
    }
    
    // Methods
    bool ml_classification::get_num_samples() const
    {
        GRT::UINT numSamples = 0;
        const ml_data_type data_type = get_data_type();
        
        if (data_type == LABELLED_REGRESSION)
        {
            regressionData.getNumSamples();
        }
        else if (data_type == LABELLED_CLASSIFICATION)
        {
            numSamples = classificationData.getNumSamples();
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            numSamples = timeSeriesClassificationData.getNumSamples();
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            numSamples = unlabelledData.getNumSamples();
        }
        
        return numSamples;
    }
    
    void ml_classification::train()
    {
        GRT::UINT numSamples = get_num_samples();
        const ml_data_type data_type = get_data_type();
        GRT::Classifier &classifier = get_Classifier_instance();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            success = classifier.train(classificationData);
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            success = classifier.train(timeSeriesClassificationData);
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            success = classifier.train(unlabelledData);
        }
        
        if (!success)
        {
            error("training failed");
        }
        
        t_atom a_success;
        
        SetInt(a_success, success);
        ToOutAnything(1, s_train, 1, &a_success);
    }
    
    void ml_classification::map(int argc, const t_atom *argv)
    {
        GRT::UINT numSamples = get_num_samples();
        GRT::Classifier &classifier = get_Classifier_instance();
        const ml_data_type data_type = get_data_type();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        if (classifier.getTrained() == false)
        {
            error("data_typel has not been trained, use 'train' to train the data_typel");
            return;
        }
        
        if (classifier.getNumClasses() == 0)
        {
            error("no classes in the trained data_typel, use 'add' to add more training data");
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
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = false;
        
        if (recording)
        {
            timeSeriesData.push_back(query);
            success = classifier.predict(timeSeriesData);
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
        
        if (probs)
        {
            GRT::VectorDouble likelihoods = classifier.getClassLikelihoods();
            AtomList probs_l;
            
            if (data_type == LABELLED_CLASSIFICATION || data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
            {
                GRT::vector<GRT::UINT> labels;
                
                if (data_type == LABELLED_CLASSIFICATION)
                {
                    labels = classificationData.getClassLabels();
                }
                else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
                {
                    // For some reason getClassLabels() isn't implemented for TimeSeriesClassificationData so we do this manually
                    vector<GRT::ClassTracker> classTracker = timeSeriesClassificationData.getClassTracker();
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
                        
                        // Need to call SetDouble() first or label_a gets corrupted. Bug in Flext?
                        SetDouble(&likelihood_a, likelihoods[count]);
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
                    
                    SetDouble(&likelihood_a, likelihoods[count]);
                    probs_l.Append(likelihood_a);
                }
            }
            
            ToOutAnything(1, s_probs, probs_l);
        }
        
        GRT::UINT classification = classifier.getPredictedClassLabel();
        ToOutInt(0, classification);
    }
    
    void ml_classification::usage()
    {
        post(ML_LINE_SEPARATOR);
        post("Attributes:");
        post(ML_LINE_SEPARATOR);
        post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
        post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
        post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
        post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
        post(ML_LINE_SEPARATOR);
        post("Methods:");
        post(ML_LINE_SEPARATOR);
        post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
        post("write:\twrite training examples, first argument gives path to write location");
        post("read:\tread training examples, first argument gives path to the read location");
        post("train:\ttrain the MLP based on vectors added with 'add'");
        post("clear:\tclear the stored training data and data_typel");
        post("map:\tgive the regression value for the input feature vector");
        post("help:\tpost this usage statement to the console");
        post(ML_LINE_SEPARATOR);
    }
    
#pragma mark - pure virtual method implementation
    GRT::MLBase &ml_classification::get_MLBase_instance()
    {
        return get_Classifier_instance();
    }
    
    const GRT::MLBase &ml_classification::get_MLBase_instance() const
    {
        return get_Classifier_instance();
    }
    
    bool ml_classification::read_specialised_dataset(std::string &path)
    {
        return classificationData.loadDatasetFromFile(path);
    }
    
    bool ml_classification::write_specialised_dataset(std::string &path) const
    {
        return classificationData.saveDatasetToFile(path);
    }
    
}
