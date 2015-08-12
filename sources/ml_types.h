//
//  ml_types.h
//  ml
//
//  Created by Jamie Bullock on 06/08/2015.
//
//

#ifndef ml_ml_types_h
#define ml_ml_types_h

namespace ml {
    enum data_type
    {
        LABELLED_CLASSIFICATION,
        LABELLED_REGRESSION,
        LABELLED_TIME_SERIES_CLASSIFICATION,
        UNLABELLED_CLASSIFICATION,
        NUM_DATA_TYPES
    };
}


#endif
