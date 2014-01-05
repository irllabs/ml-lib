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
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        success = labelledClassificationData.setNumDimensions(num_inputs);
    }
    else if (mode == LABELLED_REGRESSION)
    {
        success = labelledRegressionData.setInputAndTargetDimensions(num_inputs, labelledRegressionData.getNumTargetDimensions());
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = labelledTimeSeriesClassificationData.setNumDimensions(num_inputs);
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        success = unlabelledClassificationData.setNumDimensions(num_inputs);
    }
    
    if (success == false)
    {
        error("unable to set input or target dimensions");
        return;
    }
}
    
void ml_base::init()
{
    // TODO: eventually mlBase should be a reference
    if (mlBase != NULL)
    {
        grt_version = mlBase->getGRTVersion();
    }

    currentLabel = 0;
    estimates = false;
    AddOutAnything("general purpose outlet");
    set_enable_scaling(true);
}

ml_base::ml_base()
    : mode(defaultMode)
{
    mlBase = NULL;
    init();
}
    
ml_base::ml_base(GRT::MLBase *mlBase)
    : mode(defaultMode)
{
    this->mlBase = mlBase;
    init();
}
    
ml_base::ml_base(GRT::MLBase *mlBase, mlp_data_type data_type)
    : mode(data_type)
{
    this->mlBase = mlBase;
    init();
}
    
void ml_base::set_enable_scaling(bool enable_scaling)
{
    bool success = false;
    
    // TODO: eventually mlBase should be a reference
    if (mlBase != NULL)
    {
        success = mlBase->enableScaling(enable_scaling);
    }
    
    if (success == false)
    {
        error("unable to set enable_scaling, hint: should be 0 or 1");
    }
}

void ml_base::get_enable_scaling(bool &enable_scaling) const
{
    if (mlBase != NULL)
    {
        enable_scaling = mlBase->getScalingEnabled();
    }
}

void ml_base::set_enable_estimates(bool enable_estimates)
{
    estimates = enable_estimates;
}

void ml_base::get_enable_estimates(bool &enable_estimates) const
{
    enable_estimates = estimates;
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
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        numInputDimensions = labelledClassificationData.getNumDimensions();
    }
    else if (mode == LABELLED_REGRESSION)
    {
        numInputDimensions = labelledRegressionData.getNumInputDimensions();
        numOutputDimensions = labelledRegressionData.getNumTargetDimensions();
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        numInputDimensions = labelledTimeSeriesClassificationData.getNumDimensions();
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        numInputDimensions = unlabelledClassificationData.getNumDimensions();
    }
    else
    {
        error("unhandled mode: %d", mode);
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
    
    if (mode == LABELLED_CLASSIFICATION || mode == LABELLED_TIME_SERIES_CLASSIFICATION)
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
        
        if (mode == LABELLED_CLASSIFICATION)
        {
            labelledClassificationData.addSample((GRT::UINT)targetVector[0], inputVector);
        }
        else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            if (recording)
            {
                currentLabel = label;
                timeSeriesData.push_back(inputVector);
            }
            else
            {
                error("cannot add time series data if recording is off, send 'record 1' to start recording");
            }
        }
    }
    else if (mode == LABELLED_REGRESSION)
    {
        labelledRegressionData.addSample(inputVector, targetVector);
    }
}
    
void ml_base::record(bool state)
{
    if (mode != LABELLED_TIME_SERIES_CLASSIFICATION)
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
    
    post("recording: %s", state == 1 ? "on" : "off");
}

void ml_base::save(const t_symbol *path) const
{
    if (labelledRegressionData.getNumSamples() == 0 && labelledRegressionData.getNumSamples() == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    std::string file_path = get_symbol_as_string(path);
    
    if (file_path.empty())
    {
        error("path string is empty");
        return;
    }
    
    bool success = false;
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        success = labelledClassificationData.saveDatasetToFile(file_path);
    }
    else if (mode == LABELLED_REGRESSION)
    {
        success = labelledRegressionData.saveDatasetToFile(file_path);
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = labelledTimeSeriesClassificationData.saveDatasetToFile(file_path);
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        success = unlabelledClassificationData.saveDatasetToFile(file_path);
    }
    
    if (!success)
    {
        error("unable to save training data to path: %s", file_path.c_str());
    }
}

void ml_base::load(const t_symbol *path)
{
    std::string file_path = get_symbol_as_string(path);
    
    if (file_path.empty())
    {
        error("path string is empty");
        return;
    }
    
    bool success = false;
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        success = labelledClassificationData.loadDatasetFromFile(file_path);
    }
    else if (mode == LABELLED_REGRESSION)
    {
        success = labelledRegressionData.loadDatasetFromFile(file_path);
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = labelledTimeSeriesClassificationData.loadDatasetFromFile(file_path);
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        success = unlabelledClassificationData.loadDatasetFromFile(file_path);
    }
    
    if (!success)
    {
        error("unable to load training data from path: %s", file_path.c_str());
    }
}
    
