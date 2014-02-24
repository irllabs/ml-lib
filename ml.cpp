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

#include "ml.h"

namespace ml
{

#pragma mark - Utility methods

std::string get_symbol_as_string(const t_symbol *symbol)
{
    const char *c_string = flext::GetAString(symbol);
    std::string cpp_string;
    
    if (c_string == NULL)
    {
        error("symbol was NULL");
    }
    else
    {
        cpp_string.assign(c_string);
    }
    
    return cpp_string;
}
    
#pragma mark - ml_base implementation

void ml_base::set_num_inputs(uint8_t num_inputs)
{
    if (num_inputs < 0)
    {
        error("number of inputs must be greater than zero");
    }
    
    bool success = false;
    const ml_data_type data_type = get_data_type();
    
    if (data_type == LABELLED_CLASSIFICATION)
    {
        success = labelledClassificationData.setNumDimensions(num_inputs);
    }
    else if (data_type == LABELLED_REGRESSION)
    {
        success = labelledRegressionData.setInputAndTargetDimensions(num_inputs, labelledRegressionData.getNumTargetDimensions());
    }
    else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = labelledTimeSeriesClassificationData.setNumDimensions(num_inputs);
    }
    else if (data_type == UNLABELLED_CLASSIFICATION)
    {
        success = unlabelledClassificationData.setNumDimensions(num_inputs);
    }
    
    if (success == false)
    {
        error("unable to set input or target dimensions");
        return;
    }
}
    
ml_base::ml_base()
{
    currentLabel = 0;
    probs = false;
    AddOutAnything("general purpose outlet");
    set_scaling(true);
    set_data_type(default_data_type);
}
    
void ml_base::set_scaling(bool scaling)
{
    bool success = false;
    GRT::MLBase &mlBase = get_MLBase_instance();

    success = mlBase.enableScaling(scaling);
    
    if (success == false)
    {
        error("unable to set scaling, hint: should be 0 or 1");
    }
}

void ml_base::get_scaling(bool &scaling) const
{
    const GRT::MLBase &mlBase = get_MLBase_instance();
    
    scaling = mlBase.getScalingEnabled();
}

void ml_base::set_probs(bool probs)
{
    this->probs = probs;
}

void ml_base::get_probs(bool &probs) const
{
    probs = this->probs;
}
    
void ml_base::add(int argc, const t_atom *argv)
{
    if (argc < 2)
    {
        error("invalid input length, must contain at least 2 values");
        return;
    }
    
    GRT::UINT numInputDimensions = 0;
    GRT::UINT numOutputDimensions = 1;
    const ml_data_type data_type = get_data_type();
    
    if (data_type == LABELLED_CLASSIFICATION)
    {
        numInputDimensions = labelledClassificationData.getNumDimensions();
    }
    else if (data_type == LABELLED_REGRESSION)
    {
        numInputDimensions = labelledRegressionData.getNumInputDimensions();
        numOutputDimensions = labelledRegressionData.getNumTargetDimensions();
    }
    else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        numInputDimensions = labelledTimeSeriesClassificationData.getNumDimensions();
    }
    else if (data_type == UNLABELLED_CLASSIFICATION)
    {
        numInputDimensions = unlabelledClassificationData.getNumDimensions();
    }
    else
    {
        error("unhandled data_type: %d", data_type);
        return;
    }
    
    GRT::UINT combinedVectorSize = numInputDimensions + numOutputDimensions;
    
    if (argc < 0 || (unsigned)argc != combinedVectorSize)
    {
        numInputDimensions = argc - numOutputDimensions;
        
        if (numInputDimensions < 1)
        {
            error("invalid input length, expected at least %d", numOutputDimensions + 1);
            return;
        }
        post("new input vector size, adjusting num_inputs to %d", numInputDimensions);
        set_num_inputs(numInputDimensions);
    }
    
    GRT::VectorDouble inputVector(numInputDimensions);
    GRT::VectorDouble targetVector(numOutputDimensions);
    
    for (uint32_t index = 0; index < (unsigned)argc; ++index)
    {
        float value = GetAFloat(argv[index]);
        
        if (index < numOutputDimensions)
        {
            targetVector[index] = value;
        }
        else
        {
            inputVector[index - numOutputDimensions] = value;
        }
    }
    
    if (data_type == LABELLED_CLASSIFICATION || data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        GRT::UINT label = (GRT::UINT)targetVector[0];
        
        if ((double)label != targetVector[0])
        {
            error("class label must be a positive integer");
            return;
        }
        
        if (label == 0)
        {
            error("class label must be non-zero");
            return;
        }
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            labelledClassificationData.addSample((GRT::UINT)targetVector[0], inputVector);
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            if (recording)
            {
                // allow label to be changed on-the-fly without explicitly toggling "record"
                if (label != currentLabel)
                {
                    record_(false);
                    record_(true);
                }
                currentLabel = label;
                timeSeriesData.push_back(inputVector);
            }
            else
            {
                error("cannot add time series data if recording is off, send 'record 1' to start recording");
            }
        }
    }
    else if (data_type == LABELLED_REGRESSION)
    {
        labelledRegressionData.addSample(inputVector, targetVector);
    }
}
   
