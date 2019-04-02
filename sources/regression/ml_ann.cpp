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

#include <unordered_map>

namespace ml
{
    const std::string object_name = ML_NAME_PREFIX "ann";
        
    typedef enum ann_layer_
    {
        LAYER_INPUT,
        LAYER_HIDDEN,
        LAYER_OUTPUT,
        ANN_NUM_LAYERS
    }
    ann_layer;
    
    GRT::Neuron::Type get_grt_neuron_type(int type)
    {
        if (type >= GRT::Neuron::Type::NUMBER_OF_ACTIVATION_FUNCTIONS)
        {
            throw grt_type_exception();
        }
        return static_cast<GRT::Neuron::Type>(type);
    }
    
    
    class ann : ml
    {
        FLEXT_HEADER_S(ann, ml, setup);
        
    public:
        ann()
        :
        num_hidden_neurons(defaults::num_hidden_neurons),
        input_activation_function((GRT::Neuron::Type)grt_ann.getInputLayerActivationFunction()),
        hidden_activation_function((GRT::Neuron::Type)grt_ann.getHiddenLayerActivationFunction()),
        output_activation_function((GRT::Neuron::Type)grt_ann.getOutputLayerActivationFunction()),
        probs(false)
        {
            post("Artificial Neural Network (MLP) based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            
            regression_data.setInputAndTargetDimensions(defaults::num_input_dimensions, defaults::num_output_dimensions);
            classification_data.setNumDimensions(defaults::num_input_dimensions);
            
            grt_ann.setMinChange(1.0e-2);
            set_scaling(defaults::scaling);
        }
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDMETHOD_(c, 0, "error", error);
            
            FLEXT_CADDATTR_SET(c, "mode", set_mode);
            FLEXT_CADDATTR_SET(c, "num_outputs", set_num_outputs);
            FLEXT_CADDATTR_SET(c, "num_hidden", set_num_hidden);
            FLEXT_CADDATTR_SET(c, "min_epochs", set_min_epochs);
            FLEXT_CADDATTR_SET(c, "max_epochs", set_max_epochs);
            FLEXT_CADDATTR_SET(c, "min_change", set_min_change);
            FLEXT_CADDATTR_SET(c, "training_rate", set_training_rate);
            FLEXT_CADDATTR_SET(c, "momentum", set_momentum);
            FLEXT_CADDATTR_SET(c, "gamma", set_gamma);
            FLEXT_CADDATTR_SET(c, "null_rejection", set_null_rejection);
            FLEXT_CADDATTR_SET(c, "null_rejection_coeff", set_null_rejection_coeff);
            FLEXT_CADDATTR_SET(c, "input_activation_function", set_input_activation_function);
            FLEXT_CADDATTR_SET(c, "hidden_activation_function", set_hidden_activation_function);
            FLEXT_CADDATTR_SET(c, "output_activation_function", set_output_activation_function);
            FLEXT_CADDATTR_SET(c, "rand_training_iterations", set_rand_training_iterations);
            FLEXT_CADDATTR_SET(c, "use_validation_set", set_use_validation_set);
            FLEXT_CADDATTR_SET(c, "validation_set_size", set_validation_set_size);
            FLEXT_CADDATTR_SET(c, "randomize_training_order", set_randomise_training_order);
            FLEXT_CADDATTR_SET(c, "probs", set_probs);

            FLEXT_CADDATTR_GET(c, "mode", get_mode);
            FLEXT_CADDATTR_GET(c, "num_outputs", get_num_outputs);
            FLEXT_CADDATTR_GET(c, "num_hidden", get_num_hidden);
            FLEXT_CADDATTR_GET(c, "max_epochs", get_max_epochs);
            FLEXT_CADDATTR_GET(c, "min_change", get_min_change);
            FLEXT_CADDATTR_GET(c, "training_rate", get_training_rate);
            FLEXT_CADDATTR_GET(c, "momentum", get_momentum);
            FLEXT_CADDATTR_GET(c, "gamma", get_gamma);
            FLEXT_CADDATTR_GET(c, "null_rejection", get_null_rejection);
            FLEXT_CADDATTR_GET(c, "null_rejection_coeff", get_null_rejection_coeff);
            FLEXT_CADDATTR_GET(c, "input_activation_function", get_input_activation_function);
            FLEXT_CADDATTR_GET(c, "hidden_activation_function", get_hidden_activation_function);
            FLEXT_CADDATTR_GET(c, "output_activation_function", get_output_activation_function);
            FLEXT_CADDATTR_GET(c, "rand_training_iterations", get_rand_training_iterations);
            FLEXT_CADDATTR_GET(c, "use_validation_set", get_use_validation_set);
            FLEXT_CADDATTR_GET(c, "validation_set_size", get_validation_set_size);
            FLEXT_CADDATTR_GET(c, "randomize_training_order", get_randomise_training_order);
            FLEXT_CADDATTR_GET(c, "probs", get_probs);

            DefineHelp(c, object_name.c_str());
        }
        
