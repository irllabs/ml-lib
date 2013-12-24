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

#ifndef GRT_REGRESSIFIER_HEADER
#define GRT_REGRESSIFIER_HEADER

#include "MLBase.h"
#include "../DataStructures/LabelledClassificationData.h"
#include "../DataStructures/LabelledTimeSeriesClassificationData.h"

namespace GRT{
    
#define DEFAULT_NULL_LIKELIHOOD_VALUE 0
#define DEFAULT_NULL_DISTANCE_VALUE 0

class Regressifier : public MLBase
{
public:
    /**
     Default Regressifier Destructor
     */
	Regressifier(void);
    
    /**
     Default Regressifier Destructor
     */
	virtual ~Regressifier(void);
    
    /**
     This is the base deep copy function for the Regressifier modules. This function should be overwritten by the derived class.
     This deep copies the variables and models from the regressifier pointer to this regressifier instance.
     
     @param const Regressifier *regressifier: a pointer to the Regressifier base class, this should be pointing to another instance of a matching derived class
     @return returns true if the deep copy was successfull, false otherwise (the Regressifier base class will always return false)
     */
    virtual bool deepCopyFrom(const Regressifier *regressifier){ return false; }
    
	/**
     This copies the Regressifier variables from the regressifier pointer to this instance.
     
     @param const Regressifier *regressifier: a pointer to a regressifier from which the values will be copied to this instance
     @return returns true if the copy was successfull, false otherwise
     */
    bool copyBaseVariables(const Regressifier *regressifier);
    
    /**
     This resets the regressifier.
     This overrides the reset function in the MLBase base class.
     
     @return returns true if the regressifier was reset, false otherwise
     */
    virtual bool reset();
    
    /**
     This function clears the regressifier module, removing any trained model and setting all the base variables to their default values.
     
     @return returns true if the module was cleared succesfully, false otherwise
     */
    virtual bool clear();

    /**
     This is the main training interface for all the regression algorithms.
     
     @param LabelledRegressionData trainingData: the training data that will be used to train a new regression model
     @return returns true if a new regression model was trained, false otherwise
     */
    virtual bool train(LabelledRegressionData trainingData){ return false; }
    
    /**
     Gets the regressifier type as a string. This is the name of the regression algorithm, such as "LinearRegression".
     
     @return returns the regressifier type as a string
     */
    string getRegressifierType() const;
    
    /**
     Gets the maximum number of epochs. This value controls the maximum number of epochs that can be used during the MLP training routine.
     
     @return returns the maximum number of epochs
     */
	UINT getMaxNumEpochs() const;
    
    /**
     Gets the minimum change value that controls when the MLP training routine should stop.
     
     @return returns the minimum change value
     */
	double getMinChange() const;
    
    /**
     Gets the current learningRate value, this is value used to update the weights at each step of the stochastic gradient descent.
     
     @return returns the current learningRate value
     */
    double getLearningRate() const;
    
    /**
     Gets the root mean squared error on the training data during the training phase.
     
     @return returns the RMS error (on the training data during the training phase)
     */
    double getRootMeanSquaredTrainingError() const;
    
    /**
     Gets the total squared error on the training data during the training phase.
     
     @return returns the total squared error (on the training data during the training phase)
     */
    double getTotalSquaredTrainingError() const;

    /**
     Gets a vector containing the regression data output by the regression algorithm, this will be an M-dimensional vector, where M is the number of output dimensions in the model.  
     
     @return returns a vector containing the regression data output by the regression algorithm, an empty vector will be returned if the model has not been trained
     */
    VectorDouble getRegressionData() const;
    
    /**
     Returns the ranges of the input (i.e. feature) data.
     
     @return returns a vector of MinMax values representing the ranges of the input data
     */
	vector< MinMax > getInputRanges() const;
    
    /**
     Returns the ranges of the output (i.e. target) data.
     
     @return returns a vector of MinMax values representing the ranges of the target data
     */
	vector< MinMax > getOutputRanges() const;
    
    /**
     Sets the maximum number of epochs (a complete iteration of all training samples) that can be run during the training phase.
     The maxNumIterations value must be greater than zero.
     
     @param UINT maxNumIterations: the maximum number of iterations value, must be greater than zero
     @return returns true if the value was updated successfully, false otherwise
     */
    bool setMaxNumEpochs(const UINT maxNumEpochs);
    
    /**
     Sets the minimum change that must be achieved between two training epochs for the training to continue.
     The minChange value must be greater than zero.
     
     @param double minChange: the minimum change value, must be greater than zero
     @return returns true if the value was updated successfully, false otherwise
     */
    bool setMinChange(double minChange);
    
    /**
     Sets the learningRate. This is used to update the weights at each step of the stochastic gradient descent.
     The learningRate value must be greater than zero.
     
     @param double learningRate: the learningRate value used during the training phase, must be greater than zero
     @return returns true if the value was updated successfully, false otherwise
     */
    bool setLearningRate(double learningRate);
    
    /**
     Defines a map between a string (which will contain the name of the regressifier, such as LinearRegression) and a function returns a new instance of that regressifier
     */
    typedef std::map< string, Regressifier*(*)() > StringRegressifierMap;

    /**
     Creates a new regressifier instance based on the input string (which should contain the name of a valid regressifier such as LinearRegression).
     
     @param string const &regressifierType: the name of the regressifier
     @return Regressifier*: a pointer to the new instance of the regressifier
     */
    static Regressifier* createInstanceFromString(string const &regressifierType);

    /**
     Creates a new regressifier instance based on the current regressifierType string value.
     
     @return Regressifier*: a pointer to the new instance of the regressifier
    */
    Regressifier* createNewInstance() const;
    
    /**
     This creates a new Regressifier instance and deep copies the variables and models from this instance into the deep copy.
     The function will then return a pointer to the new instance. It is up to the user who calls this function to delete the dynamic instance
     when they are finished using it.
     
     @return returns a pointer to a new Regressifier instance which is a deep copy of this instance
     */
    Regressifier* deepCopy() const;
    
    /**
     Returns a pointer to this regressifier. This is useful for a derived class so it can get easy access to this base regressifier.
     
     @return Regressifier&: a reference to this regressifier
     */
    const Regressifier& getBaseRegressifier() const;
    
    /**
     Returns a vector of the names of all regressifiers that have been registered with the base regressifier.
     
     @return vector< string >: a vector containing the names of the regressifiers that have been registered with the base regressifier
     */
	static vector< string > getRegisteredRegressifiers();
    
protected:
    string regressifierType;
    UINT maxNumEpochs;
    double learningRate;
    double minChange;
    double rootMeanSquaredTrainingError;
    double totalSquaredTrainingError;
    VectorDouble regressionData;
    vector< MinMax > inputVectorRanges;
	vector< MinMax > targetVectorRanges;
    
    static StringRegressifierMap *getMap() {
        if( !stringRegressifierMap ){ stringRegressifierMap = new StringRegressifierMap; } 
        return stringRegressifierMap; 
    }
    
private:
    static StringRegressifierMap *stringRegressifierMap;
    static UINT numRegressifierInstances;

};
    
//These two functions/classes are used to register any new Regression Module with the Regressifier base class
template< typename T >  Regressifier *newRegressionModuleInstance() { return new T; }

template< typename T > 
class RegisterRegressifierModule : Regressifier { 
public:
    RegisterRegressifierModule(string const &newRegresionModuleName) { 
        getMap()->insert( std::pair<string, Regressifier*(*)()>(newRegresionModuleName, &newRegressionModuleInstance< T > ) );
    }
};

} //End of namespace GRT

#endif //GRT_REGRESSIFIER_HEADER