void ml_base::clear()
{
    t_atom status;
    SetBool(status, true);
    
    labelledRegressionData.clear();
    labelledClassificationData.clear();
    labelledTimeSeriesClassificationData.clear();
    unlabelledClassificationData.clear();
    
    ToOutAnything(1, s_cleared, 1, &status);
}
    
void ml_base::train()
{
    error("function not implemented");
}

void ml_base::classify(int argc, const t_atom *argv)
{
    error("function not implemented");
}
    
void ml_base::usage()
{
    error("function not implemented");
}
    
void ml_base::setup(t_classid c)
{
    FLEXT_CADDATTR_SET(c, "enable_scaling", set_enable_scaling);
    FLEXT_CADDATTR_SET(c, "enable_estimates", set_enable_estimates);
    
    FLEXT_CADDATTR_GET(c, "enable_scaling", get_enable_scaling);
    FLEXT_CADDATTR_GET(c, "enable_estimates", get_enable_estimates);
    
    FLEXT_CADDMETHOD_(c, 0, "add", add);
    FLEXT_CADDMETHOD_(c, 0, "record", record);
    FLEXT_CADDMETHOD_(c, 0, "save", save);
    FLEXT_CADDMETHOD_(c, 0, "load", load);
    FLEXT_CADDMETHOD_(c, 0, "train", train);
    FLEXT_CADDMETHOD_(c, 0, "clear", clear);
    FLEXT_CADDMETHOD_(c, 0, "classify", classify);
    FLEXT_CADDMETHOD_(c, 0, "help", usage);
}
    
#pragma mark - ml_classification_base implementation
    
// Attribute Setters
void ml_classification_base::set_null_rejection(bool null_rejection)
{
    bool success = classifier->enableNullRejection(null_rejection);
    
    if (!success)
    {
        error("unable to enable NULL rejection");
    }
}
    
void ml_classification_base::set_null_rejection_coeff(float null_rejection_coeff)
{
    bool success = classifier->setNullRejectionCoeff(null_rejection_coeff);
    
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
    null_rejection_coeff = classifier->getNullRejectionCoeff();
}
    
// Methods
    
bool ml_classification_base::get_num_samples() const
{
    GRT::UINT numSamples = 0;
    
    if (mode == LABELLED_REGRESSION)
    {
        labelledRegressionData.getNumSamples();
    }
    else if (mode == LABELLED_CLASSIFICATION)
    {
        numSamples = labelledClassificationData.getNumSamples();
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        numSamples = labelledTimeSeriesClassificationData.getNumSamples();
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        numSamples = unlabelledClassificationData.getNumSamples();
    }
    
    return numSamples;
}

void ml_classification_base::train()
{
    GRT::UINT numSamples = get_num_samples();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    bool success = false;
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        success = classifier->train(labelledClassificationData);
    }
    else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        success = classifier->train(labelledTimeSeriesClassificationData);
    }
    else if (mode == UNLABELLED_CLASSIFICATION)
    {
        success = classifier->train(unlabelledClassificationData);
    }
    
    if (!success)
    {
        error("training failed");
        return;
    }
    
    t_atom a_num_classes;
    
    SetInt(a_num_classes, defaultNumOutputDimensions);
    ToOutAnything(1, s_train, 1, &a_num_classes);
}

void ml_classification_base::clear()
{
    classifier->clear();
    ml_base::clear();
}

void ml_classification_base::classify(int argc, const t_atom *argv)
{
    GRT::UINT numSamples = get_num_samples();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    if (classifier->getTrained() == false)
    {
        error("model has not been trained, use 'train' to train the model");
        return;
    }
    
    if (classifier->getNumClasses() == 0)
    {
        error("no classes in the trained model, use 'add' to add more training data");
        return;
    }
    
    if (recording && mode != LABELLED_TIME_SERIES_CLASSIFICATION)
    {
        error("recording classification only available for time series");
        return;
    }
    
    GRT::UINT numInputFeatures = classifier->getNumInputFeatures();
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
        success = classifier->predict(timeSeriesData);
    }
    else
    {
        success = classifier->predict(query);
    }
    
    if (success == false)
    {
        error("unable to classify input");
        return;
    }
    
    if (estimates)
    {
        GRT::VectorDouble likelihoods = classifier->getClassLikelihoods();
        AtomList estimates_l;
        
        if (mode == LABELLED_CLASSIFICATION || mode == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            GRT::vector<GRT::UINT> labels;
            
            if (mode == LABELLED_CLASSIFICATION)
            {
                labels = labelledClassificationData.getClassLabels();
            }
            else if (mode == LABELLED_TIME_SERIES_CLASSIFICATION)
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
                    
                    estimates_l.Append(label_a);
                    estimates_l.Append(likelihood_a);
                }
            }
            

        }
        else if (mode == UNLABELLED_CLASSIFICATION)
        {
            for (uint16_t count = 0; count < likelihoods.size(); ++count)
            {
                t_atom likelihood_a;
                
                SetDouble(&likelihood_a, likelihoods[count]);
                estimates_l.Append(likelihood_a);
            }
        }
        
        ToOutAnything(1, s_estimates, estimates_l);
    }
    
    GRT::UINT classification = classifier->getPredictedClassLabel();
    ToOutInt(0, classification);
}

