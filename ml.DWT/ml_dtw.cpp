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

class ml_dtw : ml_base
{
    FLEXT_HEADER_S(ml_dtw, ml_base, setup);
    
public:
    ml_dtw()
    {
        post("ml.DTW: Dynamic Time Warping based on the UCR Suite");
        
        AddOutAnything("general purpose outlet");
    }
    
    ~ml_dtw()
    {
    
    }
    
protected:
    void add(int argc, const t_atom *argv);
    
private:
    
};

void ml_dtw::add(int argc, const t_atom *argv)
{
    post("foo");
}

FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
