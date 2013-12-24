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

#include "FeatureExtraction.h"

namespace GRT{
    
FeatureExtraction::StringFeatureExtractionMap* FeatureExtraction::stringFeatureExtractionMap = NULL;
UINT FeatureExtraction::numFeatureExtractionInstances = 0;
    
FeatureExtraction* FeatureExtraction::createInstanceFromString(string const &featureExtractionType){
    
    StringFeatureExtractionMap::iterator iter = getMap()->find( featureExtractionType );
    if( iter == getMap()->end() ){
        return NULL;
    }
    return iter->second();
}
    
FeatureExtraction* FeatureExtraction::createNewInstance() const{
    return createInstanceFromString(featureExtractionType);
}
    
FeatureExtraction::FeatureExtraction(void){
    featureExtractionType = "NOT_SET"; 
    initialized = false; 
    featureDataReady = false;
    numInputDimensions = 0;
    numOutputDimensions = 0;
    numFeatureExtractionInstances++;
}
    
FeatureExtraction::~FeatureExtraction(void){
    if( --numFeatureExtractionInstances == 0 ){
        delete stringFeatureExtractionMap;
        stringFeatureExtractionMap = NULL;
    }
}

bool FeatureExtraction::copyBaseVariables(const FeatureExtraction *featureExtractionModule){
    
    if( featureExtractionModule == NULL ){
        errorLog << "copyBaseVariables(const FeatureExtraction *featureExtractionModule) - featureExtractionModule pointer is NULL!" << endl;
        return false;
    }
    
    if( !this->copyGRTBaseVariables( featureExtractionModule ) ){
        return false;
    }
    
    this->featureExtractionType = featureExtractionModule->featureExtractionType;
    this->initialized = featureExtractionModule->initialized;
    this->featureDataReady = featureExtractionModule->featureDataReady;
    this->numInputDimensions = featureExtractionModule->numInputDimensions;
    this->numOutputDimensions = featureExtractionModule->numOutputDimensions;
    this->featureVector = featureExtractionModule->featureVector;
    this->debugLog = featureExtractionModule->debugLog;
    this->errorLog = featureExtractionModule->errorLog;
    this->warningLog = featureExtractionModule->warningLog;

    return true;
}
    
bool FeatureExtraction::saveBaseSettingsToFile(fstream &file){
    
    if( !file.is_open() ){
        errorLog << "saveBaseSettingsToFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    file << "NumInputDimensions: " << numInputDimensions << endl;
    file << "NumOutputDimensions: " << numOutputDimensions << endl;
    
    return true;
}

bool FeatureExtraction::loadBaseSettingsFromFile(fstream &file){
	
	featureVector.clear();
    
    if( !file.is_open() ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    string word;
    
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

	//Resize the feature vector
	featureVector.resize(numOutputDimensions,0);
    
    return true;
}
    
string FeatureExtraction::getFeatureExtractionType() const{ 
    return featureExtractionType; 
}

UINT FeatureExtraction::getNumInputDimensions() const{ 
    return numInputDimensions; 
}

UINT FeatureExtraction::getNumOutputDimensions() const{ 
    return numOutputDimensions; 
}

bool FeatureExtraction::getInitialized() const{ 
    return initialized; 
}
    
bool FeatureExtraction::getFeatureDataReady() const{
    return featureDataReady;
}

VectorDouble FeatureExtraction::getFeatureVector() const{ 
    return featureVector; 
}
    

} //End of namespace GRT

