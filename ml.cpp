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

namespace ml
{    

ml_base::ml_base()
{
  
}

void ml_base::add(int argc, const t_atom *argv)
{
    error("function not implemented");
}

void ml_base::save(const t_symbol *path) const
{
    error("function not implemented");
}

void ml_base::load(const t_symbol *path)
{
    error("function not implemented");
}

void ml_base::normalize()
{
    error("function not implemented");
}

void ml_base::train()
{
    error("function not implemented");
}

void ml_base::clear()
{
    error("function not implemented");
}

void ml_base::predict(int argc, const t_atom *argv)
{
    error("function not implemented");
}

void ml_base::usage()
{
    error("function not implemented");
}
    
void ml_base::setup(t_classid c)
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


static void main()
{
    post("%s", ML_POST_SEP);
    post("%s - machine learning library for Max and Pure Data", ML_NAME);
    post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
    post("%s", ML_POST_SEP);

    s_train = flext::MakeSymbol("train");
    s_cleared = flext::MakeSymbol("cleared");
    s_normalized = flext::MakeSymbol("normalized");
    s_loaded = flext::MakeSymbol("loaded");
    s_saved = flext::MakeSymbol("saved");
    
    // call the objects' setup routines
    FLEXT_SETUP(ml_libsvm);
    FLEXT_SETUP(ml_dtw);
}
    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
