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

#ifndef GRT_PRE_PROCESSING_HEADER
#define GRT_PRE_PROCESSING_HEADER

#include "GRTBase.h"

namespace GRT{

class PreProcessing : public GRTBase
{
public:
	PreProcessing(void);
	
	virtual ~PreProcessing(void);
    
    //Clone method
    virtual bool deepCopyFrom(const PreProcessing *rhs){ return false; }
    
    bool copyBaseVariables(const PreProcessing *preProcessingModule);

    //Training methods
    virtual bool process(const VectorDouble &inputVector){ return false; }
    
    /**
     This is the main reset interface for all the GRT preprocessing modules. This should be overwritten by the derived class.
     
     @return returns true if the derived class was reset succesfully, false otherwise (the base class always returns true)
     */
    virtual bool reset(){
        
        //Reset the processed data vector
        if( processedData.size() > 0 )
            fill(processedData.begin(),processedData.end(),0);
        
        return true;
    }
    
    /**
     This is the main clear interface for all the GRT preprocessing modules. This should be overwritten by the derived class.
     It will completely clear the module, removing any IO values setting and all the base variables to their default values.
     
     @return returns true if the derived class was cleared succesfully, false otherwise
     */
    virtual bool clear(){
        initialized = false;
        numInputDimensions = 0;
        numOutputDimensions = 0;
        processedData.clear();
        return true;
    }
    
    virtual bool saveSettingsToFile(string filename){ return false; }
    virtual bool saveSettingsToFile(fstream &file){ return false; }
    virtual bool loadSettingsFromFile(string filename){ return false; }
    virtual bool loadSettingsFromFile(fstream &file){ return false; }
    
    //Getters
	string getPreProcessingType() const;
	UINT getNumInputDimensions() const;
	UINT getNumOutputDimensions() const;
	bool getInitialized() const;
	VectorDouble getProcessedData() const;
    
    //Setters

	typedef map< string, PreProcessing*(*)() > StringPreProcessingMap;
    static PreProcessing* createInstanceFromString(string const &preProcessingType);
    PreProcessing* createNewInstance() const;
    
protected:
    bool init();
    bool savePreProcessingSettingsToFile(fstream &file) const;
    bool loadPreProcessingSettingsFromFile(fstream &file);
    
    string preProcessingType;
    bool initialized;
    UINT numInputDimensions;
    UINT numOutputDimensions;
    VectorDouble processedData;

	static StringPreProcessingMap *getMap() {
        if( !stringPreProcessingMap ){ stringPreProcessingMap = new StringPreProcessingMap; } 
        return stringPreProcessingMap; 
    }

private:
    static StringPreProcessingMap *stringPreProcessingMap;
    static UINT numPreProcessingInstances;
};

//These two functions/classes are used to register any new PreProcessing Module with the PreProcessing base class
template< typename T >  PreProcessing *newPreProcessingModuleInstance() { return new T; }

template< typename T > 
class RegisterPreProcessingModule : PreProcessing { 
public:
    RegisterPreProcessingModule(string const &newPreProcessingModuleName) { 
        getMap()->insert( std::pair<string, PreProcessing*(*)()>(newPreProcessingModuleName, &newPreProcessingModuleInstance< T > ) );
    }
};

} //End of namespace GRT

#endif // GRT_POST_PROCESSING_HEADER


