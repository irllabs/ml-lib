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

#include "ml_ml.h"
#include "ml_defaults.h"

#include <string>

namespace ml
{
    static const std::string k_model_extension = ".model";
    static const std::string k_data_extension = ".data";
    const std::string get_symbol_as_string(const t_symbol *symbol);
    const std::string get_file_extension_from_path(const std::string &path); // can be a full path or just file name
    void get_data_file_paths(const std::string &supplied_path, std::string &data_path, std::string &model_path);
    bool check_empty_with_error(std::string &string);

    const t_symbol *get_s_train()
    { 		
    	static const t_symbol *s_train = flext::MakeSymbol("train");
		return s_train;
	}

	const t_symbol *get_s_clear()
    { 		
    	static const t_symbol *s_clear = flext::MakeSymbol("clear");
		return s_clear;
	}

	const t_symbol *get_s_read()
    { 		
    	static const t_symbol *s_read = flext::MakeSymbol("read");
		return s_read;
	}
	
	const t_symbol *get_s_write()
    { 		
    	static const t_symbol *s_write = flext::MakeSymbol("write");
		return s_write;
	}
	
	const t_symbol *get_s_probs()
    { 		
    	static const t_symbol *s_probs = flext::MakeSymbol("probs");
		return s_probs;
	}

	const t_symbol *get_s_error()
    { 		
    	static const t_symbol *s_error = flext::MakeSymbol("error");
		return s_error;
	}


    void init_global_symbols()
    {
	get_s_train();
	get_s_clear();
	get_s_read();
	get_s_write();
	get_s_probs();
	get_s_error();
    }
   
    ml::ml()
    : current_label(0), recording(false)
    {
        set_data_type(defaults::data_type);
        set_num_inputs(defaults::num_input_dimensions);
        AddOutAnything("general purpose outlet");
    }
    
    void ml::set_num_inputs(uint16_t num_inputs)
    {
        if (num_inputs < 0)
        {
            error("number of inputs must be greater than zero");
        }
        
        bool success = false;
        const data_type data_type = get_data_type();
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            success = classification_data.setNumDimensions(num_inputs);
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            success = regression_data.setInputAndTargetDimensions(num_inputs, regression_data.getNumTargetDimensions());
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            success = time_series_classification_data.setNumDimensions(num_inputs);
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            success = unlabelled_data.setNumDimensions(num_inputs);
        }
        
