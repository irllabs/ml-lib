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

#include "SOMQuantizer.h"

namespace GRT{
    
//Register your module with the FeatureExtraction base class
RegisterFeatureExtractionModule< SOMQuantizer > SOMQuantizer::registerModule("SOMQuantizer");
    
SOMQuantizer::SOMQuantizer(const UINT numDimensions,const UINT numClusters){
    featureExtractionType = "SOMQuantizer";
    debugLog.setProceedingText("[DEBUG SOMQuantizer]");
    errorLog.setProceedingText("[ERROR SOMQuantizer]");
    warningLog.setProceedingText("[WARNING SOMQuantizer]");
    
    init(numDimensions,numClusters);
}
    
SOMQuantizer::SOMQuantizer(const SOMQuantizer &rhs){
    //Invoke the equals operator to copy the data from the rhs instance to this instance
    *this = rhs;
}

SOMQuantizer::~SOMQuantizer(){
    //Here you should add any specific code to cleanup your custom feature extraction module if needed
}
    
SOMQuantizer& SOMQuantizer::operator=(const SOMQuantizer &rhs){
    if(this!=&rhs){
        //Here you should copy any class variables from the rhs instance to this instance
        this->quantizerTrained = rhs.quantizerTrained;
        this->numClusters = rhs.numClusters;
        this->som = rhs.som;
        this->quantizationDistances = rhs.quantizationDistances;
        
        //Copy the base variables
        copyBaseVariables( (FeatureExtraction*)&rhs );
    }
    return *this;
}
    
bool SOMQuantizer::deepCopyFrom(const FeatureExtraction *featureExtraction){
    
    if( featureExtraction == NULL ) return false;
    
    if( this->getFeatureExtractionType() == featureExtraction->getFeatureExtractionType() ){
        
        //Cast the feature extraction pointer to a pointer to your custom feature extraction module
        //Then invoke the equals operator
        *this = *(SOMQuantizer*)featureExtraction;
        
        return true;
    }
    
    errorLog << "clone(FeatureExtraction *featureExtraction) -  FeatureExtraction Types Do Not Match!" << endl;
    
    return false;
}
    
bool SOMQuantizer::computeFeatures(const VectorDouble &inputVector){
    
	//Run the quantize algorithm
	quantize( inputVector );
	
    return true;
}

bool SOMQuantizer::reset(){
    //Add your own custom reset code here, make sure this function returns true otherwise the pipeline reset will not work!
    return true;
}
    
bool SOMQuantizer::saveSettingsToFile(string filename) const{
    
    if( !initialized ){
        errorLog << "saveSettingsToFile(string filename) - The feature extraction module has not been initialized" << endl;
        return false;
    }
    
    std::fstream file;
    file.open(filename.c_str(), std::ios::out);
    
    if( !saveSettingsToFile( file ) ){
        file.close();
        return false;
    }
    
    file.close();
    
    return true;
}

bool SOMQuantizer::loadSettingsFromFile(string filename){
    
    std::fstream file;
    file.open(filename.c_str(), std::ios::in);
    
    if( !loadSettingsFromFile( file ) ){
        file.close();
        initialized = false;
        return false;
    }
    
    file.close();
    
    return true;
}

bool SOMQuantizer::saveSettingsToFile(fstream &file) const{
    
    if( !file.is_open() ){
        errorLog << "saveSettingsToFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    //First, you should add a header (with no spaces) e.g.
    file << "SOM_QUANTIZER_FILE_V1.0" << endl;
	
    //Second, you should save the base feature extraction settings to the file
    if( !saveBaseSettingsToFile( file ) ){
        errorLog << "saveSettingsToFile(fstream &file) - Failed to save base feature extraction settings to file!" << endl;
        return false;
    }
    
    file << "QuantizerTrained: " << quantizerTrained << endl;
    file << "NumClusters: " << numClusters << endl;
    
    if( quantizerTrained ){
        file << "SOM: \n";
        if( !som.saveModelToFile( file ) ){
            errorLog << "saveSettingsToFile(fstream &file) - Failed to save SelfOrganizingMap settings to file!" << endl;
            return false;
        }
    }
    
    return true;
}

bool SOMQuantizer::loadSettingsFromFile(fstream &file){
    
    initialized = false;
    numClusters = 0;
    som.clear();
    quantizationDistances.clear();
    
    if( !file.is_open() ){
        errorLog << "loadSettingsFromFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    string word;
    
    //First, you should read and validate the header
    file >> word;
    if( word != "SOM_QUANTIZER_FILE_V1.0" ){
        errorLog << "loadSettingsFromFile(fstream &file) - Invalid file format!" << endl;
        return false;
    }
    
    //Second, you should load the base feature extraction settings to the file
    if( !loadBaseSettingsFromFile( file ) ){
        errorLog << "loadBaseSettingsFromFile(fstream &file) - Failed to load base feature extraction settings from file!" << endl;
        return false;
    }
    
    file >> word;
    if( word != "QuantizerTrained:" ){
        errorLog << "loadSettingsFromFile(fstream &file) - Failed to load QuantizerTrained!" << endl;
        return false;
    }
    file >> quantizerTrained;
    
    file >> word;
    if( word != "NumClusters:" ){
        errorLog << "loadSettingsFromFile(fstream &file) - Failed to load NumClusters!" << endl;
        return false;
    }
    file >> numClusters;
    
    if( quantizerTrained ){
        file >> word;
        if( word != "SOM:" ){
            errorLog << "loadSettingsFromFile(fstream &file) - Failed to load SOM!" << endl;
            return false;
        }
        
        if( !som.loadModelFromFile( file ) ){
            errorLog << "loadSettingsFromFile(fstream &file) - Failed to load SelfOrganizingMap settings from file!" << endl;
            return false;
        }
    }
    
    initialized = true;
    featureDataReady = false;
    quantizationDistances.resize(numClusters,0);
    return true;
}
    
bool SOMQuantizer::init(const UINT numDimensions,const UINT numClusters){
    
    initialized = false;
    quantizerTrained = false;
    featureDataReady = false;
    featureVector.clear();
    som.clear();
    quantizationDistances.clear();
    
    this->numClusters = numClusters;
    numInputDimensions = numDimensions;
    numOutputDimensions = 1; //This is always 1 for the SOMQuantizer
    featureVector.resize(numOutputDimensions,0);
    
    //Flag that the feature extraction has been initialized
    initialized = true;
    
    return true;
}
    
bool SOMQuantizer::train(LabelledClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
    
bool SOMQuantizer::train(LabelledTimeSeriesClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
   
bool SOMQuantizer::train(LabelledContinuousTimeSeriesClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}

bool SOMQuantizer::train(UnlabelledClassificationData &trainingData){
	MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
    
bool SOMQuantizer::train(MatrixDouble &trainingData){
    
    if( !initialized ){
        errorLog << "train(MatrixDouble &trainingData) - The quantizer has not been initialized!" << endl;
        return false;
    }
    
    //Reset any previous model
    quantizerTrained = false;
    featureDataReady = false;
    quantizationDistances.clear();
    
    UINT networkSize = numClusters;
    UINT networkTypology = SelfOrganizingMap::RANDOM_NETWORK;
    double alphaStart = 0.5;
    double alphaEnd = 0.1;
    
    //Train the SOM model
    som.setNetworkSize( networkSize );
    som.setNetworkTypology( networkTypology );
    som.setAlphaStart( alphaStart );
    som.setAlphaEnd(  alphaEnd );
    som.setMaxNumEpochs( 1000 );
    
    if( !som.train( trainingData ) ){
        errorLog << "train(MatrixDouble &trainingData) - Failed to train quantizer!" << endl;
        return false;
    }
    
    //Save the clusters from the KMeans model
    quantizationDistances.resize(numClusters,0);
    quantizerTrained = true;
    
    return true;
}

UINT SOMQuantizer::quantize(const double inputValue){
	return quantize( VectorDouble(1,inputValue) );
}

UINT SOMQuantizer::quantize(const VectorDouble &inputVector){
	
    if( !initialized ){
        errorLog << "computeFeatures(const VectorDouble &inputVector) - Not initialized!" << endl;
        return 0;
    }

    if( inputVector.size() != numInputDimensions ){
        errorLog << "computeFeatures(const VectorDouble &inputVector) - The size of the inputVector (" << inputVector.size() << ") does not match that of the filter (" << numInputDimensions << ")!" << endl;
        return 0;
    }

    if( !quantizerTrained ){
        errorLog << "computeFeatures(const VectorDouble &inputVector) - The quantizer has not been trained!" << endl;
        return 0;
    }
	
    //Pass the input data through the map
    if( !som.map( inputVector ) ){
        errorLog << "computeFeatures(const VectorDouble &inputVector) - Failed to perform map!" << endl;
        return 0;
    }
    quantizationDistances = som.getMappedData();
    
    //Search for the neuron with the maximum output
    UINT quantizedValue = 0;
    double maxValue = 0;
    for(UINT k=0; k<numClusters; k++){
        if( quantizationDistances[k] > maxValue ){
            maxValue = quantizationDistances[k];
            quantizedValue = k;
        }
    }
    
    featureVector[0] = quantizedValue;
    featureDataReady = true;
	
	return quantizedValue;
}
    
bool SOMQuantizer::getQuantizerTrained() const {
    return quantizerTrained;
}

UINT SOMQuantizer::getQuantizedValue() const {
    return (quantizerTrained ? featureVector[0] : 0);
}

VectorDouble SOMQuantizer::getQuantizationDistances() const{
    return quantizationDistances;
}

SelfOrganizingMap SOMQuantizer::getSelfOrganizingMap() const{
    return som;
}
    
}//End of namespace GRT