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
#include "ml_names.h"

#include <iostream>

namespace ml_doc
{
    
    std::string message_descriptor::print(const generic_formatter &formatter) const
    {
        return formatter.format(*this);
    }
    
    // ml_doc_as_string.h pure virtual methods
    
    std::string message_descriptor::desc_string(void) const
    {
        return desc;
    }
    
    std::string message_descriptor::name_string(void) const
    {
        return name;
    }
    

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
    
    std::vector<std::shared_ptr<formattable_message_descriptor> > class_descriptor::formattables(void) const
    {
        std::vector<std::shared_ptr<formattable_message_descriptor> > formattables;
        
        for (auto formattable : message_descriptors)
        {
            formattables.push_back(formattable);
        }
        
        return formattables;
    }
    
    // doc_manager implementation
    doc_manager& doc_manager::shared_instance(generic_formatter &formatter)
    {
        static doc_manager instance(formatter);
        return instance;
    }

    std::string doc_manager::doc_for_class(ml_doc::name class_name)
    {
        auto it = descriptors.find(class_name);
        if (it == descriptors.end())
        {
            return "descriptor not found";
        }
        
        return it->second->print(formatter);
    }
    
    void doc_manager::add_class_descriptor(ml_doc::name name, unique_class_descriptor &descriptor)
    {
        descriptors.emplace(std::pair<ml_doc::name, unique_class_descriptor >(name, std::move(descriptor)));
    }
    
    void doc_manager::init_class_descriptors(void)
    {
        for (auto name_pair : ml_doc::name_lookup)
        {
            unique_class_descriptor descriptor(new class_descriptor(name_pair.second));
            add_class_descriptor(name_pair.first, descriptor);
        }
    }

    void doc_manager::populate(void)
    {
        init_class_descriptors();
        
        ranged_message_descriptor<int> min_epochs;
        
        min_epochs.name = "min_epochs";
        min_epochs.desc = "the minimum number of training iterations";
        min_epochs.min = 0;
        min_epochs.max = 100;
        min_epochs.def = 10;
        min_epochs.allowed_values = {1, 2, 3, 4, 5};
        
        descriptors[ml_doc::name::mlp]->add_message_descriptor(min_epochs);
       
    }
    
}
