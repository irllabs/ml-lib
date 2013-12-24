/*
GRT MIT License
Copyright (c) <2012> <Nicholas Gillian, Media Lab, MIT>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
and associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#ifndef GRT_MLP_HEADER
#define GRT_MLP_HEADER

#include "Neuron.h"
#include "../../../DataStructures/LabelledRegressionData.h"
#include "../../../GestureRecognitionPipeline/Regressifier.h"

namespace GRT{

class MLP : public Regressifier{
public:
    /**
     Default Constructor
     */
    MLP();
    
    /**
     Default Destructor
     */
    virtual ~MLP();
    
    /**
     Defines how the data from the rhs MLP should be copied to this MLP
     
     @param const MLP &rhs: another instance of a MLP
     @return returns a reference to this instance of the MLP
     */
    MLP &operator=(const MLP &rhs);
    
    /**
     This is required for the Gesture Recognition Pipeline for when the pipeline.setRegressifier(...) method is called.
     It clones the data from the Base Class Regressifier pointer (which should be pointing to an MLP instance) into this instance
     
     @param Regressifier *regressifier: a pointer to the Regressifier Base Class, this should be pointing to another MLP instance
     @return returns true if the clone was successfull, false otherwise
     */
    virtual bool deepCopyFrom(const Regressifier *regressifier);
    
    /**
     This trains the MLP model, using the labelled classification data. Calling this function sets the MLP into Classification Model.
     
     @param LabelledClassificationData trainingData: the training data that will be used to train the classification model
     @return returns true if the MLP model was trained, false otherwise
     */
    virtual bool train(LabelledClassificationData trainingData);
    
    /**
     This trains the MLP model, using the labelled regression data. Calling this function sets the MLP into Regression Model.
     
     @param LabelledRegressionData trainingData: the training data that will be used to train the regression model
     @return returns true if the MLP model was trained, false otherwise
     */
    virtual bool train(LabelledRegressionData trainingData);
    
    /**
     This function either predicts the class of the input vector (if the MLP is in Classification Mode), or it performs regression using
     the MLP model.
     
     @param VectorDouble inputVector: the input vector to classify or perform regression on
     @return returns true if the prediction/regression was performed, false otherwise
     */
    virtual bool predict(VectorDouble inputVector);
    
    /**
     Clears any previous model or settings.
     
     @return returns true if the MLP was cleared, false otherwise
     */
    virtual bool clear();
    
    /**
     This function will print the model and settings to the display log.
     
     @return returns true if the model was printed succesfully, false otherwise
     */
    virtual bool print() const;
    
    /**
     This saves the trained MLP model to a file.
     This overrides the saveModelToFile function in the ML base class.
     
     @param string filename: the name of the file to save the MLP model to
     @return returns true if the model was saved successfully, false otherwise
     */
    virtual bool saveModelToFile(string filename) const;
    
    /**
     This saves the trained MLP model to a file.
     This overrides the saveModelToFile function in the ML base class.
     
     @param fstream &file: a reference to the file the MLP model will be saved to
     @return returns true if the model was saved successfully, false otherwise
     */
    virtual bool saveModelToFile(fstream &file) const;
    
    /**
     This loads a trained MLP model from a file.
     This overrides the loadModelFromFile function in the ML base class.
     
     @param string filename: the name of the file to load the MLP model from
     @return returns true if the model was loaded successfully, false otherwise
     */
    virtual bool loadModelFromFile(string filename);
    
    /**
     This loads a trained MLP model from a file.
     This overrides the loadModelFromFile function in the ML base class.
     
     @param fstream &file: a reference to the file the MLP model will be loaded from
     @return returns true if the model was loaded successfully, false otherwise
     */
    virtual bool loadModelFromFile(fstream &file);
    
    /**
     Returns the number of classes in the MLP model if the MLP is in classification mode.
     The number of classes in the model is the same as the number of output neurons.
     If the MLP is in regression mode then it will return 0.
     
     @return returns the number of classes in the MLP model if the MLP is in classification mode
     */
    UINT getNumClasses() const;
    
    /**
     Initializes the MLP for training. This should be called before the MLP is trained.
     The number of input neurons should match the number of input dimensions in your training data.
     The number of output neurons should match the number of target dimensions in your training data.
     The number of hidden units should be chosen by the user, a common rule of thumb is to set this as
     a value somewhere between the number of input neurons and the number of output neurons.
     The activation functions should be one of the Neuron ActivationFunctions enums.
     Initializaling the MLP will clear any previous model or settings.
     
     @param const UINT numInputNeurons: the number of input neurons (should match the number of input dimensions in your training data)
     @param const UINT numHiddenNeurons: the number of hidden neurons
     @param const UINT numOutputNeurons: the number of output neurons (should match the number of target dimensions in your training data)
     @param const UINT inputLayerActivationFunction: the activation function to use for the input layer. Default = Neuron::LINEAR
     @param const UINT hiddenLayerActivationFunction: the activation function to use for the input layer. Default = Neuron::LINEAR
     @param const UINT outputLayerActivationFunction: the activation function to use for the input layer. Default = Neuron::LINEAR
     @return returns true if the MLP was initialized, false otherwise
     */
    bool init(const UINT numInputNeurons,const UINT numHiddenNeurons,const UINT numOutputNeurons,
              const UINT inputLayerActivationFunction = Neuron::LINEAR,
              const UINT hiddenLayerActivationFunction = Neuron::LINEAR,
              const UINT outputLayerActivationFunction = Neuron::LINEAR);
    
    
    
    /**
     Prints the current MLP weights and coefficents to std out.
     */
    void printNetwork() const;
    
    /**
     Checks if there are any NAN values in any of the layers.
     
     @return returns true if there are any NAN values in any of the layers, false otherwise
     */
    bool checkForNAN() const;
    
    /**
     Gets a string representation of the activation function
     
     @param UINT activationFunction: the activation function you want to convert to a string
     @return returns a string representation of the activation function, returns UNKNOWN if the activation function is invalid
     */
	string activationFunctionToString(const UINT activationFunction) const;
    
    /**
     Gets the activation function value from a string.
     
     @param string activationName: the activation function as a string
     @return returns an UINT activation function
     */
	UINT activationFunctionFromString(const string activationName) const;
    
    /**
     Validates if the activationFunction is valid.
     
     @param UINT activationFunction: the activation function you want to valid
     @return returns true if the activation function is valid, false otherwise
     */
	bool validateActivationFunction(const UINT avactivationFunction) const;

	/**
     Gets the number of input neurons.
     
     @return returns the number of input neurons
     */
	UINT getNumInputNeurons() const;
    
    /**
     Gets the number of hidden neurons.
     
     @return returns the number of hidden neurons
     */
	UINT getNumHiddenNeurons() const;
    
    /**
     Gets the number of output neurons.
     
     @return returns the number of output neurons
     */
	UINT getNumOutputNeurons() const;
    
    /**
     Gets the input layer activation function.
     
     @return returns the input layer activation function
     */
	UINT getInputLayerActivationFunction() const;
    
    /**
     Gets the hidden layer activation function.
     
     @return returns the hidden layer activation function
     */
	UINT getHiddenLayerActivationFunction() const;
    
    /**
     Gets the output layer activation function.
     
     @return returns the output layer activation function
     */
	UINT getOutputLayerActivationFunction() const;
    
    /**
     Gets the minimum number of epochs. This value controls how many epochs must be completed before the MLP training routine can stop.
     
     @return returns the minimum number of epochs
     */
	UINT getMinNumEpochs() const;
    
    /**
     Gets the number of random training iterations that should be performed during the training phase.
     The MLP back propagation algorithm starts with random values, and the accuracy of a trained model can depend on which random values
     the algorithm started with.  The GRT MLP algorithm therefore trains a number of models and picks the best one.  This value therefore
     represents the number of random training iterations that should be used.
     
     @return returns the number of random training iterations that should be performed during the training phase
     */
	UINT getNumRandomTrainingIterations() const;
    
    /**
     Gets the size (as a percentage) of the validation set (if one should be used). If this value returned 20 this would mean that
     20% of the training data would be set aside to create a validation set and the other 80% would be used to actually train the MLP.
     
     @return returns the size of the validation set
     */
	UINT getValidationSetSize() const;
    
    /**
     Gets the training rate. This should be a value between [0 1]
     
     @return returns the training rate
     */
	double getTrainingRate() const;
    
    /**
     Gets the momentum rate. This should be a value between [0 1]
     
     @return returns the momentum
     */
	double getMomentum() const;
    
    /**
     Gets the gamma value. This controls the gamma parameter for the neurons.
     
     @return returns the gamma value for the neurons
     */
	double getGamma() const;
    
    /**
     Gets training error from the last round of training. If the MLP is in classification mode, the training error will be the classification
     accuracy.  If the MLP is in regression mode then the training error will be the RMS error.
     
     @return returns the training error from the last round of training
     */
	double getTrainingError() const;
    
    /**
     Returns true if a validation set should be used for training. If true, then the training dataset will be partitioned into a smaller training dataset
     and a validation set.  The size of the partition is controlled by the validationSetSize parameter.
     
     @return returns true if a validation set should be used for training, false otherwise
     */
	bool getUseValidationSet() const;
    
    /**
     Returns true if the order of the training dataset should be randomized at each epoch of training. Randomizing the order of the training dataset stops
     the MLP algorithm from focusing too much on the first few examples in the dataset.
     
     @return returns true if the order of the training dataset should be randomized, false otherwise
     */
	bool getRandomiseTrainingOrder() const;

    /**
     Returns true if the MLP is in classification mode.
     
     @return returns true if the MLP is in classification mode, false otherwise
     */
    bool getClassificationModeActive() const;
    
    /**
     Returns true if the MLP is in regression mode.
     
     @return returns true if the MLP is in regression mode, false otherwise
     */
    bool getRegressionModeActive() const;
    
    /**
     Returns the neurons for the input layer.
     
     @return returns a vector of neurons for the input layer
     */
	vector< Neuron > getInputLayer() const;
    
    /**
     Returns the neurons for the hidden layer.
     
     @return returns a vector of neurons for the hidden layer
     */
	vector< Neuron > getHiddenLayer() const;
    
    /**
     Returns the neurons for the output layer.
     
     @return returns a vector of neurons for the output layer
     */
	vector< Neuron > getOutputLayer() const;
    
    /**
     Returns a vector of VectorDouble representing the training log for each random round of training.
     The outer vector represents each round and the inner vector represents each epoch in that round.
     
     @return returns a vector of MinMax values representing the ranges of the output layer
     */
	vector< VectorDouble > getTrainingLog() const;
    
    /**
     Returns true if the MLP should use null rejection during classification. This is only relevant if the MLP is in classification mode.
     
     @return returns true if the null rejection is enabled, false otherwise
     */
    bool getNullRejectionEnabled() const;
    
    /**
     Returns the current null rejection coefficient value.
     The null rejection coefficient is a multipler controlling the null rejection threshold for each class.
     This is only relevant if the MLP is in classification mode.
     
     @return returns the current null rejection coefficient
     */
    double getNullRejectionCoeff() const;
    
    /**
     Returns the current null rejection threshold value.
     The null rejection threshold is value controlling if a classification result should be rejected or accepted.
     This is only relevant if the MLP is in classification mode.
     
     @return returns the current null rejection threshold
     */
    double getNullRejectionThreshold() const;
    
    /**
     Returns the current maximumLikelihood value.
     The maximumLikelihood value is computed during the prediction phase and is the likelihood of the most likely model.
     This is only relevant if the MLP is in classification mode.
     This value will return 0 if a prediction has not been made.
     
     @return returns the current maximumLikelihood value
     */
    double getMaximumLikelihood() const;
    
    /**
     Gets a vector of the class likelihoods from the last prediction, this will be an N-dimensional vector, where N is the number of classes in the model.
     This value will return 0 if a prediction has not been made.
     
     @return returns a vector of the class likelihoods from the last prediction, an empty vector will be returned if the model has not been trained
     */
    VectorDouble getClassLikelihoods() const;
    
    /**
     Gets the predicted class label from the last prediction. This is only relevant if the MLP is in classification mode.
     
     @return returns the label of the last predicted class, a value of 0 will be returned if the model has not been trained
     */
    UINT getPredictedClassLabel() const;

	//Setters
	bool setTrainingRate(const double trainingRate);
	bool setMomentum(const double momentum);
	bool setGamma(const double gamma);
	bool setUseValidationSet(const bool useValidationSet);
	bool setRandomiseTrainingOrder(const bool randomiseTrainingOrder);
    bool setUseMultiThreadingTraining(const bool useMultiThreadingTraining);
    bool setMinNumEpochs(const UINT minNumEpochs);
    bool setNumRandomTrainingIterations(const UINT numRandomTrainingIterations);
    bool setValidationSetSize(const UINT validationSetSize);
    
    //Classifier Setters
    bool setNullRejection(const bool useNullRejection);
    bool setNullRejectionCoeff(const double nullRejectionCoeff);
    
