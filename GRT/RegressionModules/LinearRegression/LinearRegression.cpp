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

#include "LinearRegression.h"

namespace GRT{

//Register the LinearRegression module with the Classifier base class
RegisterRegressifierModule< LinearRegression >  LinearRegression::registerModule("LinearRegression");

LinearRegression::LinearRegression(bool useScaling)
{
    this->useScaling = useScaling;
    minChange = 1.0e-5;
    maxNumEpochs = 500;
    learningRate = 0.01;
    regressifierType = "LinearRegression";
    debugLog.setProceedingText("[DEBUG LinearRegression]");
    errorLog.setProceedingText("[ERROR LinearRegression]");
    trainingLog.setProceedingText("[TRAINING LinearRegression]");
    warningLog.setProceedingText("[WARNING LinearRegression]");
}

LinearRegression::~LinearRegression(void)
{
}
    
LinearRegression& LinearRegression::operator=(const LinearRegression &rhs){
	if( this != &rhs ){
        this->w0 = rhs.w0;
        this->w = rhs.w;
        
        //Copy the base variables
        copyBaseVariables( (Regressifier*)&rhs );
	}
	return *this;
}

bool LinearRegression::deepCopyFrom(const Regressifier *regressifier){
    
    if( regressifier == NULL ) return false;
    
    if( this->getRegressifierType() == regressifier->getRegressifierType() ){
        
        const LinearRegression *ptr = dynamic_cast<const LinearRegression*>(regressifier);

        this->w0 = ptr->w0;
        this->w = ptr->w;
        
        //Copy the base variables
        return copyBaseVariables( regressifier );
    }
    return false;
}

bool LinearRegression::train(LabelledRegressionData trainingData){
    
    const unsigned int M = trainingData.getNumSamples();
    const unsigned int N = trainingData.getNumInputDimensions();
    const unsigned int K = trainingData.getNumTargetDimensions();
    trained = false;
    trainingResults.clear();
    
    if( M == 0 ){
        errorLog << "train(LabelledRegressionData trainingData) - Training data has zero samples!" << endl;
        return false;
    }
    
    if( K == 0 ){
        errorLog << "train(LabelledRegressionData trainingData) - The number of target dimensions is not 1!" << endl;
        return false;
    }
    
    numInputDimensions = N;
    numOutputDimensions = 1; //Logistic Regression will have 1 output
    inputVectorRanges.clear();
    targetVectorRanges.clear();
    
    //Scale the training and validation data, if needed
	if( useScaling ){
		//Find the ranges for the input data
        inputVectorRanges = trainingData.getInputRanges();
        
        //Find the ranges for the target data
		targetVectorRanges = trainingData.getTargetRanges();
        
		//Scale the training data
		trainingData.scale(inputVectorRanges,targetVectorRanges,0.0,1.0);
	}
    
    //Reset the weights
    Random rand;
    w0 = rand.getRandomNumberUniform(-0.1,0.1);
    w.resize(N);
    for(UINT j=0; j<N; j++){
        w[j] = rand.getRandomNumberUniform(-0.1,0.1);
    }

    double error = 0;
    double lastError = 0;
    double delta = 0;
    UINT iter = 0;
    bool keepTraining = true;
    vector< UINT > randomTrainingOrder(M);
    TrainingResult result;
    trainingResults.reserve(M);
    
    //In most cases, the training data is grouped into classes (100 samples for class 1, followed by 100 samples for class 2, etc.)
    //This can cause a problem for stochastic gradient descent algorithm. To avoid this issue, we randomly shuffle the order of the
    //training samples. This random order is then used at each epoch.
    for(UINT i=0; i<M; i++){
        randomTrainingOrder[i] = i;
    }
    std::random_shuffle(randomTrainingOrder.begin(), randomTrainingOrder.end());
    
    //Run the main stochastic gradient descent training algorithm
    while( keepTraining ){
        
        //Run one epoch of training using stochastic gradient descent
        totalSquaredTrainingError = 0;
        for(UINT m=0; m<M; m++){
            
            //Select the random sample
            UINT i = randomTrainingOrder[m];
            
            //Compute the error, given the current weights
            VectorDouble x = trainingData[i].getInputVector();
            VectorDouble y = trainingData[i].getTargetVector();
            double h = w0;
            for(UINT j=0; j<N; j++){
                h += x[j] * w[j];
            }
            error = y[0] - h;
            totalSquaredTrainingError += SQR( error );
            
            //Update the weights
            for(UINT j=0; j<N; j++){
                w[j] += learningRate * error * x[j];
            }
            w0 += learningRate * error;
        }
        
        //Compute the error
        delta = fabs( totalSquaredTrainingError-lastError );
        lastError = totalSquaredTrainingError;
        
        //Check to see if we should stop
        if( delta <= minChange ){
            keepTraining = false;
        }
        
        if( isinf( totalSquaredTrainingError ) || isnan( totalSquaredTrainingError ) ){
            errorLog << "train(LabelledRegressionData &trainingData) - Training failed! Total squared training error is NAN. If scaling is not enabled then you should try to scale your data and see if this solves the issue." << endl;
            return false;
        }
        
        if( ++iter >= maxNumEpochs ){
            keepTraining = false;
        }
        
        //Store the training results
        rootMeanSquaredTrainingError = sqrt( totalSquaredTrainingError / double(M) );
        result.setRegressionResult(iter,totalSquaredTrainingError,rootMeanSquaredTrainingError);
        trainingResults.push_back( result );
        
        //Notify any observers of the new training data
        trainingResultsObserverManager.notifyObservers( result );
        
        trainingLog << "Epoch: " << iter << " SSE: " << totalSquaredTrainingError << " Delta: " << delta << endl;
    }
    
    //Flag that the algorithm has been trained
    regressionData.resize(1,0);
    trained = true;
    return trained;
}

bool LinearRegression::predict(VectorDouble inputVector){
    
    if( !trained ){
        errorLog << "predict(VectorDouble inputVector) - Model Not Trained!" << endl;
        return false;
    }
    
    if( !trained ) return false;
    
	if( inputVector.size() != numInputDimensions ){
        errorLog << "predict(VectorDouble inputVector) - The size of the input vector (" << int( inputVector.size() ) << ") does not match the num features in the model (" << numInputDimensions << endl;
		return false;
	}
    
    if( useScaling ){
        for(UINT n=0; n<numInputDimensions; n++){
            inputVector[n] = scale(inputVector[n], inputVectorRanges[n].minValue, inputVectorRanges[n].maxValue, 0, 1);
        }
    }
    
    regressionData[0] =  w0;
    for(UINT j=0; j<numInputDimensions; j++){
        regressionData[0] += inputVector[j] * w[j];
    }
    
    if( useScaling ){
        for(UINT n=0; n<numOutputDimensions; n++){
            regressionData[n] = scale(regressionData[n], 0, 1, targetVectorRanges[n].minValue, targetVectorRanges[n].maxValue);
        }
    }
    
    return true;
}
    
bool LinearRegression::saveModelToFile(string filename) const{

    if( !trained ) return false;
    
	std::fstream file; 
	file.open(filename.c_str(), std::ios::out);
    
    if( !saveModelToFile( file ) ){
        return false;
    }

	file.close();

	return true;
}
    
bool LinearRegression::saveModelToFile(fstream &file) const{
    
    if(!file.is_open())
	{
        errorLog << "loadModelFromFile(fstream &file) - The file is not open!" << endl;
		return false;
	}
    
	//Write the header info
    file<<"GRT_LINEAR_REGRESSION_MODEL_FILE_V1.0\n";
    file<<"NumFeatures: "<<numInputDimensions<<endl;
	file<<"NumOutputDimensions: "<<numOutputDimensions<<endl;
    file <<"UseScaling: " << useScaling << endl;
	
    ///Write the ranges if needed
    if( useScaling ){
		file << "InputVectorRanges: \n";
		for(UINT j=0; j<numInputDimensions; j++){
			file << inputVectorRanges[j].minValue << "\t" << inputVectorRanges[j].maxValue << endl;
		}
		file << endl;
        
		file << "OutputVectorRanges: \n";
		for(UINT j=0; j<numOutputDimensions; j++){
			file << targetVectorRanges[j].minValue << "\t" << targetVectorRanges[j].maxValue << endl;
		}
		file << endl;
	}
    
    file << "Weights: ";
    file << w0;
    for(UINT j=0; j<numInputDimensions; j++){
        file << " " << w[j];
    }
    file << endl;
     
    return true;
}

bool LinearRegression::loadModelFromFile(string filename){

	std::fstream file; 
	file.open(filename.c_str(), std::ios::in);
    
    if( !loadModelFromFile( file ) ){
        return false;
    }
    
    file.close();

	return true;

}
    
bool LinearRegression::loadModelFromFile(fstream &file){
    
    trained = false;
    numInputDimensions = 0;
    w0 = 0;
    w.clear();
    
    if(!file.is_open())
    {
        errorLog << "loadModelFromFile(string filename) - Could not open file to load model" << endl;
        return false;
    }
    
    std::string word;
    
    //Find the file type header
    file >> word;
    if(word != "GRT_LINEAR_REGRESSION_MODEL_FILE_V1.0"){
        errorLog << "loadModelFromFile(string filename) - Could not find Model File Header" << endl;
        return false;
    }
    
    file >> word;
    if(word != "NumFeatures:"){
        errorLog << "loadModelFromFile(string filename) - Could not find NumFeatures!" << endl;
        return false;
    }
    file >> numInputDimensions;
    
    file >> word;
    if(word != "NumOutputDimensions:"){
        errorLog << "loadModelFromFile(string filename) - Could not find NumOutputDimensions!" << endl;
        return false;
    }
    file >> numOutputDimensions;
    
    file >> word;
    if(word != "UseScaling:"){
        errorLog << "loadModelFromFile(string filename) - Could not find UseScaling!" << endl;
        return false;
    }
    file >> useScaling;
    
    ///Read the ranges if needed
    if( useScaling ){
        //Resize the ranges buffer
        inputVectorRanges.resize(numInputDimensions);
        targetVectorRanges.resize(numOutputDimensions);
        
        //Load the ranges
		file >> word;
		if(word != "InputVectorRanges:"){
            file.close();
            errorLog << "loadModelFromFile(string filename) - Failed to find InputVectorRanges!" << endl;
			return false;
		}
		for(UINT j=0; j<inputVectorRanges.size(); j++){
			file >> inputVectorRanges[j].minValue;
			file >> inputVectorRanges[j].maxValue;
		}
        
		file >> word;
		if(word != "OutputVectorRanges:"){
			file.close();
            errorLog << "loadModelFromFile(string filename) - Failed to find OutputVectorRanges!" << endl;
			return false;
		}
		for(UINT j=0; j<targetVectorRanges.size(); j++){
			file >> targetVectorRanges[j].minValue;
			file >> targetVectorRanges[j].maxValue;
		}
    }
    
    //Resize the weights
    w.resize(numInputDimensions);
    
    //Load the weights
    file >> word;
    if(word != "Weights:"){
        errorLog << "loadModelFromFile(string filename) - Could not find the Weights!" << endl;
        return false;
    }
    
    file >> w0;
    for(UINT j=0; j<numInputDimensions; j++){
        file >> w[j];
    
    }
    
    //Resize the regression data vector
    regressionData.resize(1,0);
    
    //Flag that the model has been trained
    trained = true;

    return true;
}

bool LinearRegression::setMaxNumIterations(const UINT maxNumIterations){
    return setMaxNumEpochs( maxNumIterations );
}

UINT LinearRegression::getMaxNumIterations() const{
    return getMaxNumEpochs();
}

} //End of namespace GRT