        void add(int argc, const t_atom *argv);
        void clear();
        void train();
        void map(int argc, const t_atom *argv);
        void error();
        
        // Flext attribute setters
        void set_mode(int mode);
        void set_num_outputs(int num_outputs);
        void set_num_hidden(int num_hidden);
        void set_min_epochs(int min_epochs);
        void set_max_epochs(int max_epochs);
        void set_min_change(float min_change);
        void set_training_rate(float training_rate);
        void set_momentum(float momentum); //
        void set_gamma(float gamma);
        void set_null_rejection(bool null_rejection);
        void set_null_rejection_coeff(float null_rejection_coeff);
        void set_input_activation_function(int activation_function);
        void set_hidden_activation_function(int activation_function);
        void set_output_activation_function(int activation_function);
        void set_rand_training_iterations(int rand_training_iterations);
        void set_use_validation_set(bool use_validation_set);
        void set_validation_set_size(int validation_set_size);
        void set_randomise_training_order(bool randomise_training_order);
        void set_probs(bool probs);

        // Flext attribute getters
        void get_mode(int &mode) const;
        void get_num_outputs(int &num_outputs) const;
        void get_num_hidden(int &num_hidden) const;
        void get_min_epochs(int &min_epochs) const;
        void get_max_epochs(int &max_epochs) const;
        void get_min_change(float &min_change) const;
        void get_training_rate(float &training_rate) const;
        void get_momentum(float &momentum) const; //
        void get_gamma(float &gamma) const;
        void get_null_rejection(bool &null_rejection) const;
        void get_null_rejection_coeff(float &null_rejection_coeff) const;
        void get_input_activation_function(int &activation_function) const;
        void get_hidden_activation_function(int &activation_function) const;
        void get_output_activation_function(int &activation_function) const;
        void get_rand_training_iterations(int &rand_training_iterations) const;
        void get_use_validation_set(bool &use_validation_set) const;
        void get_validation_set_size(int &validation_set_size) const;
        void get_randomise_training_order(bool &randomise_training_order) const;
        void get_probs(bool &probs) const;

        // Implement pure virtual methods
        GRT::MLBase &get_MLBase_instance();
        const GRT::MLBase &get_MLBase_instance() const;
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        void set_activation_function(int activation_function, ann_layer layer);
        int get_index_for_class(int classID);
        int get_class_id_for_index(int index);
        void clear_index_maps();
        
        // Flext method wrappers
        FLEXT_CALLBACK(error);

        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_mode, set_mode);
        FLEXT_CALLVAR_I(get_num_outputs, set_num_outputs);
        FLEXT_CALLVAR_I(get_num_hidden, set_num_hidden);
        FLEXT_CALLVAR_I(get_min_epochs, set_min_epochs);
        FLEXT_CALLVAR_I(get_max_epochs, set_max_epochs);
        FLEXT_CALLVAR_F(get_min_change, set_min_change);
        FLEXT_CALLVAR_F(get_training_rate, set_training_rate);
        FLEXT_CALLVAR_F(get_momentum, set_momentum);
        FLEXT_CALLVAR_F(get_gamma, set_gamma);
        FLEXT_CALLVAR_B(get_null_rejection, set_null_rejection);
        FLEXT_CALLVAR_F(get_null_rejection_coeff, set_null_rejection_coeff);
        FLEXT_CALLVAR_I(get_input_activation_function, set_input_activation_function);
        FLEXT_CALLVAR_I(get_hidden_activation_function, set_hidden_activation_function);
        FLEXT_CALLVAR_I(get_output_activation_function, set_output_activation_function);
        FLEXT_CALLVAR_I(get_rand_training_iterations, set_rand_training_iterations);
        FLEXT_CALLVAR_B(get_use_validation_set, set_use_validation_set);
        FLEXT_CALLVAR_I(get_validation_set_size, set_validation_set_size);
        FLEXT_CALLVAR_B(get_randomise_training_order, set_randomise_training_order);
        FLEXT_CALLVAR_B(get_probs, set_probs);

        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::MLP grt_ann;
        GRT::UINT num_hidden_neurons;
        GRT::Neuron::Type input_activation_function;
        GRT::Neuron::Type hidden_activation_function;
        GRT::Neuron::Type output_activation_function;
        std::unordered_map<int, int> classLabelToIndex;
        std::unordered_map<int, int> indexToClassLabel;
        
