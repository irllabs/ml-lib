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

#include "PeakDetection.h"

namespace GRT{
    
PeakDetection::PeakDetection(UINT thresholdCrossingMode,UINT lowPassFilterSize,UINT searchWindowSize,UINT maxGateCount,double negativeThreshold,double positiveThreshold){
    
    this->thresholdCrossingMode = thresholdCrossingMode;
    this->lowPassFilterSize = lowPassFilterSize;
    this->searchWindowSize = searchWindowSize;
    this->maxGateCount = maxGateCount;
    this->negativeThreshold = negativeThreshold;
    this->positiveThreshold = positiveThreshold;
    
    deriv = 0;
    prePeakAmplitude = 0;
    postPeakAmplitude = 0;
    totalPeakAmpltidue = 0;
    peakWidth = 0;
    enableSearch = false;
    peakDetected = false;
    initialized = false;
    gateCounter = 0;
    dataBufferSize = searchWindowSize*4;
    windowCounter = 0;
    currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
    lpf.init(lowPassFilterSize, 1);
    hpf.init(0.2, 1.0, 1);
    deadZone.init(-0.001, 0.001,1);
    
    init(thresholdCrossingMode,lowPassFilterSize,searchWindowSize,maxGateCount,negativeThreshold,positiveThreshold);
}
    
PeakDetection::PeakDetection(const PeakDetection &rhs){
    
    this->deriv = rhs.deriv;
    this->negativeThreshold = rhs.negativeThreshold;
    this->positiveThreshold = rhs.positiveThreshold;
    this->prePeakAmplitude = rhs.prePeakAmplitude;
    this->postPeakAmplitude = rhs.postPeakAmplitude;
    this->totalPeakAmpltidue = rhs.totalPeakAmpltidue;
    this->peakWidth = rhs.peakWidth;
    this->enableSearch = rhs.enableSearch;
    this->gateCounter = rhs.gateCounter;
    this->maxGateCount = rhs.maxGateCount;
    this->lowPassFilterSize = rhs.lowPassFilterSize;
    this->searchWindowSize = rhs.searchWindowSize;
    this->dataBufferSize = rhs.dataBufferSize;
    this->windowCounter = rhs.windowCounter;
    this->thresholdCrossingMode = rhs.thresholdCrossingMode;
    this->currentSearchState = rhs.currentSearchState;
    this->lpf = rhs.lpf;
    this->hpf = rhs.hpf;
    this->deadZone = rhs.deadZone;
    this->dataBuffer = rhs.dataBuffer;
}

PeakDetection::~PeakDetection(){

}
    
PeakDetection& PeakDetection::operator=(const PeakDetection &rhs){
    if(this!=&rhs){
        
        this->deriv = rhs.deriv;
        this->negativeThreshold = rhs.negativeThreshold;
        this->positiveThreshold = rhs.positiveThreshold;
        this->prePeakAmplitude = rhs.prePeakAmplitude;
        this->postPeakAmplitude = rhs.postPeakAmplitude;
        this->totalPeakAmpltidue = rhs.totalPeakAmpltidue;
        this->peakWidth = rhs.peakWidth;
        this->enableSearch = rhs.enableSearch;
        this->gateCounter = rhs.gateCounter;
        this->maxGateCount = rhs.maxGateCount;
        this->lowPassFilterSize = rhs.lowPassFilterSize;
        this->searchWindowSize = rhs.searchWindowSize;
        this->dataBufferSize = rhs.dataBufferSize;
        this->windowCounter = rhs.windowCounter;
        this->thresholdCrossingMode = rhs.thresholdCrossingMode;
        this->currentSearchState = rhs.currentSearchState;
        this->lpf = rhs.lpf;
        this->hpf = rhs.hpf;
        this->deadZone = rhs.deadZone;
        this->dataBuffer = rhs.dataBuffer;
    }
    return *this;
}
    
bool PeakDetection::init(UINT thresholdCrossingMode,UINT lowPassFilterSize,UINT searchWindowSize,UINT maxGateCount,double negativeThreshold,double positiveThreshold){
    
    //Setup the search variables
    this->thresholdCrossingMode = thresholdCrossingMode;
    this->lowPassFilterSize = lowPassFilterSize;
    this->searchWindowSize = searchWindowSize;
    this->maxGateCount = maxGateCount;
    this->negativeThreshold = negativeThreshold;
    this->positiveThreshold = positiveThreshold;
    
    //Resize the low pass filter
    lpf.init(lowPassFilterSize,1);
    
    //Setup the data buffer, we want the data buffer to be bigger than the search window, so that the previous minima/maxima does not get lost
    dataBufferSize = searchWindowSize*4;
    dataBuffer.resize(dataBufferSize, vector< double >(3,0)); 
    
    //Set the search state
    currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
    
    //Enable future searches
    enableSearch = true;
    peakDetected = false;
    windowCounter = 0;
    gateCounter = 0;
    initialized = true;
    
    return true;
}

bool PeakDetection::update(double x){
    
    if( !initialized ) return 0;
	
    peakDetected = false;
    
    //High pass filter the input data
    double value = hpf.filter(x);
    
    //Compute the first deriv
    deriv = value - dataBuffer[ dataBufferSize-1 ][0];
    
    //Low pass filter the data to remove some noise
    deriv = lpf.filter( deriv );
    
    double deriv2 = deriv - dataBuffer[ dataBufferSize-1 ][1];
    
    //Place a deadzone on the 2nd derivative to remove the noise around the zero crossing margin
    deriv2 = deadZone.filter( deriv2 );
    
    //Add the new filtered value to the data buffer
    vector< double > newData(3);
    newData[0] = value;
    newData[1] = deriv;
    newData[2] = deriv2;
    dataBuffer.push_back( newData );
    
    //printf("PeakDetection - diriv: %f LowerThreshold: %f UpperThreshold: %f SearchState: %i gateCounter: %i\n",diriv,negativeThreshold,positiveThreshold,currentSearchState,gateCounter);
    
    //If the search is disabled then we stop here
    if( !enableSearch ){ return peakDetected; }
    
    //Perform the search
    bool positiveThresholdCrossingFound = false;
    bool negativeThresholdCrossingFound = false;
    
    //Check to see if we should search
    if( currentSearchState == NO_SEARCH_GATE_TIME_OUT ){
        if( ++gateCounter == maxGateCount ){
            currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
            gateCounter = 0;
        }else return false;
    }
    
    if( thresholdCrossingMode == POSITIVE_THRESHOLD_CROSSING || thresholdCrossingMode == NEGATIVE_THRESHOLD_CROSSING ){
        //Has the deriv of the input passed either threshold
        switch ( thresholdCrossingMode ) {
            case POSITIVE_THRESHOLD_CROSSING:
                if( deriv >= positiveThreshold ){ 
                    positiveThresholdCrossingFound = true; 
                    peakDetected = true;
                    currentSearchState = NO_SEARCH_GATE_TIME_OUT;
                    gateCounter = 0;
                }
                break;
            case NEGATIVE_THRESHOLD_CROSSING:
                if( deriv <= negativeThreshold ){ 
                    negativeThresholdCrossingFound = true; 
                    peakDetected = true;
                    currentSearchState = NO_SEARCH_GATE_TIME_OUT;
                    gateCounter = 0;
                }
                break;
            default:
                break;
        }
        return peakDetected ? true : false;
    }else{
        
        //Check to make sure the search has not timed out
        if( currentSearchState == SEARCHING_FOR_SECOND_THRESHOLD_CROSSING ){
            if( ++windowCounter == searchWindowSize ){
                currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
                windowCounter = 0;
            }
        }
        
        //If we are in the FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA state then we need to update the counter
        if( currentSearchState == FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA ){
            if( ++windowCounter == searchWindowSize ){
                currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
                windowCounter = 0;
            }
        }
        
        //Has the deriv of the input passed either threshold
        if( deriv >= positiveThreshold ){ positiveThresholdCrossingFound = true; }
        if( deriv <= negativeThreshold ){ negativeThresholdCrossingFound = true; }
        if( !positiveThresholdCrossingFound && !negativeThresholdCrossingFound && 
           currentSearchState != FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA ){ return 0; }
        
        switch ( currentSearchState ) {
            case SEARCHING_FOR_FIRST_THRESHOLD_CROSSING:
                if( thresholdCrossingMode == POSITIVE_NEGATIVE_THRESHOLD_CROSSING && positiveThresholdCrossingFound ){
                    windowCounter = 0;
                    currentSearchState = SEARCHING_FOR_SECOND_THRESHOLD_CROSSING;
                    return false;
                }
                if( thresholdCrossingMode == NEGATIVE_POSITIVE_THRESHOLD_CROSSING && negativeThresholdCrossingFound ){
                    windowCounter = 0;
                    currentSearchState = SEARCHING_FOR_SECOND_THRESHOLD_CROSSING;
                    return false;
                }
                break;
            case SEARCHING_FOR_SECOND_THRESHOLD_CROSSING:
                if( thresholdCrossingMode == POSITIVE_NEGATIVE_THRESHOLD_CROSSING && negativeThresholdCrossingFound ){
                    currentSearchState = FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA;
                    windowCounter = 0;
                    break;
                }
                if( thresholdCrossingMode == NEGATIVE_POSITIVE_THRESHOLD_CROSSING && positiveThresholdCrossingFound ){
                    currentSearchState = FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA;
                    windowCounter = 0;
                    break;
                }
                break;
            case FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA:
                if( searchForMinimaAndMaxima() ){
                    peakDetected = true;
                    currentSearchState = NO_SEARCH_GATE_TIME_OUT;
                    gateCounter = 0;
                }
                break;
            default:
                break;
        }
    }
    
	return peakDetected ? true : false;
}
    
bool PeakDetection::reset(){
    if( initialized ){
        //Resize the low pass filter
        lpf.init(lowPassFilterSize,1);
        
        //Clear the data buffer
        dataBuffer.setAllValues( vector< double >(3,0) );
        
        //Set the search state
        currentSearchState = SEARCHING_FOR_FIRST_THRESHOLD_CROSSING;
        
        //Enable future searches
        enableSearch = true;
        peakDetected = false;
        windowCounter = 0;
        gateCounter = 0;
        
        return true;
        
    }
    return false;
}
    
bool PeakDetection::triggerGateTimeout(){
    if( !initialized ) return false;
    currentSearchState = NO_SEARCH_GATE_TIME_OUT;
    gateCounter = 0;
    return true;
}
    
bool PeakDetection::getPeakDetected(){ 
    if( peakDetected ){
        peakDetected = false;
        return true;
    }
    return false;
}
    
bool PeakDetection::getPeakFound(){ 
    return (currentSearchState==NO_SEARCH_GATE_TIME_OUT || currentSearchState == FOUND_CROSSING_SEARCHING_FOR_MINIMA_AND_MAXIMA ); 
}

double PeakDetection::getDerivative(){ return deriv; }
    
bool PeakDetection::setThresholdCrossingMode(UINT thresholdCrossingMode){ 
    this->thresholdCrossingMode = thresholdCrossingMode; 
    reset(); 
    return true; 
}

bool PeakDetection::setNegativeThreshold(double negativeThreshold){ 
    this->negativeThreshold = negativeThreshold; 
    reset(); 
    return true; 
} 

bool PeakDetection::setPositiveThreshold(double positiveThreshold){ 
    this->positiveThreshold = positiveThreshold; 
    reset(); 
    return true; 
} 

bool PeakDetection::setLowPassFilterSize(UINT lowPassFilterSize){ 
    if( lowPassFilterSize >= 2 ){
        this->lowPassFilterSize = lowPassFilterSize; 
        return true; 
    } 
    return false; 
}
    
bool PeakDetection::searchForMinimaAndMaxima(){
    
    const unsigned int N = dataBufferSize;
    const unsigned int peakLocation = N-1-windowCounter;
    vector< double > firstDeriv( N, 0 );
    vector< double > secondDeriv( N, 0 );
    
    //Compute the first and second derivatives of the data in the data buffer
    for(unsigned int i=0; i<N; i++){
        firstDeriv[i] = dataBuffer[i][1];
        secondDeriv[i] = dataBuffer[i][2];
    }
    
    //Search for the first maxima/minima that occurs after the peak
    bool zeroCrossingFound = false;
    unsigned int zeroCrossingIndex1 = 0;
    unsigned int zeroCrossingIndex2 = 0;
    
    for(unsigned int i=peakLocation; i<N; i++){
        if( (secondDeriv[i-1] <= 0 && secondDeriv[i] > 0) || 
           (secondDeriv[i-1] >= 0 && secondDeriv[i] < 0) 
           ){
            zeroCrossingFound = true;
            zeroCrossingIndex1 = i;
            break;
        }
    }
    
    //If the first minima/maxima after the peak has not been found then stop the search
    if( !zeroCrossingFound ) return false;
    
    //Now try and find the first minima/maxima that occurs before the peak
    for(unsigned int i=peakLocation; i>1; i--){
        if( (secondDeriv[i-1] <= 0 && secondDeriv[i] > 0) || 
           (secondDeriv[i-1] >= 0 && secondDeriv[i] < 0) 
           ){
            zeroCrossingFound = true;
            zeroCrossingIndex2 = i;
            break;
        }
    }
    
    //If the first minima/maxima before the peak has not been found then stop the search
    if( !zeroCrossingFound ) return false;
    
    //Account for the filter lag
    zeroCrossingIndex1 = zeroCrossingIndex1 - (unsigned int)floor( lowPassFilterSize/2.0 );
    zeroCrossingIndex2 = zeroCrossingIndex2 - (unsigned int)floor( lowPassFilterSize/2.0 );
    
    //Sometimes, because of noise etc, we don't get the best minima/maxima - so double check that we do
    double minimaValue = firstDeriv[ zeroCrossingIndex1 ];
    double maximaValue = firstDeriv[ zeroCrossingIndex2 ];
    for(unsigned int i=N-searchWindowSize; i<N; i++){
        if( firstDeriv[i] < minimaValue ){
            minimaValue = firstDeriv[i];
            zeroCrossingIndex1 = i;
        }else{
            if( firstDeriv[i] > maximaValue ){
                maximaValue = firstDeriv[i];
                zeroCrossingIndex2 = i;
            } 
        }
    }
    
    //Now we have the two minima/maxima, compute the amplitude values
    prePeakAmplitude = fabs( firstDeriv[ zeroCrossingIndex2 ] );
    postPeakAmplitude = fabs( firstDeriv[ zeroCrossingIndex1 ] );
    totalPeakAmpltidue = prePeakAmplitude + postPeakAmplitude;
    peakWidth = double( zeroCrossingIndex1 - zeroCrossingIndex2 );
    
    return true;
}

}//End of namespace GRT