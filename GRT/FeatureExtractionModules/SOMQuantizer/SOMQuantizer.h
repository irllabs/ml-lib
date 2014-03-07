/**
 @file
 @author  Nicholas Gillian <ngillian@media.mit.edu>
 @version 1.0
 
 @brief The SOMQuantizer module quantizes the N-dimensional input vector to a 1-dimensional discrete value. 
 This value will be between [0 K-1], where K is the number of clusters used to create the quantization model. 
 Before you use the SOMQuantizer, you need to train a quantization model. To do this, you select the number 
 of clusters you want your quantizer to have and then give it any training data in the following formats:
 - LabelledClassificationData
 - LabelledTimeSeriesClassificationData
 - LabelledContinuousTimeSeriesClassificationData
 - UnlabelledClassificationData
 - MatrixDouble
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

#ifndef GRT_SOM_QUANTIZER_HEADER
#define GRT_SOM_QUANTIZER_HEADER

//Include the main GRT header to get access to the FeatureExtraction base class
#include "../../CoreModules/FeatureExtraction.h"
#include "../../ClusteringModules/SelfOrganizingMap/SelfOrganizingMap.h"
#include "../../DataStructures/LabelledTimeSeriesClassificationData.h"
#include "../../DataStructures/LabelledContinuousTimeSeriesClassificationData.h"
#include "../../DataStructures/UnlabelledClassificationData.h"

namespace GRT{
    
class SOMQuantizer : public FeatureExtraction{
public:
    /**
     Default constructor. Initalizes the SOMQuantizer, setting the number of input dimensions and the number of clusters to use in the quantization model.
	
	@param const UINT numDimensions: the number of dimensions in the input data
    @param const UINT numClusters: the number of quantization clusters
     */
    SOMQuantizer(const UINT numDimensions=1,const UINT numClusters=10);
	
    /**
     Copy constructor, copies the SOMQuantizer from the rhs instance to this instance.
     
     @param const SOMQuantizer &rhs: another instance of this class from which the data will be copied to this instance
     */
    SOMQuantizer(const SOMQuantizer &rhs);
    
    /**
     Default Destructor
     */
    virtual ~SOMQuantizer();
    
    /**
     Sets the equals operator, copies the data from the rhs instance to this instance.
     
     @param const SOMQuantizer &rhs: another instance of this class from which the data will be copied to this instance
     @return a reference to this instance
     */
    SOMQuantizer& operator=(const SOMQuantizer &rhs);

    /**
     Sets the FeatureExtraction deepCopyFrom function, overwriting the base FeatureExtraction function.
     This function is used to deep copy the values from the input pointer to this instance of the FeatureExtraction module.
     This function is called by the GestureRecognitionPipeline when the user adds a new FeatureExtraction module to the pipeleine.
     
     @param const FeatureExtraction *featureExtraction: a pointer to another instance of this class, the values of that instance will be cloned to this instance
     @return returns true if the deep copy was successful, false otherwise
     */
    virtual bool deepCopyFrom(const FeatureExtraction *featureExtraction);
    
    /**
     Sets the FeatureExtraction computeFeatures function, overwriting the base FeatureExtraction function.
     This function is called by the GestureRecognitionPipeline when any new input data needs to be processed (during the prediction phase for example).
     This is where you should add your main feature extraction code.
     
     @param const VectorDouble &inputVector: the inputVector that should be processed.  Must have the same dimensionality as the FeatureExtraction module
     @return returns true if the data was processed, false otherwise
     */
    virtual bool computeFeatures(const VectorDouble &inputVector);
    
    /**
     Sets the FeatureExtraction reset function, overwriting the base FeatureExtraction function.
     This function is called by the GestureRecognitionPipeline when the pipelines main reset() function is called.
     You should add any custom reset code to this function to define how your feature extraction module should be reset.
     
     @return true if the instance was reset, false otherwise
     */
    virtual bool reset();
    
    /**
     This saves the feature extraction settings to a file.
     This overrides the saveSettingsToFile function in the FeatureExtraction base class.
     
     @param string filename: the name of the file to save the settings to
     @return returns true if the settings were saved successfully, false otherwise
     */
    virtual bool saveSettingsToFile(string filename) const;
    
    /**
     This loads the feature extraction settings from a file.
     This overrides the loadSettingsFromFile function in the FeatureExtraction base class.
     
     @param string filename: the name of the file to load the settings from
     @return returns true if the settings were loaded successfully, false otherwise
     */
    virtual bool loadSettingsFromFile(string filename);
    
    /**
     This saves the feature extraction settings to a file.
     This overrides the saveSettingsToFile function in the FeatureExtraction base class.
     You should add your own custom code to this function to define how your feature extraction module is saved to a file.
     
     @param fstream &file: a reference to the file to save the settings to
     @return returns true if the settings were saved successfully, false otherwise
     */
    virtual bool saveSettingsToFile(fstream &file) const;
    
    /**
     This loads the feature extraction settings from a file.
     This overrides the loadSettingsFromFile function in the FeatureExtraction base class.
     
     @param fstream &file: a reference to the file to load the settings from
     @return returns true if the settings were loaded successfully, false otherwise
     */
    virtual bool loadSettingsFromFile(fstream &file);

    /**
     This initializes the SOMQuantizer, setting the number of input dimensions and the number of quantization clusters.
     
     @param UINT numDimensions: the number of dimensions in the input data
     @param UINT numClusters: the number of quantization clusters
     @return returns true if the quantizer was initialized successfully, false otherwise
     */
    bool init(const UINT numDimensions,const UINT numClusters);

    /**
     Trains the quantization model using the training dataset.
     
     @param LabelledClassificationData &trainingData: the training dataset that will be used to train the quantizer
     @return returns true if the quantizer was trained successfully, false otherwise
     */
    bool train(LabelledClassificationData &trainingData);

    /**
     Trains the quantization model using the training dataset.
     
     @param LabelledTimeSeriesClassificationData &trainingData: the training dataset that will be used to train the quantizer
     @return returns true if the quantizer was trained successfully, false otherwise
     */
    bool train(LabelledTimeSeriesClassificationData &trainingData);

    /**
     Trains the quantization model using the training dataset.
     
     @param LabelledContinuousTimeSeriesClassificationData &trainingData: the training dataset that will be used to train the quantizer
     @return returns true if the quantizer was trained successfully, false otherwise
     */
    bool train(LabelledContinuousTimeSeriesClassificationData &trainingData);

    /**
     Trains the quantization model using the training dataset.
     
     @param UnlabelledClassificationData &trainingData: the training dataset that will be used to train the quantizer
     @return returns true if the quantizer was trained successfully, false otherwise
     */
    bool train(UnlabelledClassificationData &trainingData);

    /**
     Trains the quantization model using the training dataset.
     
     @param MatrixDouble &trainingData: the training dataset that will be used to train the quantizer
     @return returns true if the quantizer was trained successfully, false otherwise
     */
    bool train(MatrixDouble &trainingData);

    /**
     Quantizes the input value using the quantization model. The quantization model must be trained first before you call this function.
     
     @param const double inputValue: the value you want to quantize
     @return returns the quantized value
     */
	UINT quantize(const double inputValue);
	
	/**
     Quantizes the input value using the quantization model. The quantization model must be trained first before you call this function.
     
     @param const VectorDouble &inputVector: the vector you want to quantize
     @return returns the quantized value
     */
	UINT quantize(const VectorDouble &inputVector);
    
	/**
     Gets if the quantization model has been trained.
     
     @return returns true if the quantization model has been trained, false otherwise
     */
    bool getQuantizerTrained() const;

    /**
     Gets the most recent quantized value. This can also be accessed by using the first element in the featureVector.
     
     @return returns the most recent quantized value
     */
	UINT getQuantizedValue() const;
	
	/**
     Gets the quantization distances from the most recent quantization.
     
     @return returns a VectorDouble containing the quantization distances from the most recent quantization
     */
	VectorDouble getQuantizationDistances() const;
	
	/**
     Gets the som model.
     
     @return returns a SelfOrganizingMap containing the model used for quantization
     */
	SelfOrganizingMap getSelfOrganizingMap() const;
    
protected:
    bool quantizerTrained;
    UINT numClusters;
    SelfOrganizingMap som;
    VectorDouble quantizationDistances;
    
    static RegisterFeatureExtractionModule< SOMQuantizer > registerModule;
};

}//End of namespace GRT

#endif //GRT_SOM_QUANTIZER_HEADER
