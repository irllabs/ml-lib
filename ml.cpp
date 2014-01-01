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
    
    if (success == false)
    {
        error("unable to set input or target dimensions");
        return;
    }
}
    
void ml_base::init()
{
    AddOutAnything("general purpose outlet");
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
    bool success = mlBase->enableScaling(enable_scaling);
    
    if (success == false)
    {
        error("unable to set randomise_training_order, hint: should be 0 or 1");
    }
}

void ml_base::get_enable_scaling(bool &enable_scaling) const
{
    enable_scaling = mlBase->getScalingEnabled();
}


void ml_base::add(int argc, const t_atom *argv)
{
    if (argc < 2)
    {
        error("invalid input length, must contain at least 2 values");
        return;
    }
    
    GRT::UINT numInputDimensions = mode == LABELLED_CLASSIFICATION ? labelledClassificationData.getNumDimensions() : labelledRegressionData.getNumInputDimensions();
    GRT::UINT numOutputDimensions = mode == LABELLED_CLASSIFICATION ? 1 : labelledRegressionData.getNumTargetDimensions();
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
    
    if (mode == LABELLED_CLASSIFICATION)
    {
        GRT::UINT label = (GRT::UINT)targetVector[0];
        
        if ((double)label != targetVector[0])
        {
            error("class label must be an integer");
            return;
        }
        
        if (label == 0)
        {
            error("class label must be non-zero");
            return;
        }
        labelledClassificationData.addSample((GRT::UINT)targetVector[0], inputVector);
    }
    else if (mode == LABELLED_REGRESSION)
    {
        labelledRegressionData.addSample(inputVector, targetVector);
    }
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
    FLEXT_CADDATTR_GET(c, "enable_scaling", get_enable_scaling);
    
    FLEXT_CADDMETHOD_(c, 0, "add", add);
    FLEXT_CADDMETHOD_(c, 0, "save", save);
    FLEXT_CADDMETHOD_(c, 0, "load", load);
    FLEXT_CADDMETHOD_(c, 0, "train", train);
    FLEXT_CADDMETHOD_(c, 0, "clear", clear);
    FLEXT_CADDMETHOD_(c, 0, "classify", classify);
    FLEXT_CADDMETHOD_(c, 0, "help", usage);
}

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
}
    
const t_symbol *ml_base::s_train = flext::MakeSymbol("train");
const t_symbol *ml_base::s_cleared = flext::MakeSymbol("cleared");
const t_symbol *ml_base::s_loaded = flext::MakeSymbol("loaded");
const t_symbol *ml_base::s_saved = flext::MakeSymbol("saved");
const t_symbol *ml_base::s_estimates = flext::MakeSymbol("estimates");

    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
