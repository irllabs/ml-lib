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


#ifndef ml_ml_base_h
#define ml_ml_base_h

#include <flext.h>

#include <string>

#define ML_VERSION "0.14.0"
#define ML_NAME "ml-lib"
#define ML_LINE_SEPARATOR "---------------------------------------"



namespace ml
{
    class ml_base
    {
    public:
        
        void post(const std::string &message) const;
        void error(const std::string &message) const;
 
    private:
        virtual const std::string get_object_name(void) const = 0;
    };
}

#endif
