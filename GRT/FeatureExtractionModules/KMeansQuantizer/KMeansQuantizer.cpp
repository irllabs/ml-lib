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

#include "KMeansQuantizer.h"

namespace GRT{
    
//Register your module with the FeatureExtraction base class
RegisterFeatureExtractionModule< KMeansQuantizer > KMeansQuantizer::registerModule("KMeansQuantizer");
    
KMeansQuantizer::KMeansQuantizer(UINT numDimensions,UINT numClusters){
    featureExtractionType = "KMeansQuantizer";
    debugLog.setProceedingText("[DEBUG KMeansQuantizer]");
    errorLog.setProceedingText("[ERROR KMeansQuantizer]");
    warningLog.setProceedingText("[WARNING KMeansQuantizer]");
    
    init(numDimensions,numClusters);
}
    
KMeansQuantizer::KMeansQuantizer(const KMeansQuantizer &rhs){
    //Invoke the equals operator to copy the data from the rhs instance to this instance
    *this = rhs;
}

KMeansQuantizer::~KMeansQuantizer(){
    //Here you should add any specific code to cleanup your custom feature extraction module if needed
}
    
KMeansQuantizer& KMeansQuantizer::operator=(const KMeansQuantizer &rhs){
    if(this!=&rhs){
        //Here you should copy any class variables from the rhs instance to this instance
        this->quantizerTrained = rhs.quantizerTrained;
        this->numClusters = rhs.numClusters;
        this->clusters = rhs.clusters;
        
        //Copy the base variables
        copyBaseVariables( (FeatureExtraction*)&rhs );
    }
    return *this;
}
    
bool KMeansQuantizer::deepCopyFrom(const FeatureExtraction *featureExtraction){
    
    if( featureExtraction == NULL ) return false;
    
    if( this->getFeatureExtractionType() == featureExtraction->getFeatureExtractionType() ){
        
        //Cast the feature extraction pointer to a pointer to your custom feature extraction module
        //Then invoke the equals operator
        *this = *(KMeansQuantizer*)featureExtraction;
        
        return true;
    }
    
    errorLog << "clone(FeatureExtraction *featureExtraction) -  FeatureExtraction Types Do Not Match!" << endl;
    
    return false;
}
    
bool KMeansQuantizer::computeFeatures(const VectorDouble &inputVector){
    
	//Run the quantize algorithm
	quantize( inputVector );
	
    return true;
}

bool KMeansQuantizer::reset(){
    //Add your own custom reset code here, make sure this function returns true otherwise the pipeline reset will not work!
    return true;
}
    
bool KMeansQuantizer::saveSettingsToFile(string filename) const{
    
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

bool KMeansQuantizer::loadSettingsFromFile(string filename){
    
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

bool KMeansQuantizer::saveSettingsToFile(fstream &file) const{
    
    if( !file.is_open() ){
        errorLog << "saveSettingsToFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    //First, you should add a header (with no spaces) e.g.
    file << "KMEANS_QUANTIZER_FILE_V1.0" << endl;
	
    //Second, you should save the base feature extraction settings to the file
    if( !saveBaseSettingsToFile( file ) ){
        errorLog << "saveSettingsToFile(fstream &file) - Failed to save base feature extraction settings to file!" << endl;
        return false;
    }
    
    file << "QuantizerTrained: " << quantizerTrained << endl;
    file << "NumClusters: " << numClusters << endl;
    
    if( quantizerTrained ){
        file << "Clusters: \n";
        for(UINT k=0; k<numClusters; k++){
            for(UINT j=0; j<numInputDimensions; j++){
                file << clusters[k][j];
                if( j != numInputDimensions-1 ) file << "\t";
                else file << endl;
            }
        }
    }
    
    return true;
}

bool KMeansQuantizer::loadSettingsFromFile(fstream &file){
    
    initialized = false;
    numClusters = 0;
    clusters.clear();
    quantizationDistances.clear();
    
    if( !file.is_open() ){
        errorLog << "loadSettingsFromFile(fstream &file) - The file is not open!" << endl;
        return false;
    }
    
    string word;
    
    //First, you should read and validate the header
    file >> word;
    if( word != "KMEANS_QUANTIZER_FILE_V1.0" ){
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
        clusters.resize(numClusters, numInputDimensions);
        file >> word;
        if( word != "Clusters:" ){
            errorLog << "loadSettingsFromFile(fstream &file) - Failed to load Clusters!" << endl;
            return false;
        }
        
        for(UINT k=0; k<numClusters; k++){
            for(UINT j=0; j<numInputDimensions; j++){
                file >> clusters[k][j];
            }
        }
    }
    
    initialized = true;
    featureDataReady = false;
    quantizationDistances.resize(numClusters,0);
    return true;
}
    
bool KMeansQuantizer::init(UINT numDimensions,UINT numClusters){
    
    initialized = false;
    quantizerTrained = false;
    featureDataReady = false;
    featureVector.clear();
    clusters.clear();
    quantizationDistances.clear();
    
    this->numClusters = numClusters;
    numInputDimensions = numDimensions;
    numOutputDimensions = 1; //This is always 1 for the KMeansQuantizer
    featureVector.resize(numOutputDimensions,0);
    
    //Flag that the feature extraction has been initialized
    initialized = true;
    
    return true;
}
    
bool KMeansQuantizer::train(LabelledClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
    
bool KMeansQuantizer::train(LabelledTimeSeriesClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
   
bool KMeansQuantizer::train(LabelledContinuousTimeSeriesClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}

bool KMeansQuantizer::train(UnlabelledClassificationData &trainingData){
	MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return train( data );
}
    
bool KMeansQuantizer::train(MatrixDouble &trainingData){
    
    if( !initialized ){
        errorLog << "train(MatrixDouble &trainingData) - The quantizer has not been initialized!" << endl;
        return false;
    }
    
    //Reset any previous model
    quantizerTrained = false;
    featureDataReady = false;
    clusters.clear();
    quantizationDistances.clear();
    
    //Train the KMeans model
    KMeans kmeans;
    kmeans.setNumClusters(numClusters);
    kmeans.setComputeTheta( true );
    kmeans.setMinChange( 1.0e-10 );
    kmeans.setMinNumEpochs( 10 );
	kmeans.setMaxNumEpochs( 10000 );
    
    if( !kmeans.trainInplace(trainingData) ){
        errorLog << "train(MatrixDouble &trainingData) - Failed to train quantizer!" << endl;
        return false;
    }
    
    //Save the clusters from the KMeans model
    clusters = kmeans.getClusters();
    quantizationDistances.resize(numClusters,0);
    quantizerTrained = true;
    
    return true;
}

UINT KMeansQuantizer::quantize(double inputValue){
	return quantize( VectorDouble(1,inputValue) );
}

UINT KMeansQuantizer::quantize(const VectorDouble &inputVector){
	
	#ifdef GRT_SAFE_CHECKING
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
	#endif
	
	//Find the minimum cluster
    double minDist = numeric_limits<double>::max();
    UINT quantizedValue = 0;
    
    for(UINT k=0; k<numClusters; k++){
        //Compute the squared Euclidean distance
        quantizationDistances[k] = 0;
        for(UINT i=0; i<numInputDimensions; i++){
            quantizationDistances[k] += SQR( inputVector[i]-clusters[k][i] );
        }
        if( quantizationDistances[k] < minDist ){
            minDist = quantizationDistances[k];
            quantizedValue = k;
        }
    }
    
    featureVector[0] = quantizedValue;
    featureDataReady = true;
	
	return quantizedValue;
}
    
}//End of namespace GRT