void ml_base::record_(bool state)
{
    
    const ml_data_type data_type = get_data_type();
    
    if (data_type != LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        error("record method only valid for time series data");
        return;
    }
    
    recording = state;
    
    if (recording == false && currentLabel != 0 && timeSeriesData.getNumRows() > 0)
    {
        labelledTimeSeriesClassificationData.addSample(currentLabel, timeSeriesData);
    }
    timeSeriesData.clear();
    currentLabel = 0;
}
    
void ml_base::record(bool state)
{
    record_(state);
    post("recording: %s", state == 1 ? "on" : "off");
}

void ml_base::save(const t_symbol *path) const
{
    bool success = false;
    t_atom a_success;
    SetInt(a_success, success);
    const ml_data_type data_type = get_data_type();
    
    if (labelledRegressionData.getNumSamples() == 0 && labelledRegressionData.getNumSamples() == 0)
    {
        error("no observations added, use 'add' to add training data");
        ToOutAnything(1, s_save, 1, &a_success);
        return;
    }
    
    std::string file_path = get_symbol_as_string(path);
    
    if (file_path.empty())
    {
        error("path string is empty");
        ToOutAnything(1, s_save, 1, &a_success);
        return;
    }
    
    if (data_type == LABELLED_CLASSIFICATION)
    {
        success = labelledClassificationData.saveDatasetToFile(file_path);
    }
    else if (data_type == LABELLED_REGRESSION)
    {
        success = labelledRegressionData.saveDatasetToFile(file_path);
    }
    else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = labelledTimeSeriesClassificationData.saveDatasetToFile(file_path);
    }
    else if (data_type == UNLABELLED_CLASSIFICATION)
    {
        success = unlabelledClassificationData.saveDatasetToFile(file_path);
    }
    
    if (!success)
    {
        error("unable to save training data to path: %s", file_path.c_str());
    }
    
    SetInt(a_success, success);
    ToOutAnything(1, s_save, 1, &a_success);
}

void ml_base::load(const t_symbol *path)
{
    std::string file_path = get_symbol_as_string(path);
    
    bool success = false;
    t_atom a_success;
    SetInt(a_success, success);
    
    if (file_path.empty())
    {
        error("path string is empty");
        ToOutAnything(1, s_load, 1, &a_success);
        return;
    }
    
    success = labelledClassificationData.loadDatasetFromFile(file_path);
    SetInt(a_success, success);
    
    if (success)
    {
        set_data_type(LABELLED_CLASSIFICATION);
        ToOutAnything(1, s_load, 1, &a_success);
        return;
    }
    
    success = labelledRegressionData.loadDatasetFromFile(file_path);
    SetInt(a_success, success);

    if (success)
    {
        set_data_type(LABELLED_REGRESSION);
        ToOutAnything(1, s_load, 1, &a_success);
        return;
    }

    success = labelledTimeSeriesClassificationData.loadDatasetFromFile(file_path);
    SetInt(a_success, success);

    if (success)
    {
        set_data_type(LABELLED_TIME_SERIES_CLASSIFICATION);
        ToOutAnything(1, s_load, 1, &a_success);
        return;
    }
    
    success = unlabelledClassificationData.loadDatasetFromFile(file_path);
    SetInt(a_success, success);
    
    if (success)
    {
        set_data_type(UNLABELLED_CLASSIFICATION);
        ToOutAnything(1, s_load, 1, &a_success);
        return;
    }
  
    ToOutAnything(1, s_load, 1, &a_success);
    error("unable to load training data from path: %s", file_path.c_str());
}
    
