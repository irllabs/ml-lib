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

#include "flext.h"
#include "ml_doc.h"
#include "ml_names.h"

#include <string>

#define VERSION "0.16.1"
#define NAME "ml-lib"

namespace ml
{
    class help
    {
    public:        
        void append_methods(const std::string &methods) { this->methods.append(methods); }
        void append_attributes(const std::string &attributes) { this->attributes.append(attributes); }
        
        std::string full_message(void) const;
        
    private:
        std::string methods;
        std::string attributes;
    };
    
    
    class base:
    public flext_base
    {
    public:
        void post(const std::string &message) const;
        void error(const std::string &message) const;
 
    protected:
        ml::help help;
        const std::string get_object_name_string(void) const;
    
    private:
        virtual const ml_doc::name get_object_name(void) const = 0;
    };
}

#endif
