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

#include "SelfOrganizingMap.h"

namespace GRT{
    
//Register the SelfOrganizingMap class with the Clusterer base class
RegisterClustererModule< SelfOrganizingMap > SelfOrganizingMap::registerModule("SelfOrganizingMap");

SelfOrganizingMap::SelfOrganizingMap( const UINT networkSize, const UINT networkTypology, const UINT maxNumEpochs, const double alphaStart, const double alphaEnd ){
    
    this->numClusters = networkSize;
    this->networkTypology = networkTypology;
    this->maxNumEpochs = maxNumEpochs;
    this->alphaStart = alphaStart;
    this->alphaEnd = alphaEnd;
    
    clustererType = "SelfOrganizingMap";
    debugLog.setProceedingText("[DEBUG SelfOrganizingMap]");
    errorLog.setProceedingText("[ERROR SelfOrganizingMap]");
    trainingLog.setProceedingText("[TRAINING SelfOrganizingMap]");
    warningLog.setProceedingText("[WARNING SelfOrganizingMap]");
}
    
SelfOrganizingMap::SelfOrganizingMap(const SelfOrganizingMap &rhs){
    
    clustererType = "KMeans";
    debugLog.setProceedingText("[DEBUG KMeans]");
    errorLog.setProceedingText("[ERROR KMeans]");
    trainingLog.setProceedingText("[TRAINING KMeans]");
    warningLog.setProceedingText("[WARNING KMeans]");
    
    if( this != &rhs ){
        
        this->networkTypology = rhs.networkTypology;
        this->alphaStart = rhs.alphaStart;
        this->alphaEnd = rhs.alphaEnd;
        
        //Clone the Clusterer variables
        copyBaseVariables( (Clusterer*)&rhs );
    }
}

SelfOrganizingMap::~SelfOrganizingMap(){

}
    
SelfOrganizingMap& SelfOrganizingMap::operator=(const SelfOrganizingMap &rhs){
    
    if( this != &rhs ){
        
        this->networkTypology = rhs.networkTypology;
        this->alphaStart = rhs.alphaStart;
        this->alphaEnd = rhs.alphaEnd;
        
        //Clone the Clusterer variables
        copyBaseVariables( (Clusterer*)&rhs );
    }
    
    return *this;
}
    
bool SelfOrganizingMap::deepCopyFrom(const Clusterer *clusterer){
    
    if( clusterer == NULL ) return false;
    
    if( this->getClustererType() == clusterer->getClustererType() ){
        //Clone the SelfOrganizingMap values
        SelfOrganizingMap *ptr = (SelfOrganizingMap*)clusterer;
        
        this->networkTypology = ptr->networkTypology;
        this->alphaStart = ptr->alphaStart;
        this->alphaEnd = ptr->alphaEnd;
        
        //Clone the Clusterer variables
        return copyBaseVariables( clusterer );
    }
    
    return false;
}
    
bool SelfOrganizingMap::reset(){
    
    //Reset the base class
    Clusterer::reset();
    
    return true;
}

bool SelfOrganizingMap::clear(){
    
    //Reset the base class
    Clusterer::clear();
    
    //Clear the SelfOrganizingMap models
    neurons.clear();
    networkWeights.clear();
    
    return true;
}
    
bool SelfOrganizingMap::train(MatrixDouble data){
    return trainInplace( data );
}

bool SelfOrganizingMap::trainInplace( MatrixDouble &data ){
    
    //Clear any previous models
    clear();
    
    const UINT M = data.getNumRows();
    const UINT N = data.getNumCols();
    numInputDimensions = N;
    Random rand;
    
    //Setup the neurons
    neurons.resize( numClusters );
    for(UINT j=0; j<numClusters; j++){
        
        //Init the neuron
        neurons[j].init( N, 0.5 );
        
        //Set the weights as a random training example
        neurons[j].weights = data.getRowVector( rand.getRandomNumberInt(0, M) );
    }
    
    //Setup the network weights
    switch( networkTypology ){
        case RANDOM_NETWORK:
            networkWeights.resize(numClusters, numClusters);
            
            //Set the diagonal weights as 1 (as i==j)
            for(UINT i=0; i<numClusters; i++){
                networkWeights[i][i] = 1;
            }
            
            //Randomize the other weights
            UINT indexA = 0;
            UINT indexB = 0;
            double weight = 0;
            for(UINT i=0; i<numClusters*numClusters; i++){
                indexA = rand.getRandomNumberInt(0, numClusters);
                indexB = rand.getRandomNumberInt(0, numClusters);
                
                //Make sure the two random indexs are the same (as this is a diagonal and should be 1)
                if( indexA != indexB ){
                    //Pick a random weight between these two neurons
                    weight = rand.getRandomNumberUniform(0,1);
                    
                    //The weight betwen neurons a and b is the mirrored
                    networkWeights[indexA][indexB] = weight;
                    networkWeights[indexB][indexA] = weight;
                }
            }
            break;
    }
    
    //Scale the data if needed
    ranges = data.getRanges();
    if( useScaling ){
        for(UINT i=0; i<M; i++){
            for(UINT j=0; j<numInputDimensions; j++){
                data[i][j] = scale(data[i][j],ranges[j].minValue,ranges[j].maxValue,0,1);
            }
        }
    }
    
    double error = 0;
    double lastError = 0;
    double delta = 0;
    double minChange = 0;
    double weightUpdate = 0;
    double weightUpdateSum = 0;
    double alpha = 1.0;
    UINT iter = 0;
    bool keepTraining = true;
    VectorDouble trainingSample;
    vector< UINT > randomTrainingOrder(M);
    
    //In most cases, the training data is grouped into classes (100 samples for class 1, followed by 100 samples for class 2, etc.)
    //This can cause a problem for stochastic gradient descent algorithm. To avoid this issue, we randomly shuffle the order of the
    //training samples. This random order is then used at each epoch.
    for(UINT i=0; i<M; i++){
        randomTrainingOrder[i] = i;
    }
    std::random_shuffle(randomTrainingOrder.begin(), randomTrainingOrder.end());
    
    //Enter the main training loop
    while( keepTraining ){
        
        //Update alpha based on the current iteration
        alpha = Util::scale(iter,0,maxNumEpochs,alphaStart,alphaEnd);
        
        //Run one epoch of training using the online best-matching-unit algorithm
        error = 0;
        for(UINT i=0; i<M; i++){
            
            //Get the i'th random training sample
            trainingSample = data.getRowVector( randomTrainingOrder[i] );
            
            //Find the best matching unit
            double dist = 0;
            double bestDist = numeric_limits<double>::max();
            UINT bestIndex = 0;
            for(UINT j=0; j<numClusters; j++){
                dist = neurons[j].getSquaredWeightDistance( trainingSample );
                if( dist < bestDist ){
                    bestDist = dist;
                    bestIndex = j;
                }
            }
            
            //Update the weights based on the distance to the winning neuron
            //Neurons closer to the winning neuron will have their weights update more
            for(UINT j=0; j<numClusters; j++){
                
                //Update the weights for the j'th neuron
                weightUpdateSum = 0;
                for(UINT n=0; n<N; n++){
                    weightUpdate = networkWeights[bestIndex][j] * alpha * (trainingSample[n] - neurons[j][n]);
                    neurons[j][n] += weightUpdate;
                    weightUpdateSum += weightUpdate;
                }
                
                error += SQR( weightUpdateSum );
            }
        }
        
        //Compute the error
        delta = fabs( error-lastError );
        lastError = error;
        
        //Check to see if we should stop
        if( delta <= minChange ){
            converged = true;
            keepTraining = false;
        }
        
        if( isinf( error ) ){
            errorLog << "train(MatrixDouble &data) - Training failed! Error is NAN!" << endl;
            return false;
        }
        
        if( ++iter >= maxNumEpochs ){
            keepTraining = false;
        }
        
        trainingLog << "Epoch: " << iter << " Squared Error: " << error << " Delta: " << delta << " Alpha: " << alpha << endl;
    }
    
    trained = true;
    
    return true;
}
    
bool SelfOrganizingMap::trainInplace(LabelledClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return trainInplace(data);
}

bool SelfOrganizingMap::trainInplace(UnlabelledClassificationData &trainingData){
    MatrixDouble data = trainingData.getDataAsMatrixDouble();
    return trainInplace(data);
}
    
bool SelfOrganizingMap::map( VectorDouble x ){
    return mapInplace(x);
}
    
bool SelfOrganizingMap::mapInplace( VectorDouble &x ){
    
    if( !trained ){
        return false;
    }
    
    if( useScaling ){
        for(UINT i=0; i<numInputDimensions; i++){
            x[i] = scale(x[i], ranges[i].minValue, ranges[i].maxValue, 0, 1);
        }
    }
    
    if( mappedData.size() != numClusters )
        mappedData.resize( numClusters );
    
    for(UINT i=0; i<numClusters; i++){
        mappedData[i] = neurons[i].fire( x );
    }
    
    return true;
}
    
bool SelfOrganizingMap::validateNetworkTypology( const UINT networkTypology ){
    if( networkTypology == RANDOM_NETWORK ) return true;
    
    warningLog << "validateNetworkTypology(const UINT networkTypology) - Unknown networkTypology!" << endl;
    
    return false;
}
    
UINT SelfOrganizingMap::getNetworkSize() const{
    return numClusters;
}
    
double SelfOrganizingMap::getAlphaStart() const{
    return alphaStart;
}

double SelfOrganizingMap::getAlphaEnd() const{
    return alphaEnd;
}
    
VectorDouble SelfOrganizingMap::getMappedData() const{
    return mappedData;
}
    
vector< GuassNeuron > SelfOrganizingMap::getNeurons() const{
    return neurons;
}

MatrixDouble SelfOrganizingMap::getNetworkWeights() const{
    return networkWeights;
}
    
bool SelfOrganizingMap::setNetworkSize( const UINT networkSize ){
    if( networkSize > 0 ){
        this->numClusters = networkSize;
        return true;
    }
    
    warningLog << "setNetworkSize(const UINT networkSize) - The networkSize must be greater than 0!" << endl;
    
    return false;
}
    
bool SelfOrganizingMap::setNetworkTypology( const UINT networkTypology ){
    if( validateNetworkTypology( networkTypology ) ){
        this->networkTypology = networkTypology;
        return true;
    }
    return false;
}
    
bool SelfOrganizingMap::setAlphaStart( const double alphaStart ){
    
    if( alphaStart > 0 ){
        this->alphaStart = alphaStart;
        return true;
    }
    
    warningLog << "setAlphaStart(const double alphaStart) - AlphaStart must be greater than zero!" << endl;
    
    return false;
}
    
bool SelfOrganizingMap::setAlphaEnd( const double alphaEnd ){
    
    if( alphaEnd > 0 ){
        this->alphaEnd = alphaEnd;
        return true;
    }
    
    warningLog << "setAlphaEnd(const double alphaEnd) - AlphaEnd must be greater than zero!" << endl;
    
    return false;
}

} //End of namespace GRT