void ml_base::clear()
{
    t_atom status;
    SetBool(status, true);
    
    labelledRegressionData.clear();
    labelledClassificationData.clear();
    labelledTimeSeriesClassificationData.clear();
    unlabelledClassificationData.clear();
    
    ToOutAnything(1, s_clear, 1, &status);
}
    
void ml_base::train()
{
    error("function not implemented");
}

void ml_base::map(int argc, const t_atom *argv)
{
    error("function not implemented");
}
    
void ml_base::usage()
{
    post("%s", ML_POST_SEP);
    post("Attributes:");
    post("%s", ML_POST_SEP);
    post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
    post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
    post("%s", ML_POST_SEP);
    post("Methods:");
    post("%s", ML_POST_SEP);
    post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
    post("save:\tsave training examples, first argument gives path to save location");
    post("load:\tload training examples, first argument gives path to the load location");
    post("train:\ttrain the MLP based on vectors added with 'add'");
    post("clear:\tclear the stored training data and data_typel");
    post("map:\tgive the regression value for the input feature vector");
    post("help:\tpost this usage statement to the console");
    post("%s", ML_POST_SEP);
}
    
void ml_base::any(const t_symbol *s, int argc, const t_atom *argv)
{
    error("messages with the selector '%s' are not supported", GetString(s));
}

std::string ml_base::get_grt_version()
{
    GRT::MLBase &mlBase = get_MLBase_instance();
    return mlBase.getGRTVersion();
}
    
void ml_base::setup(t_classid c)
{
    FLEXT_CADDATTR_SET(c, "scaling", set_scaling);
    FLEXT_CADDATTR_SET(c, "probs", set_probs);
    
    FLEXT_CADDATTR_GET(c, "scaling", get_scaling);
    FLEXT_CADDATTR_GET(c, "probs", get_probs);
    
    FLEXT_CADDMETHOD(c, 0, any);
    FLEXT_CADDMETHOD_(c, 0, "add", add);
    FLEXT_CADDMETHOD_(c, 0, "record", record);
    FLEXT_CADDMETHOD_(c, 0, "save", save);
    FLEXT_CADDMETHOD_(c, 0, "load", load);
    FLEXT_CADDMETHOD_(c, 0, "train", train);
    FLEXT_CADDMETHOD_(c, 0, "clear", clear);
    FLEXT_CADDMETHOD_(c, 0, "map", map);
    FLEXT_CADDMETHOD_(c, 0, "help", usage);
}
    
// Implement pure virtual methods
void ml_base::set_data_type(ml_data_type data_type)
{
    if (data_type > MLP_NUM_DATA_TYPES)
    {
        error("invalid data type: %d", data_type);
        return;
    }
    this->data_type = data_type;
}

ml_data_type ml_base::get_data_type() const
{
    return data_type;
}
    
#pragma mark - ml_classification_base implementation
    
// Attribute Setters
void ml_classification_base::set_null_rejection(bool null_rejection)
{
    GRT::Classifier &classifier = get_Classifier_instance();
    bool success = classifier.enableNullRejection(null_rejection);
    
    if (!success)
    {
        error("unable to enable NULL rejection");
    }
}
    
void ml_classification_base::set_null_rejection_coeff(float null_rejection_coeff)
{
    GRT::Classifier &classifier = get_Classifier_instance();
    bool success = classifier.setNullRejectionCoeff(null_rejection_coeff);
    
    if (!success)
    {
        error("unable to set NULL rejection coefficient");
    }
}

// Attribute Getters
void ml_classification_base::get_null_rejection(bool &null_rejection) const
{
    error("function not implemented");
}
    
void ml_classification_base::get_null_rejection_coeff(float &null_rejection_coeff) const
{
    const GRT::Classifier &classifier = get_Classifier_instance();
    null_rejection_coeff = classifier.getNullRejectionCoeff();
}
    
