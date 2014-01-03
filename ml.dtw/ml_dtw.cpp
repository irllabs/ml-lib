/*
 * ml-lib, a machine learning library for Max and Pure Data
 * Copyright (C) 2013 Carnegie Mellon University
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 2 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of  MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "ml.h"

#include <flext.h>

namespace ml
{
    class ml_dtw : ml_classification_base
    {
        FLEXT_HEADER_S(ml_dtw, ml_base, setup);
        
    public:
        ml_dtw()
        :
        ml_classification_base(&classifier, LABELLED_TIME_SERIES_CLASSIFICATION)
        {
            post("ml.dtw: Dynamic Time Warping based on the GRT library version %s", grt_version.c_str());
        }
        
        ~ml_dtw()
        {
            
        }
        
    protected:
        
    private:
        
        // Instance variables
        GRT::DTW classifier;
        
    };
    
    FLEXT_LIB("ml.dtw", ml_dtw);
    
} //namespace ml

