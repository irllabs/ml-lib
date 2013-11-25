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
        flext::post("---------------------------------------");
        flext::post("ml - machine learning objects");
        flext::post("version " ML_VERSION " (c)Carnegie Mellon University");
        flext::post("---------------------------------------");
        
        // call the objects' setup routines
        FLEXT_SETUP(ml_libsvm);
    }

}

FLEXT_LIB_SETUP(ml, ml::main)
