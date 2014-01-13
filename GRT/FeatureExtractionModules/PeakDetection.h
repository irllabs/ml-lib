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

#ifndef GRT_PEAK_DETECTION_HEADER
#define GRT_PEAK_DETECTION_HEADER

#include "../GestureRecognitionPipeline/FeatureExtraction.h"
#include "../PreProcessingModules/MovingAverageFilter.h"
#include "../PreProcessingModules/HighPassFilter.h"
#include "../PreProcessingModules/DeadZone.h"
#include "../Util/CircularBuffer.h"

namespace GRT{
    
class PeakDetection{
public:
    PeakDetection(UINT thresholdCrossingMode = POSITIVE_THRESHOLD_CROSSING,UINT lowPassFilterSize = 5,UINT searchWindowSize = 5,UINT maxGateCount = 5,double negativeThreshold = -1,double positiveThreshold = 1);
    
	~PeakDetection();
    
    PeakDetection(const PeakDetection &rhs);
    
    PeakDetection& operator=(const PeakDetection &rhs);
    
    bool init(UINT thresholdCrossingMode,UINT lowPassFilterSize,UINT searchWindowSize,UINT maxGateCount,double negativeThreshold,double positiveThreshold);
	
    bool update(double x);
    
    bool reset();
    
    bool triggerGateTimeout();
    
    bool getPeakDetected();
    
    bool getPeakFound();
    
    double getDerivative();
    
    bool setThresholdCrossingMode(UINT thresholdCrossingMode);
    
    bool setNegativeThreshold(double negativeThreshold);
    
    bool setPositiveThreshold(double positiveThreshold);
    
    bool setLowPassFilterSize(UINT lowPassFilterSize);
    
protected:
    bool searchForMinimaAndMaxima();
    
    double deriv;
    double negativeThreshold;
    double positiveThreshold;
    double prePeakAmplitude;
    double postPeakAmplitude;
    double totalPeakAmpltidue;
    double peakWidth;
    bool enableSearch;
    bool peakDetected;
    bool initialized;
    unsigned int gateCounter;
    unsigned int maxGateCount;
    unsigned int lowPassFilterSize;
    unsigned int searchWindowSize;
    unsigned int dataBufferSize;
    unsigned int windowCounter;
    unsigned int thresholdCrossingMode;
    unsigned int currentSearchState;
    MovingAverageFilter lpf;
    HighPassFilter hpf;
    DeadZone deadZone;
    CircularBuffer< vector< double > > dataBuffer;
    
    enum SearchStates{SEARCHING_FOR_FIRST_THRESHOLD_CROSSING=0,SEARCHING_FOR_SECOND_THRESHOLD_CROSSING,FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA,NO_SEARCH_GATE_TIME_OUT};
public:
    enum ThresholdCrossingModes{POSITIVE_THRESHOLD_CROSSING=0,NEGATIVE_THRESHOLD_CROSSING,POSITIVE_NEGATIVE_THRESHOLD_CROSSING,NEGATIVE_POSITIVE_THRESHOLD_CROSSING};
	
};

}//End of namespace GRT

#endif //GRT_PEAK_DETECTION_HEADER