        if (success == false)
        {
            error("unable to set input or target dimensions");
            return;
        }
    }
    
    void ml::set_scaling(bool scaling)
    {
        bool success = false;
        GRT::MLBase &mlBase = get_MLBase_instance();
        
        success = mlBase.enableScaling(scaling);
        
        if (success == false)
        {
            error("unable to set scaling, hint: should be 0 or 1");
        }
    }
    
    void ml::set_max_iterations(int max_iterations)
    {
        GRT::MLBase &mlBase = get_MLBase_instance();
        mlBase.setMaxNumEpochs(max_iterations);
    }
    
    void ml::set_min_change(float min_change)
    {
        GRT::MLBase &mlBase = get_MLBase_instance();
        bool success = mlBase.setMinChange(min_change);
        
        if (success == false)
        {
            error("unable to set min_change, hint: should be greater than 0");
        }
    }
    
    void ml::set_training_rate(float training_rate)
    {
        GRT::MLBase &mlBase = get_MLBase_instance();
        bool success = mlBase.setLearningRate(training_rate);
        
        if (success == false)
        {
            error("unable to set training_rate, hint: should be between 0.01-1");
        }
    }
    
    void ml::get_scaling(bool &scaling) const
    {
        const GRT::MLBase &mlBase = get_MLBase_instance();
        
        scaling = mlBase.getScalingEnabled();
    }

    void ml::get_max_iterations(int &max_iterations) const
    {
        const GRT::MLBase &mlBase = get_MLBase_instance();
        max_iterations = mlBase.getMaxNumEpochs();
    }
    
    void ml::get_min_change(float &min_change) const
    {
        const GRT::MLBase &mlBase = get_MLBase_instance();
        min_change = mlBase.getMinChange();
    }
    
    void ml::get_training_rate(float &training_rate) const
    {
        const GRT::MLBase &mlBase = get_MLBase_instance();
        training_rate = mlBase.getLearningRate();
    }
    
    void ml::add(int argc, const t_atom *argv)
    {
        if (argc < 2)
        {
            error("invalid input length, must contain at least 2 values");
            return;
        }
        
        GRT::UINT numInputDimensions = 0;
        GRT::UINT numOutputDimensions = 1;
        const data_type data_type = get_data_type();
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            numInputDimensions = classification_data.getNumDimensions();
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            numInputDimensions = regression_data.getNumInputDimensions();
            numOutputDimensions = regression_data.getNumTargetDimensions();
        }
        else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            numInputDimensions = time_series_classification_data.getNumDimensions();
        }
        else if (data_type == UNLABELLED_CLASSIFICATION)
        {
            numInputDimensions = unlabelled_data.getNumDimensions();
        }
        else
        {
            error("unhandled data_type:" + std::to_string(data_type));
            return;
        }
        
        GRT::UINT combinedVectorSize = numInputDimensions + numOutputDimensions;
        
        if (argc < 0 || (unsigned)argc != combinedVectorSize)
        {
            numInputDimensions = argc - numOutputDimensions;
            
            if (numInputDimensions < 1)
            {
                error("invalid input length, expected at least " + std::to_string(numOutputDimensions + 1));
                return;
            }
            post("new input vector size, adjusting num_inputs to " + std::to_string(numInputDimensions));
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
                classification_data.addSample((GRT::UINT)targetVector[0], inputVector);
            }
            else if (data_type == LABELLED_TIME_SERIES_CLASSIFICATION)
            {
                if (recording)
                {
                    // allow label to be changed on-the-fly without explicitly toggling "record"
                    if (label != current_label)
                    {
                        record_(false);
                        record_(true);
                    }
                    current_label = label;
                    time_series_data.push_back(inputVector);
                }
                else
                {
                    error("cannot add time series data if recording is off, send 'record 1' to start recording");
                }
            }
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            regression_data.addSample(inputVector, targetVector);
        }
    }
    
    void ml::record_(bool state)
    {
        const data_type data_type = get_data_type();
        
        if (data_type != LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            error("record method only valid for time series data");
            return;
        }
        
        recording = state;
        
        if (recording == false && current_label != 0 && time_series_data.getNumRows() > 0)
        {
            time_series_classification_data.addSample(current_label, time_series_data);
        }
        time_series_data.clear();
        current_label = 0;
    }
    
    void ml::record(bool state)
    {
        record_(state);
        std::string record_state = recording ? "on" : "off";
        post("recording: " + record_state);
    }
    
    void ml::write(const t_symbol *path) const
    {
        bool success = false;
        t_atom a_success;
        SetInt(a_success, success);
        const data_type data_type = get_data_type();
        std::string file_path = get_symbol_as_string(path);
        const GRT::MLBase &mlBase = get_MLBase_instance();
        
        if (
            (data_type == LABELLED_REGRESSION && regression_data.getNumSamples() == 0) ||
            (data_type == LABELLED_CLASSIFICATION && classification_data.getNumSamples() == 0) ||
            (data_type == LABELLED_TIME_SERIES_CLASSIFICATION && time_series_classification_data.getNumSamples() == 0) ||
            (data_type == UNLABELLED_CLASSIFICATION && unlabelled_data.getNumSamples() == 0)
            )
        {
            error("no observations added, use 'add' to add training data");
            ToOutAnything(1, get_s_write(), 1, &a_success);
            return;
        }
        
        if (check_empty_with_error(file_path))
        {
            return;
        }
        
        std::string dataset_file_path;
        std::string model_file_path;
        
        get_data_file_paths(file_path, dataset_file_path, model_file_path);
        
        if (!dataset_file_path.empty())
        {
            success = write_specialised_dataset(dataset_file_path);
        
            if (!success)
            {
                error("unable to write training data to path: " + dataset_file_path);
            }
        }
        
        if (!model_file_path.empty())
        {
            if (mlBase.getTrained())
            {
                success = mlBase.saveModelToFile(model_file_path);
                
                if (!success)
                {
                    error("unable to write model to path: " + model_file_path);
                }
            }
            else if (get_file_extension_from_path(file_path) == k_model_extension)
            {
                error("model not trained, use 'train' to train a model");
            }
        }
       
        SetInt(a_success, success);
        ToOutAnything(1, get_s_write(), 1, &a_success);
    }
    
    void ml::read(const t_symbol *path)
    {
        bool success = false;
        t_atom a_success;
        SetInt(a_success, success);
        GRT::MLBase &mlBase = get_MLBase_instance();

        std::string file_path = get_symbol_as_string(path);
        
        if (check_empty_with_error(file_path))
        {
            return;
        }
        
        std::string dataset_file_path;
        std::string model_file_path;
        
        get_data_file_paths(file_path, dataset_file_path, model_file_path);

        if (!dataset_file_path.empty())
        {
            success = read_specialised_dataset(dataset_file_path);
            
            if (!success)
            {
                error("unable to read training data from path: " + dataset_file_path);
            }
        }
        
        if (!model_file_path.empty())
        {
            success = mlBase.loadModelFromFile(model_file_path);
            
            if (!success)
            {
                error("unable to read model from path: " + model_file_path);
            }
        }
        
        SetInt(a_success, success);
        ToOutAnything(1, get_s_read(), 1, &a_success);
    }
    
    void ml::clear()
    {
        t_atom status;
        GRT::MLBase &mlBase = get_MLBase_instance();
        
        mlBase.clear();
        
        regression_data.clear();
        classification_data.clear();
        time_series_classification_data.clear();
        unlabelled_data.clear();
        
        SetBool(status, true);
        ToOutAnything(1, get_s_clear(), 1, &status);
    }
    
    void ml::train()
    {
        error("function not implemented");
    }
    
    void ml::map(int argc, const t_atom *argv)
    {
        error("function not implemented");
    }
    
    void ml::any(const t_symbol *s, int argc, const t_atom *argv)
    {
        error("messages with the selector '" + std::string(GetString(s)) + "' are not supported");
    }
    
    void ml::usage() const
    {
        this->post(get_help_string());
    }
    
    void ml::setup(t_classid c)
    {
        init_global_symbols();

        FLEXT_CADDATTR_SET(c, "scaling", set_scaling);
        FLEXT_CADDATTR_SET(c, "max_iterations", set_max_iterations);
        FLEXT_CADDATTR_SET(c, "min_change", set_min_change);
        FLEXT_CADDATTR_SET(c, "training_rate", set_training_rate);
        
        FLEXT_CADDATTR_GET(c, "scaling", get_scaling);
        FLEXT_CADDATTR_GET(c, "max_iterations", get_max_iterations);
        FLEXT_CADDATTR_GET(c, "min_change", get_min_change);
        FLEXT_CADDATTR_GET(c, "training_rate", get_training_rate);
        
        FLEXT_CADDMETHOD(c, 0, any);
        FLEXT_CADDMETHOD_(c, 0, "add", add);
        FLEXT_CADDMETHOD_(c, 0, "record", record);
        FLEXT_CADDMETHOD_(c, 0, "write", write);
        FLEXT_CADDMETHOD_(c, 0, "read", read);
        FLEXT_CADDMETHOD_(c, 0, "train", train);
        FLEXT_CADDMETHOD_(c, 0, "clear", clear);
        FLEXT_CADDMETHOD_(c, 0, "map", map);
        FLEXT_CADDMETHOD_(c, 0, "help", usage);
    }
    
    void ml::set_data_type(data_type type)
    {
        if (type > NUM_DATA_TYPES)
        {
            error("invalid data type: %d" + std::to_string(type));
            return;
        }
        this->data_type_ = type;
    }
    
    data_type ml::get_data_type() const
    {
        return data_type_;
    }
    
    
