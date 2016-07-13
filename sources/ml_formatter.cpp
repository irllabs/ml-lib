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
    
    // max_formatter
    
    std::string max_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + f.desc_string() + ". ";
        std::string descriptors = "";
        std::vector<std::string> allowed_values = f.allowed_values_strings();
        
        if (allowed_values.size())
        {
            descriptors += "allowed values: [";
            for (std::string value : allowed_values)
            {
                descriptors += value;
                descriptors += " ";
            }
            descriptors += "] ";
        }
        
        if (!f.def_string().empty())
        {
            descriptors += "default: " + f.def_string() + " ";
        }
        
        if (!f.min_string().empty())
        {
            descriptors += "min: " + f.min_string();
        }
        
        if (!f.max_string().empty())
        {
            descriptors += " max: " + f.max_string() + ") ";
        }
        
        if (!descriptors.empty())
        {
            formatted += "(" + descriptors + ")";
        }
        
        formatted += "\n";
        
        
        return formatted;
    }
    
    std::string max_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + f.desc_string() + "\n";
    
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
        }
        
        return formatted;
    }

    // pd_help_formatter
    // TODO: pass x/y to format() !
    std::string pd_help_formatter::format(const formattable_message_descriptor &f) const
    {
        
        std::string formatted = "#X msg " + std::to_string(message_x) + " " + std::to_string(message_y) + " " + f.name_string() + ";\n";
        formatted += "#X text " + std::to_string(message_x + 150) + " " + std::to_string(message_y) + " " + f.desc_string() + ";\n";
        message_y += 30;
        
        return formatted;
    }
    
    std::string pd_help_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = "#N canvas 606 140 700 700 10;\n";
        message_x = 200;
        message_y = 50;
        object_count = 0;
        
        formatted += "#X obj 30 580 " + f.name_string() + ";\n";
        ++object_count;
        
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
            formatted += "#X connect " + std::to_string(object_count) + " 0 0 0;";
            object_count += 2; // 1 message, 1 comment
        }
        
        return formatted;
    }
    
    // html_table_formatter
    
    std::string html_table_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = "<tr><td>" + f.name_string() + "</td><td>" + f.desc_string() + "</td>";
        std::vector<std::string> allowed_values = f.allowed_values_strings();
        
        formatted += "<td>";
        
        if (allowed_values.size())
        {
            for (auto it = allowed_values.begin(); it != allowed_values.end();  ++it )
            {
                formatted += *it;
                if (std::next(it) != allowed_values.end())
                {
                    formatted += ", ";
                }
            }
        }
        
        formatted += "</td><td>";
        
        if (!f.min_string().empty())
        {
            formatted += f.min_string();
        }
        
        formatted += "</td><td>";
        
        if (!f.max_string().empty())
        {
            formatted += f.max_string();
        }
        
        formatted += "</td><td>";
        
        if (!f.def_string().empty())
        {
            formatted += f.def_string();
        }
        
        formatted += "</td></tr>\n";
        
        return formatted;
    }
    
    std::string html_table_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = "<h2>" + f.name_string() + "</h2>" + "\n" + "<p>" + f.desc_string() + "<br/>URL: <a href=\"" + f.url_string() + "\">" + f.url_string() + "</a></p>\n";
        
        formatted += "<table>\n<thead>\n<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>\n</thead></tr>\n";
        
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
        }
        
        formatted += "</table>";
        
        return formatted;
    }
    
    
    
}