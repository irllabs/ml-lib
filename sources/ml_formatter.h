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


#ifndef ml_formatter__
#define ml_formatter__

#include <string>

namespace ml_doc
{
    class formattable_message_descriptor;
    class formattable_class_descriptor;

    class formatter
    {
    public:
        virtual std::string format(const formattable_message_descriptor &descriptor) const = 0;
        virtual std::string format(const formattable_class_descriptor &descriptor) const = 0;
    };
    
    class max_formatter : public formatter
    {
    public:
        virtual std::string format(const formattable_message_descriptor &descriptor) const;
        virtual std::string format(const formattable_class_descriptor &descriptor) const;
    };
    
}



#endif /* defined(ml_formatter__) */
