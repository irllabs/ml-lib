//
//  ml.cpp
//  svm
//
//  Created by Jamie Bullock on 13/11/2013.
//
//

#include "ml.h"

namespace ml
{    
    ml_base::ml_base()
    {
    }

    static void main()
    {
        post("%s", ML_POST_SEP);
        post("%s - machine learning library for Max and Pure Data", ML_NAME);
        post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
        post("%s", ML_POST_SEP);
        
        // call the objects' setup routines
        FLEXT_SETUP(ml_libsvm);
    }
}

FLEXT_LIB_SETUP(ml, ml::main)
