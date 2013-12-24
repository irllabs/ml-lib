/**
 @file
 @author  Nicholas Gillian <ngillian@media.mit.edu>
 @version 1.0
 
 @section LICENSE
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
 
 @section DESCRIPTION
 This is the main base class that all GRT machine learning algorithms should inherit from.  A large number of the
 functions in this class are virtual and simply return false as these functions must be overwridden by the inheriting
 class.
 */

#ifndef GRT_MLBASE_HEADER
#define GRT_MLBASE_HEADER

#include "GRTBase.h"
#include "../DataStructures/LabelledClassificationData.h"
#include "../DataStructures/LabelledTimeSeriesClassificationData.h"

namespace GRT{

#define DEFAULT_NULL_LIKELIHOOD_VALUE 0
#define DEFAULT_NULL_DISTANCE_VALUE 0
    
    
class TrainingResultsObserverManager : public ObserverManager< TrainingResult >
{
public:
    TrainingResultsObserverManager(){
    }
    virtual ~TrainingResultsObserverManager(){}
    
};
    
class TestResultsObserverManager : public ObserverManager< TestInstanceResult >
{
public:
    TestResultsObserverManager(){
    }
    virtual ~TestResultsObserverManager(){}
    
};

class MLBase : public GRTBase, public Observer< TrainingResult >, public Observer< TestInstanceResult >
{
public:
    /**
     Default MLBase Constructor
     */
	MLBase(void){
        trained = false;
        useScaling = false;
        baseType = BASE_TYPE_NOT_SET;
        numFeatures = 0;
        numOutputDimensions = 0;
    }

    /**
     Default MLBase Destructor
     */
	virtual ~MLBase(void){
        clear();
    }

    /**
     This copies all the MLBase variables from the instance mlBaseA to the instance mlBaseA.
     
     @param const MLBase *mlBase: a pointer to a MLBase class from which the values will be copied to the instance that calls the function
     @return returns true if the copy was successfull, false otherwise
     */
    bool copyMLBaseVariables(const MLBase *mlBase){

        if( mlBase == NULL ){
            errorLog << "copyMLBaseVariables(MLBase *mlBase) - mlBase pointer is NULL!" << endl;
            return false;
        }
        
        if( !copyGRTBaseVariables( mlBase ) ){
            errorLog << "copyMLBaseVariables(MLBase *mlBase) - Failed to copy GRT Base variables!" << endl;
            return false;
        }

        this->trained = mlBase->trained;
        this->useScaling = mlBase->useScaling;
        this->baseType = mlBase->baseType;
        this->numFeatures = mlBase->numFeatures;
        this->numOutputDimensions = mlBase->numOutputDimensions;
        this->trainingResults = mlBase->trainingResults;
        this->trainingResultsObserverManager = mlBase->trainingResultsObserverManager;
        this->testResultsObserverManager = mlBase->testResultsObserverManager;

        return true;
    }
    
    /**
     This is the main training interface for LabelledClassificationData. This should be overwritten by the derived class.
     
     @param LabelledClassificationData trainingData: the training data that will be used to train the classifier
     @return returns true if the classifier was successfully trained, false otherwise
     */
    virtual bool train(LabelledClassificationData trainingData){ return false; }
    
    /**
     This is the main training interface for LabelledTimeSeriesClassificationData. This should be overwritten by the derived class.
     
     @param LabelledTimeSeriesClassificationData trainingData: the training data that will be used to train the classifier
     @return returns true if the classifier was successfully trained, false otherwise
     */
    virtual bool train(LabelledTimeSeriesClassificationData trainingData){ return false; }
    
    /**
     This is the main training interface for UnlabelledClassificationData. This should be overwritten by the derived class.
     
     @param UnlabelledClassificationData trainingData: the training data that will be used to train the classifier
     @return returns true if the classifier was successfully trained, false otherwise
     */
    virtual bool train(UnlabelledClassificationData trainingData){ return false; }

    /**
     This is the main prediction interface for all the GRT machine learning algorithms. This should be overwritten by the derived class.
     
     @param VectorDouble inputVector: the new input vector for prediction
     @return returns true if the prediction was completed succesfully, false otherwise (the base class always returns false)
     */
    virtual bool predict(VectorDouble inputVector){ return false; }
    
