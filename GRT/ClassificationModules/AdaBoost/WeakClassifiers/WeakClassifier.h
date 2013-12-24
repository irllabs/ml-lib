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

#ifndef GRT_WEAK_CLASSIFIER_HEADER
#define GRT_WEAK_CLASSIFIER_HEADER

#include "../../../Util/GRTCommon.h"
#include "../../../DataStructures/LabelledClassificationData.h"

namespace GRT{
    
#define WEAK_CLASSIFIER_POSITIVE_CLASS_LABEL 1
#define WEAK_CLASSIFIER_NEGATIVE_CLASS_LABEL 2
    
class WeakClassifier{
public:
    WeakClassifier();
    virtual ~WeakClassifier();
    
    WeakClassifier(const WeakClassifier &rhs){
        *this = rhs;
    }
    
    WeakClassifier& operator=(const WeakClassifier &rhs){
        if( this != &rhs ){
            this->weakClassifierType = rhs.weakClassifierType;
            this->trained = rhs.trained;
            this->numInputDimensions = rhs.numInputDimensions;
        }
        return *this;
    }
    
    bool copyBaseVariables(const WeakClassifier *weakClassifer){
        if( weakClassifer == NULL ){
            errorLog << "copyBaseVariables(const WeakClassifier *rhs) rhs is NULL!" << endl;
            return false;
        }
        this->weakClassifierType = weakClassifer->weakClassifierType;
        this->trained = weakClassifer->trained;
        this->numInputDimensions = weakClassifer->numInputDimensions;
        return true;
    }
    
    virtual bool clone(const WeakClassifier *weakClassifer){
        return false;
    }
    
    virtual bool train(LabelledClassificationData &trainingData, VectorDouble &weights){
        return false;
    }
    
    virtual double predict(const VectorDouble &x){
        return 0;
    }
    
    virtual bool saveModelToFile(fstream &file){ return false; }
    virtual bool loadModelFromFile(fstream &file){ return false; }
    
    virtual void print() const{}
    
    double getPositiveClassLabel() const{ return 1; }
    double getNegativeClassLabel() const{ return -1; }
    
    string getWeakClassifierType() const{
        return weakClassifierType;
    }
    
    bool getTrained() const{
        return trained;
    }
    
    UINT getNumInputDimensions() const{
        return numInputDimensions;
    }
    
    /**
     Defines a map between a string (which will contain the name of the WeakClassifier, such as DecisionStump) and a function returns a new instance of that WeakClassifier
     */
    typedef std::map< string, WeakClassifier*(*)() > StringWeakClassifierMap;
    
    /**
     Creates a new WeakClassifier instance based on the input string (which should contain the name of a valid WeakClassifier such as DecisionStump).
     
     @param string const &weakClassifierType: the name of the WeakClassifier
     @return WeakClassifier*: a pointer to the new instance of the WeakClassifier
     */
    static WeakClassifier* createInstanceFromString(string const &weakClassifierType);
    
    /**
     Creates a new WeakClassifier instance based on the current weakClassifierType string value.
     
     @return WeakClassifier*: a pointer to the new instance of the WeakClassifier
     */
    WeakClassifier* createNewInstance() const;
    
protected:
    string weakClassifierType;
    bool trained;
    UINT numInputDimensions;
    
    static StringWeakClassifierMap *getMap() {
        if( !stringWeakClassifierMap ){ stringWeakClassifierMap = new StringWeakClassifierMap; }
        return stringWeakClassifierMap;
    }
    
    TrainingLog trainingLog;
    ErrorLog errorLog;
    WarningLog warningLog;
    
private:
    static StringWeakClassifierMap *stringWeakClassifierMap;
    static UINT numWeakClassifierInstances;
};
    
//These two functions/classes are used to register any new WeakClassification Module with the WeakClassifier base class
template< typename T >  WeakClassifier *newWeakClassificationModuleInstance() { return new T; }

template< typename T >
class RegisterWeakClassifierModule : WeakClassifier {
public:
    RegisterWeakClassifierModule(string const &newWeakClassificationModuleName) {
        getMap()->insert( std::pair<string, WeakClassifier*(*)()>(newWeakClassificationModuleName, &newWeakClassificationModuleInstance< T > ) );
    }
};

} //End of namespace GRT

#endif //GRT_WEAK_CLASSIFIER_HEADER