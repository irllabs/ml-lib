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

#include "ml_base.h"

#define ML_POST_SEPARATOR ": "

namespace ml
{

#pragma mark - utility functions
   
    void post_prefixed_message(const std::string object_name, const std::string &message, void(*post_function)(const char *,...));

    
#pragma mark - ml implementation
    
    void ml_base::post(const std::string &message) const
    {
        post_prefixed_message(get_object_name(), message, flext::post);
    }
    
    void ml_base::error(const std::string &message) const
    {
        post_prefixed_message(get_object_name(), message, flext::error);
    }
    
#pragma mark - free standing functions
    
    void post_prefixed_message(const std::string object_name, const std::string &message, void(*post_function)(const char *,...))
    {
        std::string full_message = object_name + ML_POST_SEPARATOR + message;
        post_function(full_message.c_str());
    }
}