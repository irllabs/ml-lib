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

 */

#ifndef GRT_KMEANS_HEADER
#define GRT_KMEANS_HEADER

#include "../../Util/GRTCommon.h"
#include "../../DataStructures/LabelledClassificationData.h"
#include "../../DataStructures/UnlabelledClassificationData.h"

namespace GRT{

class KMeans{

public:
	//Constructor,destructor
	KMeans();
    ~KMeans();
    
	bool predict(VectorDouble inputVector,UINT &predictedClassLabel,double &maxLikelihood,VectorDouble &classLikelihoods);
    bool train(LabelledClassificationData &trainingData,bool estimateClassLabels=true);
	bool train(UINT K,UnlabelledClassificationData &trainingData);
	bool train(UINT K, MatrixDouble &data);
	bool train(MatrixDouble &data,MatrixDouble &clusters);
	bool saveModelToFile(string fileName);
	bool loadModelFromFile(string fileName);

    //Getters
	UINT getNumClusters(){ return K; }
	UINT getNumDimensions(){ return N; }
    UINT getNumTrainingIterations(){ return numTrainingIterations; }
	double getTheta(){ return finalTheta; }
	bool getModelTrained(){ return trained; }

    VectorDouble getTrainingThetaLog(){ return thetaTracker; }
    MatrixDouble getClusters(){ return clusters; }
    vector< UINT > getClassLabelsVector(){ return assign; }
    vector< UINT > getClassCountVector(){ return count; }
    
    //Setters
    bool setComputeTheta(bool computeTheta);
    bool setMinChange(double minChange);
    bool setMinNumEpochs(UINT minNumEpochs);
    bool setMaxNumEpochs(UINT maxNumEpochs);

private:
	bool train(MatrixDouble &data);
    UINT estep(const MatrixDouble &data);
	void mstep(const MatrixDouble &data);
	double calculateTheta(const MatrixDouble &data);
	inline double SQR(const double a) {return a*a;};

	UINT M;                             //Number of training examples
	UINT N;                             //Number of dimensions
	UINT K;                             //Number of clusters
	UINT nchg;                          //Number of values changes
    UINT minNumEpochs;      
    UINT maxNumEpochs;
    UINT numTrainingIterations;
	double finalTheta;
    double minChange;
	vector<UINT> classLabels;
    MatrixDouble clusters;
	vector< UINT > assign, count;
    VectorDouble thetaTracker;
	bool computeTheta;
    bool trained;
		
};
    
}//End of namespace GRT

#endif //GRT_KMEANS_HEADER
