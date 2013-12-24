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

#ifndef GRT_POST_PROCESSING_HEADER
#define GRT_POST_PROCESSING_HEADER

#include "GRTBase.h"

namespace GRT{

class PostProcessing : public GRTBase
{
public:
	PostProcessing(void);
	
	virtual ~PostProcessing(void);
    
    //Clone method
	virtual bool deepCopyFrom(const PostProcessing *postProcessing){ return false; }
    
	bool copyBaseVariables(const PostProcessing *postProcessingModule);

    virtual bool process(const vector< double > &inputVector){ return false; }
    
    virtual bool reset(){ return true; }
    
    virtual bool saveSettingsToFile(string filename){ return false; }
    virtual bool saveSettingsToFile(fstream &file){ return false; }
    virtual bool loadSettingsFromFile(string filename){ return false; }
    virtual bool loadSettingsFromFile(fstream &file){ return false; }
	
    //Getters
	string getPostProcessingType() const;
	UINT getPostProcessingInputMode() const;
	UINT getPostProcessingOutputMode() const;
	UINT getNumInputDimensions() const;
	UINT getNumOutputDimensions() const; 
	bool getInitialized() const;
	bool getIsPostProcessingInputModePredictedClassLabel() const;
	bool getIsPostProcessingInputModeClassLikelihoods() const;
	bool getIsPostProcessingOutputModePredictedClassLabel() const;
	bool getIsPostProcessingOutputModeClassLikelihoods() const;
	vector< double > getProcessedData() const;
    
    //Setters
    
	typedef map< string, PostProcessing*(*)() > StringPostProcessingMap;
    static PostProcessing* createInstanceFromString(string const &postProcessingType);
    PostProcessing* createNewInstance() const;
    
protected:
    string postProcessingType;
    bool initialized;
    UINT numInputDimensions;
    UINT numOutputDimensions;
    UINT postProcessingInputMode;
    UINT postProcessingOutputMode;
    vector< double > processedData;
    
    enum PostprocessingInputModes{INPUT_MODE_NOT_SET=0,INPUT_MODE_PREDICTED_CLASS_LABEL,INPUT_MODE_CLASS_LIKELIHOODS};
    enum PostprocessingOutputModes{OUTPUT_MODE_NOT_SET=0,OUTPUT_MODE_PREDICTED_CLASS_LABEL,OUTPUT_MODE_CLASS_LIKELIHOODS};

	static StringPostProcessingMap *getMap() {
        if( !stringPostProcessingMap ){ stringPostProcessingMap = new StringPostProcessingMap; } 
        return stringPostProcessingMap; 
    }

private:
    static StringPostProcessingMap *stringPostProcessingMap;
    static UINT numPostProcessingInstances;

};

//These two functions/classes are used to register any new PostProcessing Module with the PostProcessing base class
template< typename T >  PostProcessing *newPostProcessingModuleInstance() { return new T; }

template< typename T > 
class RegisterPostProcessingModule : PostProcessing { 
public:
    RegisterPostProcessingModule(string const &newPostProcessingModuleName) { 
        getMap()->insert( std::pair<string, PostProcessing*(*)()>(newPostProcessingModuleName, &newPostProcessingModuleInstance< T > ) );
    }
};

} //End of namespace GRT

#endif //GRT_POST_PROCESSING_HEADER