#ifdef BUILD_AS_LIBRARY
    static void main()
    {
        flext::post("%s - machine learning library for Max and Pure Data", ML_NAME);
        flext::post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
        
        FLEXT_SETUP(svm);
        FLEXT_SETUP(adaboost);
        FLEXT_SETUP(dtw);
        FLEXT_SETUP(hmmc);
        FLEXT_SETUP(ann);
        FLEXT_SETUP(mulreg);
        FLEXT_SETUP(linreg);
        FLEXT_SETUP(logreg);
        FLEXT_SETUP(peak);
        FLEXT_SETUP(minmax);
        FLEXT_SETUP(anbc);
        FLEXT_SETUP(softmax);
        FLEXT_SETUP(randforest);
        FLEXT_SETUP(mindist);
        FLEXT_SETUP(knn);
        FLEXT_SETUP(gmm);
        FLEXT_SETUP(dtree);
        FLEXT_SETUP(zerox);
    }
#endif
    
    const std::string get_symbol_as_string(const t_symbol *symbol)
    {
        const char *c_string = flext::GetAString(symbol);
        std::string cpp_string = c_string != NULL ? c_string : "";
        
        return cpp_string;
    }
    
    const std::string get_file_extension_from_path(const std::string &path_)
    {
        std::string extension;
        std::string path = path_;
        
        size_t sep = path.find_last_of("\\/");
        
        if (sep != std::string::npos)
        {
            path = path.substr(sep + 1, path.size() - sep - 1);
        }
        
        size_t dot = path.find_last_of(".");
        
        if (dot != std::string::npos)
        {
            extension = path.substr(dot, path.size() - dot);
        }
        
        extension = extension == "." ? "" : extension;
        
        return  extension;
    }
    
    void get_data_file_paths(const std::string &supplied_path, std::string &data_path, std::string &model_path)
    {
        std::string extension = get_file_extension_from_path(supplied_path);
        
        if (extension == k_model_extension)
        {
            model_path = supplied_path;
        }
        else if (extension == k_data_extension)
        {
            data_path = supplied_path;
        }
        else
        {
            data_path = supplied_path + k_data_extension;
            model_path = supplied_path + k_model_extension;
        }
    }
    
    bool check_empty_with_error(std::string &string)
    {
        if (string.empty())
        {
            error("path string is empty");
            return true;
        }
        return false;
    }
   
} // namespace ml


#ifdef BUILD_AS_LIBRARY
FLEXT_LIB_SETUP(ml, ml::main)
#endif

