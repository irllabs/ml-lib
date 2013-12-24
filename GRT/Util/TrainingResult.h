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
 The TrainingResult class provides a data structure for storing the results of a classification or regression training iteration.
 */

#ifndef GRT_TRAINING_RESULT_HEADER
#define GRT_TRAINING_RESULT_HEADER

namespace GRT {

class TrainingResult{
public:
    /**
     Default Constructor.
     
     Initializes the TrainingResult instance.
     */
    TrainingResult(){
        trainingMode = CLASSIFICATION_MODE;
        trainingIteration = 0;
        accuracy = 0;
        totalSquaredTrainingError = 0;
        rootMeanSquaredTrainingError = 0;
    }
    
    /**
     Copy Constructor.
     
     Initializes this instance by copying the data from the rhs instance
     
     @param const TrainingResult &rhs: another instance of the TrainingResult class
     */
    TrainingResult(const TrainingResult &rhs){
        *this = rhs;
    }
    
    /**
     Default Destructor.
     */
    ~TrainingResult(){
        
    }

    /**
     Defines the Equals Operator.

     This copies the data from the rhs instance to this instance, returning a reference to the current instance.

     @param const TrainingResult &rhs: another instance of the TrainingResult class
     */
    TrainingResult& operator=(const TrainingResult &rhs){
        if( this != &rhs ){
            this->trainingMode = rhs.trainingMode;
            this->trainingIteration = rhs.trainingIteration;
            this->accuracy = rhs.accuracy;
            this->totalSquaredTrainingError = rhs.totalSquaredTrainingError;
            this->rootMeanSquaredTrainingError = rhs.rootMeanSquaredTrainingError;
        }
        return *this;
    }
    
    /**
     Gets the current training mode, this will be one of the TrainingMode enums.

     @return returns the current training mode, this will be one of the TrainingMode enums
     */
    unsigned int getTrainingMode() const{
        return trainingMode;
    }
    
    /**
     Gets the training iteration, this represents which iteration (or epoch) the training results correspond to.

     @return returns the training iteration
     */
    unsigned int getTrainingIteration() const{
        return trainingIteration;
    }
    
    /**
     Gets the accuracy for the training result at the current training iteration. This is only used if the trainingMode is
     in CLASSIFICATION_MODE.

     @return returns the accuracy
     */
    double getAccuracy() const{
        return accuracy;
    }
    
    /**
     Gets the total squared error for the training data at the current training iteration. This is only used if the trainingMode is
     in REGRESSION_MODE.

     @return returns the totalSquaredTrainingError
     */
    double getTotalSquaredTrainingError() const{
        return totalSquaredTrainingError;
    }
    
    /**
     Gets the root mean squared error for the training data at the current training iteration. This is only used if the trainingMode is
     in REGRESSION_MODE.

     @return returns the rootMeanSquaredTrainingError
     */
    double getRootMeanSquaredTrainingError() const{
        return rootMeanSquaredTrainingError;
    }
    
    /**
     Sets the training result for classification data. This will place the training mode into CLASSIFICATION_MODE.

     @param unsigned int trainingIteration: the current training iteration (or epoch)
     @param double accuracy: the accuracy for the current training iteration
     @return returns true if the training result was set successfully
     */
    bool setClassificationResult(unsigned int trainingIteration,double accuracy){
        this->trainingMode = CLASSIFICATION_MODE;
        this->trainingIteration = trainingIteration;
        this->accuracy = accuracy;
        return true;
    }
    
    /**
     Sets the training result for regression data. This will place the training mode into REGRESSION_MODE.

     @param unsigned int trainingIteration: the current training iteration (or epoch)
     @param double totalSquaredTrainingError: the total squared training error for the current iteration
     @param double rootMeanSquaredTrainingError: the root mean squared training error for the current iteration
     @return returns true if the training result was set successfully
     */
    bool setRegressionResult(unsigned int trainingIteration,double totalSquaredTrainingError,double rootMeanSquaredTrainingError){
        this->trainingMode = REGRESSION_MODE;
        this->trainingIteration = trainingIteration;
        this->totalSquaredTrainingError = totalSquaredTrainingError;
        this->rootMeanSquaredTrainingError = rootMeanSquaredTrainingError;
        return true;
    }

protected:
    
    unsigned int trainingMode;
    unsigned int trainingIteration;
    double accuracy;
    double totalSquaredTrainingError;
    double rootMeanSquaredTrainingError;
    
public:
    
    enum TrainingMode{CLASSIFICATION_MODE=0,REGRESSION_MODE};

};

}//End of namespace GRT

#endif //GRT_TRAINING_RESULT_HEADER
