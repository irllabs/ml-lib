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

#ifndef formattable_h__
#define formattable_h__

#include <string>
#include <vector>
#include <memory>

namespace ml_doc
{
    class formattable_descriptor
    {
    public:
        virtual ~formattable_descriptor() {}
        virtual std::string name_string(void) const = 0;
        virtual std::string desc_string(void) const = 0;
    };
    
    class formattable_message_descriptor : virtual public formattable_descriptor
    {
    public:
        virtual std::string def_string(void) const { return ""; };
        virtual std::vector<std::string> allowed_values_strings(void) const { std::vector<std::string> empty; return empty;};
        virtual std::string min_string(void) const { return ""; };
        virtual std::string max_string(void) const { return ""; };
        virtual std::string example_string(void) const = 0;
    };
    
    class formattable_class_descriptor : virtual public formattable_descriptor
    {
    public:
        virtual std::string url_string(void) const { return ""; };
        virtual std::vector<std::unique_ptr<formattable_message_descriptor>> get_formattable_message_descriptors(void) const = 0;
    };
}

#endif
