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

#include "BAG.h"

namespace GRT{

//Register the BAG module with the Classifier base class
RegisterClassifierModule< BAG >  BAG::registerModule("BAG");

BAG::BAG(bool useScaling)
{
    this->useScaling = useScaling;
    
    classifierType = "BAG";
    classifierMode = STANDARD_CLASSIFIER_MODE;
    debugLog.setProceedingText("[DEBUG BAG]");
    errorLog.setProceedingText("[ERROR BAG]");
    trainingLog.setProceedingText("[TRAINING BAG]");
    warningLog.setProceedingText("[WARNING BAG]");
}
    
BAG::BAG(const BAG &rhs){
    classifierType = "BAG";
    classifierMode = STANDARD_CLASSIFIER_MODE;
    debugLog.setProceedingText("[DEBUG BAG]");
    errorLog.setProceedingText("[ERROR BAG]");
    trainingLog.setProceedingText("[TRAINING BAG]");
    warningLog.setProceedingText("[WARNING BAG]");
    *this = rhs;
}

BAG::~BAG(void)
{
    clearEnsemble();
}
    
BAG& BAG::operator=(const BAG &rhs){
	if( this != &rhs ){
        //Clear any previous ensemble
        clearEnsemble();
        
        //Copy the weights
        this->weights = rhs.weights;
        
        //Deep copy each classifier in the ensemble
        for(UINT i=0; i<rhs.getEnsembleSize(); i++){
            addClassifierToEnsemble( *(rhs.ensemble[i]) );
        }
        //Copy the base classifier variables
        copyBaseVariables( (Classifier*)&rhs );
	}
	return *this;
}

bool BAG::deepCopyFrom(const Classifier *classifier){
    
    if( classifier == NULL ) return false;
    
    if( this->getClassifierType() == classifier->getClassifierType() ){
        BAG *ptr = (BAG*)classifier;
        
        //Clear any previous ensemble
        clearEnsemble();
        
        //Copy the weights
        this->weights = ptr->weights;
        
        //Deep copy each classifier in the ensemble
        for(UINT i=0; i<ptr->getEnsembleSize(); i++){
            addClassifierToEnsemble( *(ptr->ensemble[i]) );
        }
        //Copy the base classifier variables
        return copyBaseVariables( classifier );
    }
    return false;
}

bool BAG::train(LabelledClassificationData trainingData){
    
    //Clear any previous models
    clear();
    
    const unsigned int M = trainingData.getNumSamples();
    const unsigned int N = trainingData.getNumDimensions();
    const unsigned int K = trainingData.getNumClasses();
    
    if( M == 0 ){
        errorLog << "train(LabelledClassificationData trainingData) - Training data has zero samples!" << endl;
        return false;
    }
    
    numInputDimensions = N;
    numClasses = K;
    classLabels.resize(K);
    ranges = trainingData.getRanges();
    
    //Scale the training data if needed
    if( useScaling ){
        //Scale the training data between 0 and 1
        trainingData.scale(0, 1);
    }
    
    UINT ensembleSize = (UINT)ensemble.size();
    
    if( ensembleSize == 0 ){
        errorLog << "train(LabelledClassificationData trainingData) - The ensemble size is zero! You need to add some classifiers to the ensemble first." << endl;
        return false;
    }
    
    for(UINT i=0; i<ensembleSize; i++){
        if( ensemble[i] == NULL ){
            errorLog << "train(LabelledClassificationData trainingData) - The classifier at ensemble index " << i << " has not been set!" << endl;
            return false;
        }
    }

    //Train the ensemble
    for(UINT i=0; i<ensembleSize; i++){
        LabelledClassificationData boostedDataset = trainingData.getBootstrappedDataset();
        
        //Train the classifier with the bootstrapped dataset
        if( !ensemble[i]->train( boostedDataset ) ){
            errorLog << "train(LabelledClassificationData trainingData) - The classifier at ensemble index " << i << " failed training!" << endl;
            return false;
        }
    }
    
    //Set the class labels
    classLabels = trainingData.getClassLabels();
    
    //Flag that the algorithm has been trained
    trained = true;
    return trained;
}

bool BAG::predict(VectorDouble inputVector){
    
    if( !trained ){
        errorLog << "predict(VectorDouble inputVector) - Model Not Trained!" << endl;
        return false;
    }
    
    predictedClassLabel = 0;
	maxLikelihood = -10000;
    
    if( !trained ) return false;
    
	if( inputVector.size() != numInputDimensions ){
        errorLog << "predict(VectorDouble inputVector) - The size of the input vector (" << inputVector.size() << ") does not match the num features in the model (" << numInputDimensions << endl;
		return false;
	}
    
    if( useScaling ){
        for(UINT n=0; n<numInputDimensions; n++){
            inputVector[n] = scale(inputVector[n], ranges[n].minValue, ranges[n].maxValue, 0, 1);
        }
    }
    
    if( classLikelihoods.size() != numClasses ) classLikelihoods.resize(numClasses);
    if( classDistances.size() != numClasses ) classDistances.resize(numClasses);
    
    //Reset the likelihoods and distances
    for(UINT k=0; k<numClasses; k++){
        classLikelihoods[k] = 0;
        classDistances[k] = 0;
    }
    
    //Run the prediction for each classifier
    double sum = 0;
    UINT ensembleSize = (UINT)ensemble.size();
    for(UINT i=0; i<ensembleSize; i++){
        
        if( !ensemble[i]->predict(inputVector) ){
            errorLog << "predict(VectorDouble inputVector) - The " << i << " classifier in the ensemble failed prediction!" << endl;
            return false;
        }
        
        classLikelihoods[ getClassLabelIndexValue( ensemble[i]->getPredictedClassLabel() ) ] += weights[i];
        classDistances[ getClassLabelIndexValue( ensemble[i]->getPredictedClassLabel() ) ] += ensemble[i]->getMaximumLikelihood() * weights[i];
        
        sum += weights[i];
    }
    
    //Set the predicted class label as the most common class
    double maxCount = 0;
    UINT maxIndex = 0;
    for(UINT i=0; i<numClasses; i++){
        if( classLikelihoods[i] > maxCount ){
            maxIndex = i;
            maxCount = classLikelihoods[i];
        }
        classLikelihoods[i] /= sum;
        classDistances[i] /= double(ensembleSize);
    }
    
    predictedClassLabel = classLabels[ maxIndex ];
    maxLikelihood = classLikelihoods[ maxIndex ];
    
    return true;
}
    
bool BAG::reset(){
    
    //Reset all the classifiers
    for(UINT i=0; i<ensemble.size(); i++){
        if( ensemble[i] != NULL ){
            ensemble[i]->reset();
        }
    }
    
    return true;
}
    
bool BAG::clear(){
    
    //Clear the Classifier variables
    Classifier::clear();
    
    //Clear all the classifiers, but do not remove the ensemble
    for(UINT i=0; i<ensemble.size(); i++){
        if( ensemble[i] != NULL ){
            ensemble[i]->clear();
        }
    }
    
    return true;
}

bool BAG::saveModelToFile(string filename) const{

    if( !trained ) return false;
    
	std::fstream file; 
	file.open(filename.c_str(), std::ios::out);
    
    if( !saveModelToFile( file ) ){
        return false;
    }

	file.close();

	return true;
}
    
bool BAG::saveModelToFile(fstream &file) const{
    
    if(!file.is_open())
	{
		errorLog <<"saveModelToFile(fstream &file) - The file is not open!" << endl;
		return false;
	}
    
    const UINT ensembleSize = getEnsembleSize();
    
	//Write the header info
	file << "GRT_BAG_MODEL_FILE_V1.0\n";
    file << "Trained: " << trained << endl;
    file << "NumFeatures: " << numInputDimensions << endl;
	file << "NumClasses: " << numClasses << endl;
    file << "UseScaling: " << useScaling << endl;
    file << "UseNullRejection: " << useNullRejection << endl;
	
    ///Write the ranges if needed
    if( useScaling ){
        file << "Ranges: \n";
        for(UINT n=0; n<ranges.size(); n++){
            file << ranges[n].minValue << "\t" << ranges[n].maxValue << endl;
        }
    }
    
    //Save the class labels
    file << "ClassLabels: ";
    for(UINT i=0; i<numClasses; i++){
        file << classLabels[i];
        if( i < numClasses-1 ) file << "\t";
        else file << "\n";
    }
    
    file << "EnsembleSize: " << ensembleSize << endl;
    
    if( getEnsembleSize() > 0 ){
        
        //Save the weights
        file << "Weights: ";
        for(UINT i=0; i<getEnsembleSize(); i++){
            file << weights[i];
            if( i < ensembleSize-1 ) file << "\t";
            else file << "\n";
        }
        
        //Save the classifier types
        file << "ClassifierTypes: ";
        for(UINT i=0; i<getEnsembleSize(); i++){
            file << ensemble[i]->getClassifierType() << endl;
        }
        
        //Save the ensemble
        file << "Ensemble: \n";
        for(UINT i=0; i<getEnsembleSize(); i++){
            if( !ensemble[i]->saveModelToFile( file ) ){
                errorLog <<"saveModelToFile(fstream &file) - Failed to save classifier " << i << " to file!" << endl;
                return false;
            }
        }
    }
    
    //NOTE: We do not need to close the file
    
    return true;
}

bool BAG::loadModelFromFile(string filename){

	std::fstream file; 
	file.open(filename.c_str(), std::ios::in);
    
    if( !loadModelFromFile( file ) ){
        return false;
    }
    
    file.close();

	return true;

}
    
bool BAG::loadModelFromFile(fstream &file){
    
    clear();
    UINT ensembleSize = 0;
    
    if(!file.is_open())
    {
        errorLog << "loadModelFromFile(string filename) - Could not open file to load model" << endl;
        return false;
    }
    
    std::string word;
    
    //Find the file type header
    file >> word;
    if(word != "GRT_BAG_MODEL_FILE_V1.0"){
        errorLog << "loadModelFromFile(string filename) - Could not find Model File Header" << endl;
        return false;
    }
    
    file >> word;
    if(word != "Trained:"){
        errorLog << "loadModelFromFile(string filename) - Could not find Trained Header" << endl;
        return false;
    }
    file >> trained;
    
    file >> word;
    if(word != "NumFeatures:"){
        errorLog << "loadModelFromFile(string filename) - Could not find NumFeatures!" << endl;
        return false;
    }
    file >> numInputDimensions;
    
    file >> word;
    if(word != "NumClasses:"){
        errorLog << "loadModelFromFile(string filename) - Could not find NumClasses!" << endl;
        return false;
    }
    file >> numClasses;
    
    file >> word;
    if(word != "UseScaling:"){
        errorLog << "loadModelFromFile(string filename) - Could not find UseScaling!" << endl;
        return false;
    }
    file >> useScaling;
    
    file >> word;
    if(word != "UseNullRejection:"){
        errorLog << "loadModelFromFile(string filename) - Could not find UseNullRejection!" << endl;
        return false;
    }
    file >> useNullRejection;
    
    ///Read the ranges if needed
    if( useScaling ){
        //Resize the ranges buffer
        ranges.resize(numInputDimensions);
        
        file >> word;
        if(word != "Ranges:"){
            errorLog << "loadModelFromFile(string filename) - Could not find the Ranges!" << endl;
            return false;
        }
        for(UINT n=0; n<ranges.size(); n++){
            file >> ranges[n].minValue;
            file >> ranges[n].maxValue;
        }
    }
    
    //Resize the buffer
    classLabels.resize(numClasses);
    
    //Load the class labels
    file >> word;
    if(word != "ClassLabels:"){
        errorLog << "loadModelFromFile(string filename) - Could not find the ClassLabels!" << endl;
        return false;
    }
    for(UINT i=0; i<numClasses; i++){
        file >> classLabels[i];
    }
    
    //Load the ensemble size
    file >> word;
    if(word != "EnsembleSize:"){
        errorLog << "loadModelFromFile(string filename) - Could not find the EnsembleSize!" << endl;
        return false;
    }
    file >> ensembleSize;
    
    if( ensembleSize > 0 ){
        
        //Load the weights
        weights.resize( ensembleSize );
        
        file >> word;
        if(word != "Weights:"){
            errorLog << "loadModelFromFile(string filename) - Could not find the Weights!" << endl;
            return false;
        }
        for(UINT i=0; i<ensembleSize; i++){
            file >> weights[i];
        }
        
        //Load the classifier types
        vector< string > classifierTypes( ensembleSize );
        
        file >> word;
        if(word != "ClassifierTypes:"){
            errorLog << "loadModelFromFile(string filename) - Could not find the ClassifierTypes!" << endl;
            return false;
        }
        for(UINT i=0; i<ensembleSize; i++){
            file >> classifierTypes[i];
        }
        
        //Load the ensemble
        file >> word;
        if(word != "Ensemble:"){
            errorLog << "loadModelFromFile(string filename) - Could not find the Ensemble!" << endl;
            return false;
        }
        ensemble.resize(ensembleSize,NULL);
        for(UINT i=0; i<ensembleSize; i++){
            ensemble[i] = createInstanceFromString( classifierTypes[i] );
            
            if( ensemble[i] == NULL ){
                errorLog << "loadModelFromFile(string filename) - Could not create a new classifier instance from the classifierType: " << classifierTypes[i] << endl;
                clearEnsemble();
                return false;
            }
            
            if( !ensemble[i]->loadModelFromFile( file ) ){
                errorLog << "loadModelFromFile(string filename) - Failed to load ensemble classifier: " << i << endl;
                clearEnsemble();
                return false;
            }
        }
        
    }
    
    //Recompute the null rejection thresholds
    recomputeNullRejectionThresholds();
    
    //Resize the prediction results to make sure it is setup for realtime prediction
    maxLikelihood = DEFAULT_NULL_LIKELIHOOD_VALUE;
    bestDistance = DEFAULT_NULL_DISTANCE_VALUE;
    classLikelihoods.resize(numClasses,DEFAULT_NULL_LIKELIHOOD_VALUE);
    classDistances.resize(numClasses,DEFAULT_NULL_DISTANCE_VALUE);
    
    //Flag that the model has been trained
    trained = true;
    
    return true;
}
    
UINT BAG::getEnsembleSize() const{
    return (UINT)ensemble.size();
}
    
VectorDouble BAG::getEnsembleWeights() const{
    return weights;
}
    
const vector< Classifier* > BAG::getEnsemble() const{
    return ensemble;
}
    
bool BAG::addClassifierToEnsemble(const Classifier &classifier,double weight){
    
    trained = false;
    
    Classifier *newClassifier = classifier.createNewInstance();

    if( newClassifier == NULL ){
        return false;
    }
    
    if( !newClassifier->deepCopyFrom( &classifier ) ){
        return false;
    }

    weights.push_back( weight );
    ensemble.push_back( newClassifier );
    
    return false;
}

bool BAG::clearEnsemble(){
    
    trained = false;
    for(UINT i=0; i<ensemble.size(); i++){
        if( ensemble[i] != NULL ){
            delete ensemble[i];
            ensemble[i] = NULL;
        }
    }
    weights.clear();
    ensemble.clear();
    
    return true;
}
    
bool BAG::setWeights(const VectorDouble &weights){
    
    if( this->weights.size() != weights.size() ){
        return false;
    }
    this->weights = weights;
    return true;
}

} //End of namespace GRT

