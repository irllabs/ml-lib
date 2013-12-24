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
 The TestResult class provides a data structure for storing the results of a classification or regression test.
 */

#ifndef GRT_TEST_RESULT_HEADER
#define GRT_TEST_RESULT_HEADER

#include "GRTTypedefs.h"
#include "MatrixDouble.h"

namespace GRT {

class TestResult{
public:
    /**
     Default Constructor.
     
     Initializes the TestResult instance.
     */
    TestResult(){
    }
    
    /**
     Copy Constructor.
     
     Initializes this instance by copying the data from the rhs instance
     
     @param const TestResult &rhs: another instance of the TestResult class
     */
    TestResult(const TestResult &rhs){
        *this = rhs;
    }
    
    /**
     Default Destructor.
     */
    ~TestResult(){
        
    }

    TestResult& operator=(const TestResult &rhs){
        if( this != &rhs ){
            this->numTrainingSamples = rhs.numTrainingSamples;
            this->numTestSamples = rhs.numTestSamples;
            this->accuracy = rhs.accuracy;
            this->rmsError = rhs.rmsError;
            this->totalSquaredError = rhs.totalSquaredError;
            this->trainingTime = rhs.trainingTime;
            this->testTime = rhs.testTime;
            this->rejectionPrecision = rhs.rejectionPrecision;
            this->rejectionRecall = rhs.rejectionRecall;
            this->precision = rhs.precision;
            this->recall = rhs.recall;
            this->fMeasure = rhs.fMeasure;
            this->confusionMatrix = rhs.confusionMatrix;
        }
        return *this;
    }
    
    unsigned int numTrainingSamples;
    unsigned int numTestSamples;
    double accuracy;
    double rmsError;
    double totalSquaredError;
    double trainingTime;
    double testTime;
    double rejectionPrecision;
    double rejectionRecall;
    VectorDouble precision;
    VectorDouble recall;
    VectorDouble fMeasure;
    MatrixDouble confusionMatrix;

};

}//End of namespace GRT

#endif //GRT_TEST_RESULT_HEADER
