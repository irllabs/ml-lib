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


#ifndef ml_base_h__
#define ml_base_h__

// TODO: merge ml_ml.h into ml_base.h

#ifdef __MINGW32__
//#define snprintf _snprintf
#define strdup _strdup
#endif

#include "flext.h"
#include "ml_doc.h"
#include "ml_types.h"

#include <string>

#define ML_VERSION "0.20.1"
#define ML_NAME "ml-lib"
#define ML_NAME_PREFIX "ml."

namespace GRT
{
	typedef unsigned int UINT;
}
namespace ml
{
    class base:
    public flext_base
    {
    public:
        void post(const std::string &message) const;
        void error(const std::string &message) const;
 
    protected:
        const std::string get_help_string(void) const;
        virtual const std::string get_object_name(void) const = 0;
    };
}

#endif
