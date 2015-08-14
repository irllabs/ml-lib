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

#include "ml_doc.h"
#include "ml_formatter.h"

#include <iostream>
#include <cassert>
#include <memory>


namespace ml_doc
{
    
    // message_descriptor implementation
    std::string message_descriptor::print(const generic_formatter &formatter) const
    {
        return formatter.format(*this);
    }
    
    // ml_formatter.h pure virtual methods
    std::string message_descriptor::desc_string(void) const
    {
        return desc;
    }
    
    std::string message_descriptor::name_string(void) const
    {
        return name;
    }
    

    // class_descriptor implementation
    std::string class_descriptor::print(const generic_formatter &formatter) const
    {
        return formatter.format(*this);
    }
    
    // ml_formattable.h pure virtual methods
    std::string class_descriptor::desc_string(void) const
    {
        return desc;
    }
    
    std::string class_descriptor::name_string(void) const
    {
        return name;
    }
    
    // formattable_message_descriptors includes all ancestor's descriptors
    std::vector<std::unique_ptr<formattable_message_descriptor> > class_descriptor::get_formattable_message_descriptors(void) const
    {
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattables;
        
        const class_descriptor *current_descriptor = this;
        
        while (true)
        {
            for (auto &formattable : current_descriptor->message_descriptors)
            {
                std::unique_ptr<formattable_message_descriptor> desc_ptr(formattable->clone());
                formattables.push_back(std::move(desc_ptr));
            }
            
            if (current_descriptor->parent == nullptr)
            {
                break;
            }
            
            current_descriptor = current_descriptor->parent;
           
        }
        
        return formattables;
    }

    // doc_manager implementation
    doc_manager& doc_manager::shared_instance(generic_formatter &formatter)
    {
        static doc_manager instance(formatter);
        return instance;
    }

    std::string doc_manager::doc_for_class(std::string class_name) const
    {
        auto it = descriptors.find(class_name);
        
        if (it == descriptors.end())
        {
            return "";
        }
        
        return it->second.print(formatter);
    }
    
    void doc_manager::add_class_descriptor(std::string name)
    {
        class_descriptor descriptor(name);
        descriptors.emplace(name, std::move(descriptor));
    }
    
    void doc_manager::add_class_descriptor(std::string name, std::string parent)
    {
        auto it = descriptors.find(parent);
        
        if (it == descriptors.end())
        {
            assert(false); // add_class_descriptor() is private and we expect a valid parent from our own code
            return;
        }
        
        class_descriptor descriptor(name, &it->second);
        descriptors.emplace(name, std::move(descriptor));
    }
    
    void doc_manager::add_class_descriptors(std::string parent, std::initializer_list<std::string> names)
    {
        for(auto name : names)
        {
            add_class_descriptor(name, parent);
        }
    }

}
