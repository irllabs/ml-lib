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
    AddOutAnything("general purpose outlet");
}

void ml_base::add(int argc, const t_atom *argv)
{

}
    
void ml_base::save(const t_symbol *path) const
{

}

void ml_base::load(const t_symbol *path)
{
    
}

void ml_base::train()
{
    error("function not implemented");
}

void ml_base::clear()
{
    t_atom status;
    SetBool(status, true);
    
    // clear training data
         
    ToOutAnything(1, s_cleared, 1, &status);
}

void ml_base::classify(int argc, const t_atom *argv)
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
    FLEXT_CADDMETHOD_(c, 0, "train", train);
    FLEXT_CADDMETHOD_(c, 0, "clear", clear);
    FLEXT_CADDMETHOD_(c, 0, "classify", classify);
    FLEXT_CADDMETHOD_(c, 0, "help", usage);
}

static void main()
{
    post("%s", ML_POST_SEP);
    post("%s - machine learning library for Max and Pure Data", ML_NAME);
    post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
    post("%s", ML_POST_SEP);
    
    // call the objects' setup routines
    FLEXT_SETUP(ml_svm);
    FLEXT_SETUP(ml_dtw);
    FLEXT_SETUP(ml_mlp);
}
    
const t_symbol *ml_base::s_train = flext::MakeSymbol("train");
const t_symbol *ml_base::s_cleared = flext::MakeSymbol("cleared");
const t_symbol *ml_base::s_loaded = flext::MakeSymbol("loaded");
const t_symbol *ml_base::s_saved = flext::MakeSymbol("saved");
const t_symbol *ml_base::s_estimates = flext::MakeSymbol("estimates");

    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