// Methods
bool ml_classification_base::get_num_samples() const
{
    GRT::UINT numSamples = 0;
    const ml_data_type data_type = get_data_type();
    
    if (data_type == LABELLED_REGRESSION)
    {
        labelledRegressionData.getNumSamples();
    }
    else if (data_type == LABELLED_CLASSIFICATION)
    {
        numSamples = labelledClassificationData.getNumSamples();
    }
    else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        numSamples = labelledTimeSeriesClassificationData.getNumSamples();
    }
    else if (data_type == UNLABELLED_CLASSIFICATION)
    {
        numSamples = unlabelledClassificationData.getNumSamples();
    }
    
    return numSamples;
}

void ml_classification_base::train()
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
        success = classifier.train(labelledClassificationData);
    }
    else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = classifier.train(labelledTimeSeriesClassificationData);
    }
    else if (data_type == UNLABELLED_CLASSIFICATION)
    {
        success = classifier.train(unlabelledClassificationData);
    }
    
    if (!success)
    {
        error("training failed");
    }
    
    t_atom a_success;
    
    SetInt(a_success, success);
    ToOutAnything(1, s_train, 1, &a_success);
}

void ml_classification_base::map(int argc, const t_atom *argv)
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
        error("invalid input length, expected %d, got %d", numInputFeatures, argc);
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
                labels = labelledClassificationData.getClassLabels();
            }
            else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
            {
                // For some reason getClassLabels() isn't implemented for LabelledTimeSeriesClassificationData so we do this manually
                vector<GRT::ClassTracker> classTracker = labelledTimeSeriesClassificationData.getClassTracker();
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
    
void ml_classification_base::usage()
{
    post("%s", ML_POST_SEP);
    post("Attributes:");
    post("%s", ML_POST_SEP);
    post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
    post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
    post("null_rejection:\tinteger (0 or 1) toggling NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded (default 1)");
    post("null_rejection_coeff:\tfloating point value setting a multiplier for the NULL-rejection threshold (default 0.9)");
    post("%s", ML_POST_SEP);
    post("Methods:");
    post("%s", ML_POST_SEP);
    post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
    post("save:\tsave training examples, first argument gives path to save location");
    post("load:\tload training examples, first argument gives path to the load location");
    post("train:\ttrain the MLP based on vectors added with 'add'");
    post("clear:\tclear the stored training data and data_typel");
    post("map:\tgive the regression value for the input feature vector");
    post("help:\tpost this usage statement to the console");
    post("%s", ML_POST_SEP);
}

#pragma mark - pure virtual method implementation
GRT::MLBase &ml_classification_base::get_MLBase_instance()
{
    return get_Classifier_instance();
}

const GRT::MLBase &ml_classification_base::get_MLBase_instance() const
{
    return get_Classifier_instance();
}
    
#pragma mark - ml_regression_base implementation
    
// Attribute setters
void ml_regression_base::set_max_iterations(int max_iterations)
{
    GRT::Regressifier &regressifier = get_Regressifier_instance();
    regressifier.setMaxNumEpochs(max_iterations);
}

void ml_regression_base::set_min_change(float min_change)
{
    GRT::Regressifier &regressifier = get_Regressifier_instance();
    bool success = regressifier.setMinChange(min_change);
    
    if (success == false)
    {
        error("unable to set min_change, hint: should be greater than 0");
    }
}

void ml_regression_base::set_training_rate(float training_rate)
{
    GRT::Regressifier &regressifier = get_Regressifier_instance();
    bool success = regressifier.setLearningRate(training_rate);
    
    if (success == false)
    {
        error("unable to set training_rate, hint: should be between 0-1");
    }
}

// Attribute getters
void ml_regression_base::get_max_iterations(int &max_iterations) const
{
    const GRT::Regressifier &regressifier = get_Regressifier_instance();
    max_iterations = regressifier.getMaxNumEpochs();
}

void ml_regression_base::get_min_change(float &min_change) const
{
    error("function not implemented");
    //        min_change = regressifier->getMinChange();
}

void ml_regression_base::get_training_rate(float &training_rate) const
{
    const GRT::Regressifier &regressifier = get_Regressifier_instance();
    training_rate = regressifier.getLearningRate();
}

// Methods
void ml_regression_base::train()
{
    GRT::UINT numSamples = labelledRegressionData.getNumSamples();
    GRT::Regressifier &regressifier = get_Regressifier_instance();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    bool success = false;
    success = regressifier.train(labelledRegressionData);
    
    if (!success)
    {
        error("training failed");
    }
    
    t_atom a_success;
    
    SetInt(a_success, success);
    ToOutAnything(1, s_train, 1, &a_success);
}

void ml_regression_base::map(int argc, const t_atom *argv)
{
    GRT::UINT numSamples = labelledRegressionData.getNumSamples();
    GRT::Regressifier &regressifier = get_Regressifier_instance();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    if (regressifier.getTrained() == false)
    {
        error("data_typel has not been trained, use 'train' to train the data_typel");
        return;
    }
    
    GRT::UINT numInputNeurons = regressifier.getNumInputFeatures();
    GRT::VectorDouble query(numInputNeurons);
    
    if (argc < 0 || (unsigned)argc != numInputNeurons)
    {
        error("invalid input length, expected %d, got %d", numInputNeurons, argc);
    }
    
    for (uint32_t index = 0; index < (uint32_t)argc; ++index)
    {
        double value = GetAFloat(argv[index]);
        query[index] = value;
    }
    
    bool success = regressifier.predict(query);
    
    if (success == false)
    {
        error("unable to map input");
        return;
    }
    
    GRT::VectorDouble regressionData = regressifier.getRegressionData();
    GRT::VectorDouble::size_type numOutputDimensions = regressionData.size();
    
    if (numOutputDimensions != regressifier.getNumOutputDimensions())
    {
        error("invalid output dimensions: %d", numOutputDimensions);
        return;
    }
    
    AtomList result;
    
    for (uint32_t index = 0; index < numOutputDimensions; ++index)
    {
        t_atom value_a;
        double value = regressionData[index];
        SetFloat(value_a, value);
        result.Append(value_a);
    }
    
    ToOutList(0, result);
}
    
void ml_regression_base::usage()
{
    post("%s", ML_POST_SEP);
    post("Attributes:");
    post("%s", ML_POST_SEP);
    post("num_inputs:\tinteger setting number of neurons in the input layer of the MLP (default %d)", defaultNumInputDimensions);
    post("training_rate:\tfloating point value used to update the weights at each step of the stochastic gradient descent (default 0.1)");
    post("scaling:\tinteger (0 or 1) sets whether values are automatically scaled (default 1)");
    post("probs:\tinteger (0 or 1) determing whether probabilities are sent from the right outlet");
    post("%s", ML_POST_SEP);
    post("Methods:");
    post("%s", ML_POST_SEP);
    post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
    post("save:\tsave training examples, first argument gives path to save location");
    post("load:\tload training examples, first argument gives path to the load location");
    post("train:\ttrain the MLP based on vectors added with 'add'");
    post("clear:\tclear the stored training data and data_typel");
    post("map:\tgive the regression value for the input feature vector");
    post("help:\tpost this usage statement to the console");
    post("%s", ML_POST_SEP);
}

#pragma mark - pure virtual method implementation
GRT::MLBase &ml_regression_base::get_MLBase_instance()
{
    return get_Regressifier_instance();
}

const GRT::MLBase &ml_regression_base::get_MLBase_instance() const
{
    return get_Regressifier_instance();
}


#pragma mark - Main function
    
static void main()
{
    post("%s", ML_POST_SEP);
    post("%s - machine learning library for Max and Pure Data", ML_NAME);
    post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
    post("%s", ML_POST_SEP);
    
    // call the objects' setup routines
    FLEXT_SETUP(ml_svm);
    FLEXT_SETUP(ml_dtw);
    FLEXT_SETUP(ml_hmm);
    FLEXT_SETUP(ml_mlp);
    FLEXT_SETUP(ml_linreg);
    FLEXT_SETUP(ml_logreg);
    FLEXT_SETUP(ml_peak);
}

#pragma mark - Global constants

const t_symbol *ml_base::s_train = flext::MakeSymbol("train");
const t_symbol *ml_base::s_clear = flext::MakeSymbol("clear");
const t_symbol *ml_base::s_load = flext::MakeSymbol("load");
const t_symbol *ml_base::s_save = flext::MakeSymbol("save");
const t_symbol *ml_base::s_probs = flext::MakeSymbol("probs");
const t_symbol *ml_base::s_error = flext::MakeSymbol("error");
    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
