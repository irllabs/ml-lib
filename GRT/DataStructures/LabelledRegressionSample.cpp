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

#include "LabelledRegressionSample.h"

namespace GRT{

LabelledRegressionSample::LabelledRegressionSample(){
}

LabelledRegressionSample::LabelledRegressionSample(const VectorDouble &inputVector,const VectorDouble &targetVector){
	this->inputVector = inputVector;
	this->targetVector = targetVector;
}

LabelledRegressionSample::LabelledRegressionSample(const LabelledRegressionSample &rhs){
	this->inputVector = rhs.inputVector;
	this->targetVector = rhs.targetVector;
}

LabelledRegressionSample::~LabelledRegressionSample(){
}

void LabelledRegressionSample::clear(){
	inputVector.clear();
	targetVector.clear();
}

void LabelledRegressionSample::set(const VectorDouble &inputVector,const VectorDouble &targetVector){
	this->inputVector = inputVector;
	this->targetVector = targetVector;
}

UINT LabelledRegressionSample::getNumInputDimensions() const{
    return (UINT)inputVector.size();
}

UINT LabelledRegressionSample::getNumTargetDimensions() const{
    return (UINT)targetVector.size();
}
    
double LabelledRegressionSample::getInputVectorValue(const UINT index) const{
    if( index < inputVector.size() ) return inputVector[index];
    else return 0;
}
double LabelledRegressionSample::getTargetVectorValue(const UINT index) const{
    if( index < targetVector.size() ) return targetVector[index];
    else return 0;
}

const VectorDouble& LabelledRegressionSample::getInputVector() const{
    return inputVector;
}

const VectorDouble& LabelledRegressionSample::getTargetVector() const{
    return targetVector;
}
	
} //End of namespace GRT