    /**
     This is the prediction interface for time series data. This should be overwritten by the derived class.
     
     @param MatrixDouble inputMatrix: the new input matrix for prediction
     @return returns true if the prediction was completed succesfully, false otherwise (the base class always returns false)
     */
    virtual bool predict(MatrixDouble inputMatrix){ return false; }
    
    /**
     This is the main mapping interface for all the GRT machine learning algorithms. This should be overwritten by the derived class.
     
     @param VectorDouble inputVector: the new input vector for mapping/regression
     @return returns true if the mapping was completed succesfully, false otherwise (the base class always returns false)
     */
    virtual bool map(VectorDouble inputVector){ return false; }
    
    /**
     This is the main reset interface for all the GRT machine learning algorithms. This should be overwritten by the derived class.

     @return returns true if the derived class was reset succesfully, false otherwise (the base class always returns true)
     */
    virtual bool reset(){ return true; }
    
    /**
     This is the main clear interface for all the GRT machine learning algorithms. This should be overwritten by the derived class.
     It will completely clear the ML module, removing any trained model and setting all the base variables to their default values.
     
     @return returns true if the derived class was cleared succesfully, false otherwise
     */
    virtual bool clear(){
        trained = false;
        numFeatures = 0;
        numOutputDimensions = 0;
        trainingResults.clear();
        return true;
    }
    
    /**
     This is the main print interface for all the GRT machine learning algorithms. This should be overwritten by the derived class.
     It will print the model and settings to the display log.
     
     @return returns true if the model was printed succesfully, false otherwise (the base class always returns true)
     */
    virtual bool print() const { return true; }
    
    /**
     This saves the trained model to a file.
     This function should be overwritten by the derived class.
     
     @param string filename: the name of the file to save the model to
     @return returns true if the model was saved successfully, false otherwise
     */
    virtual bool saveModelToFile(string filename) const { return false; }
    
    /**
     This saves the trained model to a file.
     This function should be overwritten by the derived class.
     
     @param fstream &file: a reference to the file the model will be saved to
     @return returns true if the model was saved successfully, false otherwise
     */
    virtual bool saveModelToFile(fstream &file) const { return false; }
    
    /**
     This loads a trained model from a file.
     This function should be overwritten by the derived class.
     
     @param string filename: the name of the file to load the model from
     @return returns true if the model was loaded successfully, false otherwise
     */
    virtual bool loadModelFromFile(string filename){ return false; }
    
    /**
     This loads a trained model from a file.
     This function should be overwritten by the derived class.
     
     @param fstream &file: a reference to the file the model will be loaded from
     @return returns true if the model was loaded successfully, false otherwise
     */
    virtual bool loadModelFromFile(fstream &file){ return false; }
    
    /**
     Scales the input value x (which should be in the range [minSource maxSource]) to a value in the new target range of [minTarget maxTarget].
     
     @param const double &x: the value that should be scaled
     @param const double &minSource: the minimum range that x originates from
     @param const double &maxSource: the maximum range that x originates from
     @param const double &minTarget: the minimum range that x should be scaled to
     @param const double &maxTarget: the maximum range that x should be scaled to
     @return returns a new value that has been scaled based on the input parameters
     */
    double inline scale(const double &x,const double &minSource,const double &maxSource,const double &minTarget,const double &maxTarget){
        return (((x-minSource)*(maxTarget-minTarget))/(maxSource-minSource))+minTarget;
    }

    /**
     Gets the current ML base type.
     
     @return returns an UINT representing the current ML base type, this will be one of the BaseTypes enumerations
     */
    UINT getBaseType() const{ return baseType; }

    /**
     Gets the number of input dimensions in trained model.

     @return returns the number of input dimensions in the trained model, a value of 0 will be returned if the model has not been trained
     */
    UINT getNumInputFeatures() const{ if( trained ){ return numFeatures; } return 0; }
    
    /**
     Gets the number of output dimensions in trained model.
     
     @return returns the number of output dimensions in the trained model, a value of 0 will be returned if the model has not been trained
     */
    UINT getNumOutputDimensions() const{
        if( trained ){
            return numOutputDimensions;
        }
        return 0;
    }
    
