//
//  ml.h
//  ml_libsvm
//
//  Created by Jamie Bullock on 25/11/2013.
//
//

#ifndef ml_libsvm_ml_h
#define ml_libsvm_ml_h

#include <flext.h>

#define ML_VERSION "0.2.1"
#define ML_NAME "ml-lib"
#define ML_POST_SEP "---------------------------------------"

namespace ml
{
    class ml_base:
    public flext_base
    {
        FLEXT_HEADER(ml_base, flext_base);
        
    public:
        ml_base();
    };
}

#endif
