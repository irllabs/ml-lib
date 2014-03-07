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

#include "Regressifier.h"
namespace GRT{
    
Regressifier::StringRegressifierMap* Regressifier::stringRegressifierMap = NULL;
UINT Regressifier::numRegressifierInstances = 0;
    
Regressifier* Regressifier::createInstanceFromString(string const &regressifierType){
    
    StringRegressifierMap::iterator iter = getMap()->find( regressifierType );
    if( iter == getMap()->end() ){
        return NULL;
    }
    return iter->second();
}
    
Regressifier* Regressifier::createNewInstance() const{
    return createInstanceFromString( regressifierType );
}

Regressifier* Regressifier::deepCopy() const{
    
    Regressifier *newInstance = createInstanceFromString( regressifierType );
    
    if( newInstance == NULL ) return NULL;
    
    if( !newInstance->deepCopyFrom( this ) ){
        delete newInstance;
        return NULL;
    }
    return newInstance;
}
    
Regressifier::Regressifier(void){
    baseType = MLBase::REGRESSIFIER;
    regressifierType = "NOT_SET";
    numOutputDimensions = 0;
    minNumEpochs = 0;
    maxNumEpochs = 100;
    validationSetSize = 20;
    minChange = 1.0e-5;
    learningRate = 0.1;
    useValidationSet = false;
    randomiseTrainingOrder = true;
    rootMeanSquaredTrainingError = 0;
    totalSquaredTrainingError = 0;
    numRegressifierInstances++;
}
    
Regressifier::~Regressifier(void){
    if( --numRegressifierInstances == 0 ){
        delete stringRegressifierMap;
        stringRegressifierMap = NULL;
    }
}
    
bool Regressifier::copyBaseVariables(const Regressifier *regressifier){
    
    if( regressifier == NULL ){
        errorLog << "copyBaseVariables(Regressifier *regressifier) - regressifier pointer is NULL!" << endl;
        return false;
    }
    
    if( !this->copyMLBaseVariables( regressifier ) ){
        return false;
    }

    this->regressifierType = regressifier->regressifierType;
    this->minNumEpochs = regressifier->minNumEpochs;
    this->maxNumEpochs = regressifier->maxNumEpochs;
    this->validationSetSize = regressifier->validationSetSize;
    this->minChange = regressifier->minChange;
    this->learningRate = regressifier->learningRate;
    this->rootMeanSquaredTrainingError = regressifier->rootMeanSquaredTrainingError;
    this->totalSquaredTrainingError = regressifier->totalSquaredTrainingError;
    this->useValidationSet = regressifier->useValidationSet;
    this->randomiseTrainingOrder = regressifier->randomiseTrainingOrder;
    this->regressionData = regressifier->regressionData;
    this->inputVectorRanges = regressifier->inputVectorRanges;
    this->targetVectorRanges = regressifier->targetVectorRanges;
    
    return true;
}
    
bool Regressifier::reset(){
    
    //Reset the base class
    MLBase::reset();
    
    rootMeanSquaredTrainingError = 0;
    totalSquaredTrainingError = 0;
    return true;
}

bool Regressifier::clear(){
    
    //Clear the MLBase variables
    MLBase::clear();
    
    //Clear the regressifier variables
    rootMeanSquaredTrainingError = 0;
    totalSquaredTrainingError = 0;
    regressionData.clear();
    inputVectorRanges.clear();
    targetVectorRanges.clear();
    
    return true;
}

string Regressifier::getRegressifierType() const{ 
    return regressifierType; 
}
    
UINT Regressifier::getMinNumEpochs() const{
    return minNumEpochs;
}
    
UINT Regressifier::getMaxNumEpochs() const{
    return maxNumEpochs;
}

UINT Regressifier::getValidationSetSize() const{
    return validationSetSize;
}
    
VectorDouble Regressifier::getRegressionData() const{ 
    if( trained ){ 
        return regressionData; 
    } 
    return VectorDouble(); 
}
    
vector< MinMax > Regressifier::getInputRanges() const{
    return inputVectorRanges;
}

vector< MinMax > Regressifier::getOutputRanges() const{
    return targetVectorRanges;
}
    
double  Regressifier::getLearningRate() const{
    return learningRate;
}
    
double Regressifier::getMinChange() const{
    return minChange;
}
    
bool Regressifier::getUseValidationSet() const{
    return useValidationSet;
}

bool Regressifier::getRandomiseTrainingOrder() const{
    return randomiseTrainingOrder;
}
    
double Regressifier::getRootMeanSquaredTrainingError() const {
    return rootMeanSquaredTrainingError;
}

double Regressifier::getTotalSquaredTrainingError() const {
    return totalSquaredTrainingError;
}
    
bool Regressifier::setMaxNumEpochs(const UINT maxNumEpochs){
    if( maxNumEpochs == 0 ) return false;
    this->maxNumEpochs = maxNumEpochs;
    return true;
}
    
bool Regressifier::setMinNumEpochs(const UINT minNumEpochs){
    this->minNumEpochs = minNumEpochs;
    return true;
}
    
bool Regressifier::setMinChange(const double minChange){
    if( minChange < 0 ) return false;
    this->minChange = minChange;
    return true;
}

bool Regressifier::setLearningRate(double learningRate){
    if( learningRate > 0 ){
        this->learningRate = learningRate;
        return true;
    }
    return false;
}
    
bool Regressifier::setValidationSetSize(const UINT validationSetSize){
    
    if( validationSetSize > 0 && validationSetSize < 100 ){
        this->validationSetSize = validationSetSize;
        return true;
    }
    
    warningLog << "setValidationSetSize(const UINT validationSetSize) - The validation size must be in the range [1 99]!" << endl;
    
    return false;
}
    
bool Regressifier::setUseValidationSet(const bool useValidationSet){
    this->useValidationSet = useValidationSet;
    return true;
}

bool Regressifier::setRandomiseTrainingOrder(const bool randomiseTrainingOrder){
    this->randomiseTrainingOrder = randomiseTrainingOrder;
    return true;
}
    
const Regressifier& Regressifier::getBaseRegressifier() const{
    return *this;
}
    
} //End of namespace GRT