        bool probs;
    };
    
    // Flext attribute setters
    void ann::set_mode(int mode)
    {
        if (mode > NUM_DATA_TYPES)
        {
            flext::error("mode must be between 0 and %d", NUM_DATA_TYPES - 1);
            return;
        }
        
        if (mode == LABELLED_CLASSIFICATION)
        {
            set_num_outputs(1);
        }
        
        set_data_type((data_type)mode);
    }
    
    void ann::set_num_outputs(int num_outputs)
    {
        int curr_num_outputs = 0;
        
        get_num_outputs(curr_num_outputs);
        
        if (num_outputs == curr_num_outputs)
        {
            return;
        }
        
        const data_type data_type = get_data_type();
        
        if (num_outputs < 0)
        {
            flext::error("number of outputs must be greater than zero");
        }
        
        if (data_type == LABELLED_CLASSIFICATION && num_outputs > 1)
        {
            flext::error("for classification mode, number of outputs must be 1, for multidimensional output switch mode to %d", LABELLED_REGRESSION);
            return;
        }
        
        if (data_type == LABELLED_REGRESSION)
        {
            bool success = regression_data.setInputAndTargetDimensions(regression_data.getNumInputDimensions(), num_outputs);
           
            if (success == false)
            {
                flext::error("unable to set input and target dimensions");
                return;
            }
        }
    }
    
    void ann::set_num_hidden(int num_hidden)
    {
        this->num_hidden_neurons = num_hidden;
    }
    
    void ann::set_min_epochs(int min_epochs)
    {
        bool success = grt_ann.setMinNumEpochs(min_epochs);
        
        if (success == false)
        {
            flext::error("unable to set min_epochs, hint: should be greater than 0");
        }
    }

    void ann::set_max_epochs(int max_epochs)
    {
        grt_ann.setMaxNumEpochs(max_epochs);
    }
    
    void ann::set_min_change(float min_change)
    {
        bool success = grt_ann.setMinChange(min_change);
        
        if (success == false)
        {
            flext::error("unable to set min_change, hint: should be greater than 0");
        }
    }
    
    void ann::set_training_rate(float training_rate)
    {
        bool success = grt_ann.setTrainingRate(training_rate);
        
        if (success == false)
        {
            flext::error("unable to set training_rate, hint: should be between 0-1");
        }
    }
    
    void ann::set_momentum(float momentum)
    {
        bool success = grt_ann.setMomentum(momentum);
        
        if (success == false)
        {
            flext::error("unable to set momentum, hint: should be between 0-1");
        }
    }
    
    void ann::set_gamma(float gamma)
    {
        bool success = grt_ann.setGamma(gamma);
        
        if (success == false)
        {
            flext::error("unable to set gamma");
        }
    }

    void ann::set_null_rejection(bool null_rejection)
    {
        bool success = grt_ann.setNullRejection(null_rejection);
        
        if (success == false)
        {
            flext::error("unable to set null_rejection");
        }
    }

    void ann::set_null_rejection_coeff(float null_rejection_coeff)
    {
        bool success = grt_ann.setNullRejectionCoeff(null_rejection_coeff);
        
        if (success == false)
        {
            flext::error("unable to set null_rejection_coeff, hint: should be greater than 0");
        }
    }
    
    void ann::set_activation_function(int activation_function, ann_layer layer)
    {
        GRT::Neuron::Type activation_function_ = GRT::Neuron::Type::LINEAR;
        
        try
        {
            activation_function_ = get_grt_neuron_type(activation_function);
        }
        catch (std::exception& e)
        {
            flext::error(e.what());
            return;
        }
        
        if (grt_ann.validateActivationFunction(activation_function_) == false)
        {
            flext::error("activation function %d is invalid, hint should be between 0-%d", activation_function, GRT::Neuron::NUMBER_OF_ACTIVATION_FUNCTIONS - 1);
            return;
        }
        
        switch (layer)
        {
            case LAYER_INPUT:
                input_activation_function = activation_function_;
                break;
            case LAYER_HIDDEN:
                hidden_activation_function = activation_function_;
                break;
            case LAYER_OUTPUT:
                output_activation_function = activation_function_;
                break;
            default:
                ml::error("no activation function for layer: " + std::to_string(layer));
                return;
        }
        post("activation function set to " + grt_ann.activationFunctionToString(activation_function_));
    }
    
    // adds index if it doesn't exist
    int ann::get_index_for_class(int classLabel)
    {
        const int count = classLabelToIndex.count(classLabel);
        
        if (count == 1)
        {
            return classLabelToIndex.at(classLabel);
        }
        else if (count != 0)
        {
            assert(false);
        }
        
        const int index = classLabelToIndex.size() + 1; // GRT labels (i.e. index) must start from 1
        classLabelToIndex[classLabel] = index;
        indexToClassLabel[index] = classLabel;
        
        return index;
    }
    
    // assumes index exists and returns -1 as a failsafe
    int ann::get_class_id_for_index(int index)
    {
        const int count = indexToClassLabel.count(index);

        if (count == 0)
        {
            assert(false);
            return -1;
        }
        
        return indexToClassLabel.at(index);
    }
    
    void ann::clear_index_maps()
    {
        indexToClassLabel.clear();
        classLabelToIndex.clear();
    }
    
    void ann::set_input_activation_function(int activation_function)
    {
        set_activation_function(activation_function, LAYER_INPUT);
    }
    
    void ann::set_hidden_activation_function(int activation_function)
    {
        set_activation_function(activation_function, LAYER_HIDDEN);
    }
    
    void ann::set_output_activation_function(int activation_function)
    {
        set_activation_function(activation_function, LAYER_OUTPUT);
    }
    
    void ann::set_rand_training_iterations(int rand_training_iterations)
    {
        bool success = grt_ann.setNumRandomTrainingIterations(rand_training_iterations);
        
        if (success == false)
        {
            flext::error("unable to set rand_training_iterations, hint: should be greater than 0");
        }
    }
    
    void ann::set_use_validation_set(bool use_validation_set)
    {
        bool success = grt_ann.setUseValidationSet(use_validation_set);
        
        if (success == false)
        {
            flext::error("unable to set use_validation_set, hint: should be 0 or 1");
        }
    }
    
    void ann::set_validation_set_size(int validation_set_size)
    {
        bool success = grt_ann.setValidationSetSize(validation_set_size);
        
        if (success == false)
        {
            flext::error("unable to set validation_set_size, hint: should be between 0-100");
        }
    }

    void ann::set_randomise_training_order(bool randomise_training_order)
    {
        bool success = grt_ann.setRandomiseTrainingOrder(randomise_training_order);
        
        if (success == false)
        {
            flext::error("unable to set randomise_training_order, hint: should be 0 or 1");
        }
    }
    
    void ann::set_probs(bool probs)
    {
        this->probs = probs;
    }
    
    // Flext attribute getters
    void ann::get_mode(int &mode) const
    {
        mode = get_data_type();
    }
    
    void ann::get_num_outputs(int &num_outputs) const
    {
        const data_type data_type = get_data_type();
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            num_outputs = defaults::num_output_dimensions;
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            num_outputs = regression_data.getNumTargetDimensions();
        }
    }
    
    void ann::get_num_hidden(int &num_hidden) const
    {
        num_hidden = this->num_hidden_neurons;
    }
    
    void ann::get_min_epochs(int &min_epochs) const
    {
        min_epochs = grt_ann.getMaxNumEpochs();
    }
    
    void ann::get_max_epochs(int &max_epochs) const
    {
        max_epochs = grt_ann.getMaxNumEpochs();
    }

    void ann::get_min_change(float &min_change) const
    {
        min_change = grt_ann.getMinChange();
    }
    
    void ann::get_training_rate(float &training_rate) const
    {
        training_rate = grt_ann.getTrainingRate();
    }
    
    void ann::get_momentum(float &momentum) const
    {
        momentum = grt_ann.getMomentum();
    }
    
    void ann::get_gamma(float &gamma) const
    {
        gamma = grt_ann.getGamma();
    }
    
    void ann::get_null_rejection(bool &null_rejection) const
    {
        null_rejection = grt_ann.getNullRejectionEnabled();
    }
    
    void ann::get_null_rejection_coeff(float &null_rejection_coeff) const
    {
        null_rejection_coeff = grt_ann.getNullRejectionCoeff();
    }
    
    void ann::get_input_activation_function(int &activation_function) const
    {
        activation_function = input_activation_function;
    }
    
    void ann::get_hidden_activation_function(int &activation_function) const
    {
        activation_function = hidden_activation_function;
    }
    
    void ann::get_output_activation_function(int &activation_function) const
    {
        activation_function = output_activation_function;
    }
    
    void ann::get_rand_training_iterations(int &rand_training_iterations) const
    {
        rand_training_iterations = grt_ann.getNumRandomTrainingIterations();
    }

    void ann::get_use_validation_set(bool &use_validation_set) const
    {
        use_validation_set = grt_ann.getUseValidationSet();
    }
    
    void ann::get_validation_set_size(int &validation_set_size) const
    {
        validation_set_size = grt_ann.getValidationSetSize();
    }
    
    void ann::get_randomise_training_order(bool &randomise_training_order) const
    {
        randomise_training_order = grt_ann.getRandomiseTrainingOrder();
    }
    
    void ann::get_probs(bool &probs) const
    {
        probs = this->probs;
    }
    
    // Methods
    // NOTE: ANN is special since it supports both regression and classification, we therefore override these methods
    void ann::train()
    {
        const data_type data_type = get_data_type();
        
        GRT::UINT numSamples = data_type == LABELLED_CLASSIFICATION ? classification_data.getNumSamples() : regression_data.getNumSamples();
        
        if (numSamples == 0)
        {
            flext::error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        
        if (data_type == LABELLED_CLASSIFICATION)
        {
            grt_ann.init(
                     classification_data.getNumDimensions(),
                     num_hidden_neurons,
                     classification_data.getNumClasses(),
                     input_activation_function,
                     hidden_activation_function,
                     output_activation_function
                     );
            success = grt_ann.train(classification_data);
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            grt_ann.init(
                     regression_data.getNumInputDimensions(),
                     num_hidden_neurons,
                     regression_data.getNumTargetDimensions(),
                     input_activation_function,
                     hidden_activation_function,
                     output_activation_function
                     );
            success = grt_ann.train(regression_data);
        }

        if (!success)
        {
            flext::error("training failed");
        }
        
        t_atom a_success;
        
        SetInt(a_success, success);
        ToOutAnything(1, get_s_train(), 1, &a_success);
    }
    
    void ann::add(int argc, const t_atom *argv)
    {
        if (get_data_type() != data_type::LABELLED_CLASSIFICATION)
        {
            ml::add(argc, argv);
            return;
        }
        
        // work around a bug in GRT where class labels must be contigious
        if (argc < 2)
        {
            flext::error("invalid input length, must contain at least 2 values");
            return;
        }
        
        GRT::UINT numInputDimensions = classification_data.getNumDimensions();
        GRT::UINT numOutputDimensions = 1;
        GRT::UINT combinedVectorSize = numInputDimensions + numOutputDimensions;
        
        if ((unsigned)argc != combinedVectorSize)
        {
            numInputDimensions = argc - numOutputDimensions;
            
            if (numInputDimensions < 1)
            {
                flext::error(std::string("invalid input length, expected at least " + std::to_string(numOutputDimensions + 1)).c_str());
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
        
        GRT::UINT label = get_index_for_class((GRT::UINT)targetVector[0]);
        
        assert(label > 0);
        
//        if ((double)label != targetVector[0])
//        {
//            flext::error("class label must be a positive integer");
//            return;
//        }
//
//        if (label == 0)
//        {
//            flext::error("class label must be non-zero");
//            return;
//        }
        
        classification_data.addSample(label, inputVector);
    }

    void ann::clear()
    {
        grt_ann.clear();
        ml::clear();
        clear_index_maps();
    }
        
    void ann::map(int argc, const t_atom *argv)
    {
        const data_type data_type = get_data_type();

        GRT::UINT numSamples = data_type == LABELLED_CLASSIFICATION ? classification_data.getNumSamples() : regression_data.getNumSamples();

        if (numSamples == 0)
        {
            flext::error("no observations added, use 'add' to add training data");
            return;
        }

        if (grt_ann.getTrained() == false)
        {
            flext::error("model has not been trained, use 'train' to train the model");
            return;
        }
        
        GRT::UINT numInputNeurons = grt_ann.getNumInputNeurons();
        GRT::VectorDouble query(numInputNeurons);
        
        if (argc < 0 || (unsigned)argc != numInputNeurons)
        {
            flext::error("invalid input length, expected %d, got %d", numInputNeurons, argc);
        }

        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = grt_ann.predict(query);
        
        if (success == false)
        {
            flext::error("unable to map input");
            return;
        }
        
        if (grt_ann.getClassificationModeActive())
        {
            const GRT::VectorDouble likelihoods = grt_ann.getClassLikelihoods();
            const GRT::Vector<GRT::UINT> labels = classification_data.getClassLabels();
            const GRT::UINT predicted = grt_ann.getPredictedClassLabel();
            const GRT::UINT classification = predicted == 0 ? 0 : get_class_id_for_index(predicted);
            
            if (likelihoods.size() != labels.size())
            {
                flext::error("labels / likelihoods size mismatch");
            }
            else if (probs)
            {
                AtomList probs_list;

                for (unsigned count = 0; count < labels.size(); ++count)
                {
                    t_atom label_a;
                    t_atom likelihood_a;
                    
                    SetFloat(likelihood_a, static_cast<float>(likelihoods[count]));
                    SetInt(label_a, get_class_id_for_index(labels[count]));
                    
                    probs_list.Append(label_a);
                    probs_list.Append(likelihood_a);
                }
                ToOutAnything(1, get_s_probs(), probs_list);
            }
                 
            ToOutInt(0, classification);
        }
        else if (grt_ann.getRegressionModeActive())
        {
            GRT::VectorDouble regression_data = grt_ann.getRegressionData();
            GRT::VectorDouble::size_type numOutputDimensions = regression_data.size();
            
            if (numOutputDimensions != grt_ann.getNumOutputNeurons())
            {
                flext::error("invalid output dimensions: %d", numOutputDimensions);
                return;
            }
            
            AtomList result;
            
            for (uint32_t index = 0; index < numOutputDimensions; ++index)
            {
                t_atom value_a;
                double value = regression_data[index];
                SetFloat(value_a, value);
                result.Append(value_a);
            }
            
            ToOutList(0, result);
        }
    }
    
    // Methods
    
    void ann::error()
    {
        if (!grt_ann.getTrained())
        {
            flext::error("model not yet trained, send the \"train\" message to train");
            return;
        }
                
        float error_f = grt_ann.getTrainingError();
        t_atom error_a;
        
        SetFloat(error_a, error_f);
        
        ToOutAnything(0, get_s_error(), 1, &error_a);
                      
    }
    
    // Implement pure virtual methods
    GRT::MLBase &ann::get_MLBase_instance()
    {
        return grt_ann;
    }
    
    const GRT::MLBase &ann::get_MLBase_instance() const
    {
        return grt_ann;
    }
    
    bool ann::read_specialised_dataset(std::string &path)
    {
        bool success = false;
        
        success = classification_data.loadDatasetFromFile(path);
        
        if (success)
        {
            set_data_type(LABELLED_CLASSIFICATION);
            return success;
        }
        
        success = regression_data.loadDatasetFromFile(path);
        
        if (success)
        {
            set_data_type(LABELLED_REGRESSION);
        }
        
        return success;
        
    }
    
    bool ann::write_specialised_dataset(std::string &path) const
    {
        const data_type data_type = get_data_type();

        if (data_type == LABELLED_CLASSIFICATION)
        {
            return classification_data.saveDatasetToFile(path);
        }
        else if (data_type == LABELLED_REGRESSION)
        {
            return regression_data.saveDatasetToFile(path);
        }
        
        flext::error("unable to write dataset, invalid data type: %d", data_type);
        
        return false;
    }
        
    typedef class ann ml0x2eann;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), ann);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2eann);
#endif
    
} //namespace ml

