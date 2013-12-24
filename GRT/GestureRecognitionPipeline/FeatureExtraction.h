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
 This is the main base class that all GRT Feature Extraction algorithms should inherit from.  A large number of the
 functions in this class are virtual and simply return false as these functions must be overwridden by the inheriting
 class.
 */

#ifndef GRT_FEATURE_EXTRACTION_HEADER
#define GRT_FEATURE_EXTRACTION_HEADER

#include "GRTBase.h"

namespace GRT{

    class FeatureExtraction :public GRTBase
{
public:
    /**
     Default FeatureExtraction Constructor
     */
	FeatureExtraction(void);
    
    /**
     Default FeatureExtraction Destructor
     */
	virtual ~FeatureExtraction(void);
    
    /**
     This is the base deepCopyFrom function for the FeatureExtraction modules. This function should be overwritten by the derived class.
     
     @param const FeatureExtraction *featureExtraction: a pointer to the FeatureExtraction base class, this should be pointing to another instance of a matching derived class
     @return returns true if the deep copy was successfull, false otherwise (the FeatureExtraction base class will always return flase)
     */
    virtual bool deepCopyFrom(const FeatureExtraction *rhs){ return false; };
    
    /**
     This copies the FeatureExtraction variables from featureExtractionModule to the instance that calls the function.
     
     @param const FeatureExtraction *featureExtractionModule: a pointer to a feature extraction module from which the values will be copied
     @return returns true if the copy was successfull, false otherwise
     */
    bool copyBaseVariables(const FeatureExtraction *featureExtractionModule);

    /**
     This function is called by the GestureRecognitionPipeline when any new input data needs to be processed (during the prediction phase for example).
     This function should be overwritten by the derived class.
     
     @param const VectorDouble &inputVector: the inputVector that should be processed
     @return returns true if the data was processed, false otherwise (the base class always returns false)
     */
    virtual bool computeFeatures(const VectorDouble &inputVector){ return false; }
    
    /**
     This function is called by the GestureRecognitionPipeline's reset function.
     This function should be overwritten by the derived class.
     
     @return returns true if the module was reset, false otherwise (the base class always returns true)
     */
    virtual bool reset(){ return true; }
    
    /**
     This saves the feature extraction settings to a file.
     This function should be overwritten by the derived class.
     
     @param string filename: the name of the file to save the settings to
     @return returns true if the settings were saved successfully, false otherwise (the base class always returns false)
     */
    virtual bool saveSettingsToFile(string filename){ return false; }
    
    /**
     This loads the feature extraction settings from a file.
     This function should be overwritten by the derived class.
     
     @param string filename: the name of the file to load the settings from
     @return returns true if the settings were loaded successfully, false otherwise (the base class always returns false)
     */
    virtual bool loadSettingsFromFile(string filename){ return false; }
    
    /**
     This saves the feature extraction settings to a file.
     This function should be overwritten by the derived class.
     
     @param fstream &file: a reference to the file to save the settings to
     @return returns true if the settings were saved successfully, false otherwise (the base class always returns false)
     */
    virtual bool saveSettingsToFile(fstream &file){ return false; }
    
    /**
     This loads the feature extraction settings from a file.
     This function should be overwritten by the derived class.
     
     @param fstream &file: a reference to the file to load the settings from
     @return returns true if the settings were loaded successfully, false otherwise (the base class always returns false)
     */
    virtual bool loadSettingsFromFile(fstream &file){ return false; }
	
    /**
     Returns the feature extraction type as a string.
     
     @return returns the feature extraction type as a string
     */
    string getFeatureExtractionType() const;
    
    /**
     Returns the size of the input vector expected by the feature extraction module.
     
     @return returns the size of the input vector expected by the feature extraction module
     */
    UINT getNumInputDimensions() const;
    
    /**
     Returns the size of the feature vector that will be computed by the feature extraction module.
     
     @return returns the size of the feature vector that will be computed by the feature extraction module
     */
    UINT getNumOutputDimensions() const;
    
    /**
     Returns true if the feature extraction module has been initialized correctly.
     
     @return returns true if the feature extraction module has been initialized succesfully, false otherwise
     */
    bool getInitialized() const;
    
    /**
     Returns true if the feature extraction module has just processed the last input vector and a new output feature vector is ready.
     
     @return returns true if the feature extraction module has just processed the last input vector and a new output feature vector is ready, false otherwise
     */
    bool getFeatureDataReady() const;
    
    /**
     Returns the current feature vector.
     
     @return returns the current feature vector, this vector will be empty if the module has not been initialized
     */
    VectorDouble getFeatureVector() const;
    
    /**
     Creates a new feature extraction instance based on the current featureExtractionType string value.
     
     @return FeatureExtraction*: a pointer to the new instance of the featureExtraction
     */
    
    /**
     Defines a map between a string (which will contain the name of the featureExtraction module, such as FFT) and a function returns a new instance of that featureExtraction
     */
    typedef map< string, FeatureExtraction*(*)() > StringFeatureExtractionMap;
    
    /*
     Creates a new feature extraction instance based on the input string (which should contain the name of a valid feature extraction such as FFT).
    
    @param string const &featureExtractionType: the name of the feature extraction module
    @return FeatureExtraction*: a pointer to the new instance of the feature extraction
    */
    static FeatureExtraction* createInstanceFromString(string const &featureExtractionType);
    
    /**
     Creates a new feature extraction instance based on the current featureExtractionType string value.
     
     @return FeatureExtraction*: a pointer to the new instance of the feature extraction
     */
    FeatureExtraction* createNewInstance() const;
    
protected:
    inline double SQR(double x){ return x*x; }
    bool saveBaseSettingsToFile(fstream &file);
    bool loadBaseSettingsFromFile(fstream &file);
    
    string featureExtractionType;
    bool initialized;
    bool featureDataReady;
    UINT numInputDimensions;
    UINT numOutputDimensions;
    VectorDouble featureVector;
    static StringFeatureExtractionMap *getMap() {
        if( !stringFeatureExtractionMap ){ stringFeatureExtractionMap = new StringFeatureExtractionMap; } 
        return stringFeatureExtractionMap; 
    }
    
private:
    static StringFeatureExtractionMap *stringFeatureExtractionMap;
    static UINT numFeatureExtractionInstances;
    
};
    
//These two functions/classes are used to register any new FeatureExtraction Module with the FeatureExtraction base class
template< typename T >  FeatureExtraction *newFeatureExtractionModuleInstance() { return new T; }

template< typename T > 
class RegisterFeatureExtractionModule : FeatureExtraction { 
public:
    RegisterFeatureExtractionModule(string const &newFeatureExtractionModuleName) { 
        getMap()->insert( std::pair<string, FeatureExtraction*(*)()>(newFeatureExtractionModuleName, &newFeatureExtractionModuleInstance< T > ) );
    }
};

} //End of namespace GRT

#endif //GRT_FEATURE_EXTRACTION_HEADER