protected:
    bool inline isNAN(const double v) const;
    
    /**
     Performs one round of back propagation, using the training example and target vector
     
     @param const VectorDouble &trainingExample: the input vector to use for back propagation
     @param const VectorDouble &targetVector: the target vector to use for back propagation
     @param const double alpha: the training rate
     @param const double beta: the momentum
     @return returns the squared error for the current training example
     */
    double back_prop(const VectorDouble &trainingExample,const VectorDouble &targetVector,const double alpha,const double beta);
    
    /**
     Performs the feedforward step using the current model and the input training example.
     
     @param VectorDouble trainingExample: the input vector to use for the feedforward
     @return returns a new vector of the results from the feedforward step
     */
    VectorDouble feedforward(VectorDouble trainingExample);
    
    /**
     Performs the feedforward step for back propagation, using the input data
     
     @param const VectorDouble &trainingExample: the input vector to use for the feedforward
     @param VectorDouble &inputNeuronsOuput: the results of the input layer 
     @param VectorDouble &hiddenNeuronsOutput: the results of the hidden layer
     @param VectorDouble &outputNeuronsOutput: the results of the output layer
     */
    void feedforward(const VectorDouble &trainingExample,VectorDouble &inputNeuronsOuput,VectorDouble &hiddenNeuronsOutput,VectorDouble &outputNeuronsOutput);
    
    UINT numInputNeurons;
    UINT numHiddenNeurons;
    UINT numOutputNeurons;
    UINT inputLayerActivationFunction;
    UINT hiddenLayerActivationFunction;
    UINT outputLayerActivationFunction;
	UINT minNumEpochs;
    UINT numRandomTrainingIterations;
	UINT validationSetSize;
	double momentum;
	double gamma;
    double trainingError;
    bool initialized;
	bool useValidationSet;
	bool randomiseTrainingOrder;
    Random random;
    
    vector< Neuron > inputLayer;
    vector< Neuron > hiddenLayer;
    vector< Neuron > outputLayer;
	vector< VectorDouble > trainingErrorLog;
    
    //Classifier Variables
    bool classificationModeActive;
    bool useNullRejection;
    UINT predictedClassLabel;
    double nullRejectionThreshold;
    double nullRejectionCoeff;
    double maxLikelihood;
    VectorDouble classLikelihoods;
    
    static RegisterRegressifierModule< MLP > registerModule;
    
    //Temp Training Stuff
    VectorDouble inputNeuronsOuput;
    VectorDouble hiddenNeuronsOutput;
    VectorDouble outputNeuronsOutput;
    VectorDouble deltaO;
    VectorDouble deltaH;
    
};

} //End of namespace GRT

#endif //GRT_MLP_HEADER
