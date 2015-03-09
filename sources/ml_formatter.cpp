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

#include "ml_formatter.h"
#include "ml_formattable.h"

namespace ml_doc
{
    std::string max_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + f.desc_string() + ". ";
        std::vector<std::string> allowed_values = f.allowed_values_strings();
        
        if (allowed_values.size())
        {
            formatted += "(allowed values: [";
            for (std::string value : allowed_values)
            {
                formatted += value;
                formatted += " ";
            }
            formatted += "]) ";
        }
        
        formatted += "(default: " + f.def_string() + ") ";
        formatted += "(min: " + f.min_string() + " max: " + f.max_string() + ") ";
        
        return formatted;
    }
    
    std::string max_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + f.desc_string() + "\n";
        
        const std::vector<std::shared_ptr<formattable_message_descriptor> > &fs = f.formattables();
        
        for(auto attr : fs)
        {
            formatted += format(*attr);
            formatted += "\n";
        }
        return formatted;
    }


    
}