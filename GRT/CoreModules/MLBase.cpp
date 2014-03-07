/**
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

#include "MLBase.h"

namespace GRT{

MLBase::MLBase(void){
    trained = false;
    useScaling = false;
    baseType = BASE_TYPE_NOT_SET;
    numInputDimensions = 0;
    numOutputDimensions = 0;
}

MLBase::~MLBase(void){
    clear();
}

bool MLBase::copyMLBaseVariables(const MLBase *mlBase){

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
    this->numInputDimensions = mlBase->numInputDimensions;
    this->numOutputDimensions = mlBase->numOutputDimensions;
    this->numTrainingIterationsToConverge = mlBase->numTrainingIterationsToConverge;
    this->trainingResults = mlBase->trainingResults;
    this->trainingResultsObserverManager = mlBase->trainingResultsObserverManager;
    this->testResultsObserverManager = mlBase->testResultsObserverManager;

    return true;
}

bool MLBase::train(LabelledClassificationData trainingData){ return trainInplace( trainingData ); }

bool MLBase::trainInplace(LabelledClassificationData &trainingData){ return false; }

bool MLBase::train(LabelledTimeSeriesClassificationData trainingData){ return trainInPlace( trainingData ); }

bool MLBase::trainInPlace(LabelledTimeSeriesClassificationData &trainingData){ return false; }

bool MLBase::train(UnlabelledClassificationData trainingData){ return false; }

bool MLBase::trainInplace(UnlabelledClassificationData &trainingData){ return false; }

bool MLBase::train(MatrixDouble data){ return trainInplace( data ); }

bool MLBase::trainInplace(MatrixDouble &data){ return false; }

bool MLBase::predict(VectorDouble inputVector){ return false; }

bool MLBase::predict(MatrixDouble inputMatrix){ return false; }

bool MLBase::MLBase::map(VectorDouble inputVector){ return false; }

bool MLBase::mapInplace(VectorDouble &inputVector){ return false; }

bool MLBase::reset(){ return true; }

bool MLBase::clear(){
    trained = false;
    numInputDimensions = 0;
    numOutputDimensions = 0;
    numTrainingIterationsToConverge = 0;
    trainingResults.clear();
    return true;
}

bool MLBase::print() const { return true; }

bool MLBase::saveModelToFile(string filename) const { return false; }

bool MLBase::saveModelToFile(fstream &file) const { return false; }

bool MLBase::loadModelFromFile(string filename){ return false; }

bool MLBase::loadModelFromFile(fstream &file){ return false; }

UINT MLBase::getBaseType() const{ return baseType; }

UINT MLBase::getNumInputFeatures() const{ return getNumInputDimensions(); }

UINT MLBase::getNumInputDimensions() const{ return numInputDimensions; }

UINT MLBase::getNumOutputDimensions() const{ return numOutputDimensions; }

UINT MLBase::getNumTrainingIterationsToConverge() const{
    if( trained ){
        return numTrainingIterationsToConverge;
    }
    return 0;
}

bool MLBase::getTrained() const{ return trained; }

bool MLBase::getModelTrained() const{ return getTrained(); }

bool MLBase::getScalingEnabled() const{ return useScaling; }

bool MLBase::getIsBaseTypeClassifier() const{ return baseType==CLASSIFIER; }

bool MLBase::getIsBaseTypeRegressifier() const{ return baseType==REGRESSIFIER; }

bool MLBase::enableScaling(bool useScaling){ this->useScaling = useScaling; return true; }

bool MLBase::registerTrainingResultsObserver( Observer< TrainingResult > &observer ){
    return trainingResultsObserverManager.registerObserver( observer );
}

bool MLBase::registerTestResultsObserver( Observer< TestInstanceResult > &observer ){
    return testResultsObserverManager.registerObserver( observer );
}

bool MLBase::removeTrainingResultsObserver( const Observer< TrainingResult > &observer ){
    return trainingResultsObserverManager.removeObserver( observer );
}

bool MLBase::removeTestResultsObserver( const Observer< TestInstanceResult > &observer ){
    return testResultsObserverManager.removeObserver( observer );
}

bool MLBase::removeAllTrainingObservers(){
    return trainingResultsObserverManager.removeAllObservers();
}

bool MLBase::removeAllTestObservers(){
    return testResultsObserverManager.removeAllObservers();
}

bool MLBase::notifyTrainingResultsObservers( const TrainingResult &data ){
    return trainingResultsObserverManager.notifyObservers( data );
}

bool MLBase::notifyTestResultsObservers( const TestInstanceResult &data ){
    return testResultsObserverManager.notifyObservers( data );
}

vector< TrainingResult > MLBase::getTrainingResults() const{
    return trainingResults;
}

bool MLBase::saveBaseSettingsToFile(fstream &file) const{
    
    if( !file.is_open() ){
        errorLog << "saveBaseSettingsToFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    file << "Trained: " << trained << endl;
    file << "UseScaling: " << useScaling << endl;
    file << "NumInputDimensions: " << numInputDimensions << endl;
    file << "NumOutputDimensions: " << numOutputDimensions << endl;
    
    return true;
}

bool MLBase::loadBaseSettingsFromFile(fstream &file){
    
    //Clear any previous setup
    clear();
    
    if( !file.is_open() ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    string word;
    
    //Load the trained state
    file >> word;
    if( word != "Trained:" ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - Failed to read Trained header!" << endl;
        return false;
    }
    file >> trained;
    
    //Load the scaling state
    file >> word;
    if( word != "UseScaling:" ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - Failed to read UseScaling header!" << endl;
        return false;
    }
    file >> useScaling;
    
    //Load the NumInputDimensions
    file >> word;
    if( word != "NumInputDimensions:" ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - Failed to read NumInputDimensions header!" << endl;
        return false;
    }
    file >> numInputDimensions;
    
    //Load the NumOutputDimensions
    file >> word;
    if( word != "NumOutputDimensions:" ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - Failed to read NumOutputDimensions header!" << endl;
        return false;
    }
    file >> numOutputDimensions;
    
    return true;
}

} //End of namespace GRT