	/**
     Gets if the model for the derived class has been succesfully trained.
     
     @return returns true if the model for the derived class has been succesfully trained, false otherwise
     */
    bool getTrained() const{ return trained; }

    /**
     This function is now depreciated. You should use the getTrained() function instead.
     
     @return returns true if the model for the derived class has been succesfully trained, false otherwise
     */
    bool getModelTrained() const{ return getTrained(); }
    
    /**
     Gets if the scaling has been enabled.
     
     @return returns true if scaling is enabled, false otherwise
     */
    bool getScalingEnabled() const{ return useScaling; }
    
    /**
     Gets if the derived class type is CLASSIFIER.
     
     @return returns true if the derived class type is CLASSIFIER, false otherwise
     */
    bool getIsBaseTypeClassifier() const{ return baseType==CLASSIFIER; }
    
    /**
     Gets if the derived class type is REGRESSIFIER.
     
     @return returns true if the derived class type is REGRESSIFIER, false otherwise
     */
    bool getIsBaseTypeRegressifier() const{ return baseType==REGRESSIFIER; }

    /**
     Sets if scaling should be used during the training and prediction phases.
     
     @return returns true the scaling parameter was updated, false otherwise
     */
    bool enableScaling(bool useScaling){ this->useScaling = useScaling; return true; }
    
    /**
     Registers the observer with the training result observer manager. The observer will then be notified when any new training result is computed.
     
     @return returns true the observer was added, false otherwise
     */
    bool registerTrainingResultsObserver( Observer< TrainingResult > &observer ){
        return trainingResultsObserverManager.registerObserver( observer );
    }
    
    /**
     Registers the observer with the test result observer manager. The observer will then be notified when any new test result is computed.
     
     @return returns true the observer was added, false otherwise
     */
    bool registerTestResultsObserver( Observer< TestInstanceResult > &observer ){
        return testResultsObserverManager.registerObserver( observer );
    }
    
    /**
     Removes the observer from the training result observer manager.
     
     @return returns true if the observer was removed, false otherwise
     */
    bool removeTrainingResultsObserver( const Observer< TrainingResult > &observer ){
        return trainingResultsObserverManager.removeObserver( observer );
    }
    
    /**
     Removes the observer from the test result observer manager.
     
     @return returns true if the observer was removed, false otherwise
     */
    bool removeTestResultsObserver( const Observer< TestInstanceResult > &observer ){
        return testResultsObserverManager.removeObserver( observer );
    }
    
    /**
     Removes all observers from the training result observer manager.
     
     @return returns true if all the observers were removed, false otherwise
     */
    bool removeAllTrainingObservers(){
        return trainingResultsObserverManager.removeAllObservers();
    }
    
    /**
     Removes all observers from the training result observer manager.
     
     @return returns true if all the observers were removed, false otherwise
     */
    bool removeAllTestObservers(){
        return testResultsObserverManager.removeAllObservers();
    }
    
    /**
     Notifies all observers that have subscribed to the training results observer manager.
     
     @return returns true if all the observers were notified, false otherwise
     */
    bool notifyTrainingResultsObservers( const TrainingResult &data ){
        return trainingResultsObserverManager.notifyObservers( data );
    }
    
    /**
     Notifies all observers that have subscribed to the test results observer manager.
     
     @return returns true if all the observers were notified, false otherwise
     */
    bool notifyTestResultsObservers( const TestInstanceResult &data ){
        return testResultsObserverManager.notifyObservers( data );
    }
    
    /**
     Gets the training results from the last training phase. Each element in the vector represents the training results from 1 training iteration.
     
     @return returns a vector of TrainingResult instances containing the training results from the most recent training phase
     */
    vector< TrainingResult > getTrainingResults() const;

protected:
    bool trained;
    bool useScaling;
    UINT baseType;
    UINT numFeatures;
    UINT numOutputDimensions;
    vector< TrainingResult > trainingResults;
    TrainingResultsObserverManager trainingResultsObserverManager;
    TestResultsObserverManager testResultsObserverManager;
    
public:

    enum BaseTypes{BASE_TYPE_NOT_SET=0,CLASSIFIER,REGRESSIFIER};
};

} //End of namespace GRT

#endif //GRT_MLBASE_HEADER
