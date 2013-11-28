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

static void main()
{
    post("%s", ML_POST_SEP);
    post("%s - machine learning library for Max and Pure Data", ML_NAME);
    post("version " ML_VERSION " (c) 2013 Carnegie Mellon University");
    post("%s", ML_POST_SEP);
    
    // call the objects' setup routines
    FLEXT_SETUP(ml_libsvm);
}
    
} // namespace ml


FLEXT_LIB_SETUP(ml, ml::main)