#pragma mark - ml_regression_base implementation
    
// Attribute setters
void ml_regression_base::set_max_iterations(int max_iterations)
{
    regressifier->setMaxNumEpochs(max_iterations);
}

void ml_regression_base::set_min_change(float min_change)
{
    bool success = regressifier->setMinChange(min_change);
    
    if (success == false)
    {
        error("unable to set min_change, hint: should be greater than 0");
    }
}

void ml_regression_base::set_training_rate(float training_rate)
{
    bool success = regressifier->setLearningRate(training_rate);
    
    if (success == false)
    {
        error("unable to set training_rate, hint: should be between 0-1");
    }
}

// Attribute getters
void ml_regression_base::get_max_iterations(int &max_iterations) const
{
    max_iterations = regressifier->getMaxNumEpochs();
}

void ml_regression_base::get_min_change(float &min_change) const
{
    error("function not implemented");
    //        min_change = regressifier->getMinChange();
}

void ml_regression_base::get_training_rate(float &training_rate) const
{
    training_rate = regressifier->getLearningRate();
}

// Methods
void ml_regression_base::train()
{
    GRT::UINT numSamples = labelledRegressionData.getNumSamples();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    bool success = false;
    success = regressifier->train(labelledRegressionData);
    
    if (!success)
    {
        error("training failed");
        return;
    }
    
    t_atom a_num_classes;
    
    SetInt(a_num_classes, defaultNumOutputDimensions);
    ToOutAnything(1, s_train, 1, &a_num_classes);
}

void ml_regression_base::clear()
{
    regressifier->clear();
    ml_base::clear();
}

void ml_regression_base::classify(int argc, const t_atom *argv)
{
    GRT::UINT numSamples = labelledRegressionData.getNumSamples();
    
    if (numSamples == 0)
    {
        error("no observations added, use 'add' to add training data");
        return;
    }
    
    if (regressifier->getTrained() == false)
    {
        error("model has not been trained, use 'train' to train the model");
        return;
    }
    
    GRT::UINT numInputNeurons = regressifier->getNumInputFeatures();
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
    
    bool success = regressifier->predict(query);
    
    if (success == false)
    {
        error("unable to classify input");
        return;
    }
    
    GRT::VectorDouble regressionData = regressifier->getRegressionData();
    GRT::VectorDouble::size_type numOutputDimensions = regressionData.size();
    
    if (numOutputDimensions != regressifier->getNumOutputDimensions())
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
    post("enable_scaling:\tinteger (0 or 1) determining whether or not values are automatically scaled (default 1)");
    post("%s", ML_POST_SEP);
    post("Methods:");
    post("%s", ML_POST_SEP);
    post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
    post("save:\tsave training examples, first argument gives path to save location");
    post("load:\tload training examples, first argument gives path to the load location");
    post("train:\ttrain the MLP based on vectors added with 'add'");
    post("clear:\tclear the stored training data and model");
    post("classify:\tgive the regression value for the input feature vector");
    post("help:\tpost this usage statement to the console");
    post("%s", ML_POST_SEP);
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
    FLEXT_SETUP(ml_mlp);
    FLEXT_SETUP(ml_regression_linear);
    FLEXT_SETUP(ml_regression_logistic);
    FLEXT_SETUP(ml_peak);
}

#pragma mark - Global constants

const t_symbol *ml_base::s_train = flext::MakeSymbol("train");
const t_symbol *ml_base::s_cleared = flext::MakeSymbol("cleared");
const t_symbol *ml_base::s_loaded = flext::MakeSymbol("loaded");
const t_symbol *ml_base::s_saved = flext::MakeSymbol("saved");
const t_symbol *ml_base::s_estimates = flext::MakeSymbol("estimates");

    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
