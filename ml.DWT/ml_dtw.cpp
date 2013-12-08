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
        static void setup(t_classid c)
        {
            FLEXT_CADDMETHOD_(c, 0, "add", add);
            FLEXT_CADDMETHOD_(c, 0, "save", save);
            FLEXT_CADDMETHOD_(c, 0, "load", load);
            FLEXT_CADDMETHOD_(c, 0, "normalize", normalize);
            FLEXT_CADDMETHOD_(c, 0, "train", train);
            FLEXT_CADDMETHOD_(c, 0, "clear", clear);
            FLEXT_CADDMETHOD_(c, 0, "predict", predict);
            FLEXT_CADDMETHOD_(c, 0, "help", usage);
        }
        
        // Methods
        void add(int argc, const t_atom *argv);
        void save(const t_symbol *path) const;
        void load(const t_symbol *path);
        void normalize();
        void cross_validation();
        void train();
        void clear();
        void predict(int argc, const t_atom *argv);
        void usage();
        
    private:
        
        // Method wrappers
        FLEXT_CALLBACK_V(add);
        FLEXT_CALLBACK_S(save);
        FLEXT_CALLBACK_S(load);
        FLEXT_CALLBACK(normalize);
        FLEXT_CALLBACK(train);
        FLEXT_CALLBACK(clear);
        FLEXT_CALLBACK_V(predict);
        FLEXT_CALLBACK(usage);
        
    };
    
    // Methods
    void ml_dtw::add(int argc, const t_atom *argv)
    {
        
    }
    
    void ml_dtw::save(const t_symbol *path) const
    {
        error("function not implemented");
    }
    
    void ml_dtw::load(const t_symbol *path)
    {
        error("function not implemented");
    }
    
    void ml_dtw::normalize()
    {
        error("function not implemented");
    }
    
    void ml_dtw::train()
    {
        error("function not implemented");
    }
    
    void ml_dtw::clear()
    {
        error("function not implemented");
    }
    
    void ml_dtw::predict(int argc, const t_atom *argv)
    {
        error("function not implemented");
    }
    
    void ml_dtw::usage()
    {
        error("function not implemented");
    }
    
    FLEXT_LIB("ml.DTW", ml_dtw);
    
} //namespace ml
