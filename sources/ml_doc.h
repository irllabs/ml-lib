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

#ifndef ml_doc_h__
#define ml_doc_h__

#include "ml_formattable.h"
#include "ml_formatter.h"

#include <string>
#include <vector>
#include <utility>
#include <memory>
#include <map>

namespace ml_doc
{
    enum class name;
    
    class message_descriptor : public formattable_message_descriptor
    {
    public:
        message_descriptor()
        : is_method(false) {};
        
        message_descriptor(std::string name)
        : name(name),
        is_method(false) {};
        
        virtual std::string print(const generic_formatter &formatter) const;

        const std::string name;
        std::string desc;
        
        // ml_formattable.h pure virtual methods
        virtual std::string desc_string(void) const;
        virtual std::string name_string(void) const;
     
    protected:
        message_descriptor(bool is_method)
        : is_method(is_method) {};
        message_descriptor(bool is_method, std::string name)
        : name(name), is_method(is_method) {};
        
    private:
        const bool is_method;
    };
    
    class method_descriptor : public message_descriptor
    {
    public:
        method_descriptor(std::string name)
        : message_descriptor(true, name) {};
    };

    template <typename T>
    class valued_message_descriptor : public message_descriptor
    {
    public:
        valued_message_descriptor(std::string name)
        : message_descriptor(name) {};
        
        virtual std::string print(const generic_formatter &formatter) const
        {
            return formatter.format(*this);
        }
       
        std::vector<T> allowed_values;
        T def;
        
        // ml_formattable.h pure virtual methods
        virtual std::vector<std::string> allowed_values_strings(void) const
        {
            std::vector<std::string> values_string;
            for (auto value : allowed_values)
            {
                values_string.push_back(std::to_string(value));
            }
            return values_string;
        }
        
        virtual std::string def_string(void) const
        {
            return std::to_string(def);
        }
    };

    template <typename T>
    class ranged_message_descriptor :
    public valued_message_descriptor<T>
    {
    public:
        ranged_message_descriptor(std::string name)
        : valued_message_descriptor<T> (name) {};
        
        virtual std::string print(const generic_formatter &formatter) const
        {
            return formatter.format(*this);
        }

        T min;
        T max;
        
        // ml_formattable.h pure virtual methods
        virtual std::string min_string(void) const
        {
            return std::to_string(min);
        }
        
        virtual std::string max_string(void) const
        {
            return std::to_string(max);
        }
    };

    class class_descriptor : public formattable_class_descriptor
    {
    public:
        class_descriptor() : parent(nullptr) {};
        class_descriptor(std::string name) : name(name), parent(nullptr) {};
        class_descriptor(std::string name, const class_descriptor *parent) : name(name), parent(parent) {};

        template <typename T>
        void add_message_descriptor(const T &message_descriptor)
        {
            message_descriptors.push_back(message_descriptor);
        }
        
        template <typename U, typename... T>
        void add_message_descriptor(const U &head, const T &...tail)
        {
            message_descriptors.push_back(head);
            add_message_descriptor(tail...);
        }
        
        std::string print(const generic_formatter &formatter) const;
        
        const std::string name;
        std::string desc;
        const class_descriptor *parent;
        
        // ml_formattable.h pure virtual methods
        virtual std::string desc_string(void) const;
        virtual std::string name_string(void) const;
        virtual std::vector<std::unique_ptr<formattable_message_descriptor>> get_formattable_message_descriptors(void) const;
        
    private:
        std::vector<message_descriptor> message_descriptors;
    };

    class doc_manager
    {
    public:
        static doc_manager& shared_instance(generic_formatter &formatter);
        std::string doc_for_class(std::string class_name) const;
        
    private:
        void add_class_descriptor(std::string name);
        void add_class_descriptor(std::string name, std::string parent);
 
        doc_manager(generic_formatter &formatter) : formatter(formatter) { populate(); };
        doc_manager(doc_manager const&) = delete;
        void operator=(doc_manager const&) = delete;

        void populate(void);
        
        std::map<std::string, class_descriptor> descriptors;
        generic_formatter &formatter;
    };
}


#endif /* defined(ml_doc_h__) */
