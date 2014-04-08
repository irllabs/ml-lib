/**
 @file
 @author  Nicholas Gillian <ngillian@media.mit.edu>
 @version 1.0
 
 @brief This class implements a basic Hierarchial Clustering algorithm.
 */

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

#ifndef GRT_HIERARCHICAL_CLUSTERING_HEADER
#define GRT_HIERARCHICAL_CLUSTERING_HEADER

#include "../../Util/GRTCommon.h"
#include "../../DataStructures/LabelledClassificationData.h"
#include "../../DataStructures/UnlabelledClassificationData.h"

namespace GRT{
    
class ClusterInfo{
public:
    ClusterInfo(){
        uniqueClusterID = 0;
        clusterVariance = 0;
    }
    ClusterInfo(const ClusterInfo &rhs){
        *this = rhs;
    }
    ~ClusterInfo(){
        
    }
    
    ClusterInfo& operator=(const ClusterInfo &rhs){
        
        if( this != &rhs ){
            this->uniqueClusterID = rhs.uniqueClusterID;
            this->clusterVariance = rhs.clusterVariance;
            this->indexs = rhs.indexs;
        }
        
        return *this;
    }
    
    UINT& operator[](const UINT &i){
        return indexs[i];
    }
    
    UINT operator[](const UINT &i) const{
        return indexs[i];
    }
    
    void addSampleToCluster(UINT i){
        indexs.push_back( i );
    }
    
    UINT getUniqueClusterID() const{
        return uniqueClusterID;
    }
    
    UINT getNumSamplesInCluster() const{
        return (UINT)indexs.size();
    }
    
    double getClusterVariance() const{
        return clusterVariance;
    }
    
    unsigned int uniqueClusterID;
    double clusterVariance;
    vector< UINT > indexs;
};
    
class ClusterLevel{
public:
    ClusterLevel(){
        level = 0;
    }
    
    ClusterLevel(const ClusterLevel &rhs){
        *this = rhs;
    }
    
    ~ClusterLevel(){
        
    }
    
    ClusterLevel& operator=(const ClusterLevel &rhs){
        
        if( this != &rhs ){
            this->level = rhs.level;
            this->clusters = rhs.clusters;
        }
        
        return *this;
    }
    
    ClusterInfo& operator[](const UINT &i){
        return clusters[i];
    }
    
    ClusterInfo operator[](const UINT &i) const{
        return clusters[i];
    }
    
    UINT getLevel() const{
        return level;
    }
    
    UINT getNumClusters() const{
        return (UINT)clusters.size();
    }
    
    unsigned int level;
    vector< ClusterInfo > clusters;
};

class HierarchicalClustering{

public:
	//Constructor,destructor
	HierarchicalClustering();
    ~HierarchicalClustering();
    
    bool train(LabelledClassificationData &trainingData);
	bool train(UnlabelledClassificationData &trainingData);
	bool train(MatrixDouble &data);
    
    bool printModel();
    
    vector< ClusterLevel > getClusters(){ return clusters; }

private:
	inline double SQR(const double &a) {return a*a;};
    double squaredEuclideanDistance(const double *a,const double *b);
    double computeClusterDistance( const ClusterInfo &clusterA, const ClusterInfo &clusterB );
    double computeClusterVariance( const ClusterInfo &cluster, const MatrixDouble &data );

	UINT M;                             //Number of training examples
	UINT N;                             //Number of dimensions
    bool trained;
    vector< ClusterLevel > clusters;
    MatrixDouble distanceMatrix;                     //The distance matrix
	
		
};
    
}//End of namespace GRT

#endif //GRT_HIERARCHICAL_CLUSTERING_HEADER
