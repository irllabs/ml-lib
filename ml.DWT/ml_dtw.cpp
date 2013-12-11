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
#include <math.h>

namespace ml
{
 
// TODO: refactor this and normalizer into a standard interface that can be used by the normalize method
class z_normalizer
{
public:
    z_normalizer()
    : mean(0), std_deviation(0)
    {
        
    }
    
    ~z_normalizer()
    {
        
    }
    
    double normalize(double value)
    {
        return (value - mean) / std_deviation;
    }
    
    double mean;
    double std_deviation;
};


class ml_dtw : ml_base
{
    FLEXT_HEADER_S(ml_dtw, ml_base, setup);
    
public:
    ml_dtw()
    : window_size(.05)
    {
        post("ml.DTW: Dynamic Time Warping based on the UCR Suite");
    }
    
    ~ml_dtw()
    {
    
    }
    
protected:
    static void setup(t_classid c)
    {
        FLEXT_CADDATTR_SET(c, "window_size", set_window_size);
        
        FLEXT_CADDATTR_GET(c, "window_size", get_window_size);

    }
    
    // Methods
    void classify(int argc, const t_atom *argv);
    
    // Attribute Setters
    void set_window_size(float size);
    
    // Attribute Getters
    void get_window_size(float &size) const;
    
private:
    // Attribute wrappers
    FLEXT_CALLVAR_F(get_window_size, set_window_size);
    
    // Instance variables
    double window_size;
};
    
// Utility functions

    
// Attribute setters
void ml_dtw::set_window_size(float size)
{
    if (size >= 0.0 && size <= 1.0)
    {
        window_size = (double)size;
    }
}
    
// Attribute getters
void ml_dtw::get_window_size(float &size) const
{
    size = window_size;
}
    
// Methods
void ml_dtw::classify(int argc, const t_atom *argv)
{
 
}

    

FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
