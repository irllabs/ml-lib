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
#include <sstream>
#include <iomanip>

namespace ml_doc
{
    enum class name;

    // Free standing helper function
    template <typename T>
    std::string to_string_with_precision(const T value, const int n = 6)
    {
        std::ostringstream out;
        out << std::setprecision(n) << value;
        return out.str();
    }
    
    /*
     Descriptor for a message comprising a selector and an abitrary list of symbols or floats
     */
    class message_descriptor : public formattable_message_descriptor
    {
    public:
        message_descriptor() = delete;
        message_descriptor(std::string name, std::string desc, std::string example = "")
        : name(name),
        desc(desc),
        example(example) {};
                
        virtual std::string print(const generic_formatter &formatter) const;
        
        virtual message_descriptor* clone() const
        {
            return new message_descriptor(*this);
        };
        
        const std::string name;
        std::string desc;
        std::string example;
        std::string insert_before;
        
        // ml_formattable.h pure virtual methods
        virtual std::string desc_string(void) const;
        virtual std::string name_string(void) const;
        virtual std::string example_string(void) const;
    };
    
    /*
     Descriptor for a message comprising a selector and a value from a finite set of allowed values
     */
    template <typename T>
    class valued_message_descriptor : public message_descriptor
    {
    public:
        valued_message_descriptor(std::string name, std::string desc, T def)
        : message_descriptor(name, desc),
        def(def) {};
        
        valued_message_descriptor(std::string name, std::string desc, std::initializer_list<T> allowed_values, T def)
        : message_descriptor(name, desc),
        allowed_values(allowed_values),
        def(def) {};
        
        virtual valued_message_descriptor<T> *clone() const
        {
            return new valued_message_descriptor<T>(*this);
        }
        
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
            return to_string_with_precision(def, 2);
        }
    };

    /*
     Descriptor for a message comprising a selector and a value within a given range
     */
    template <typename T>
    class ranged_message_descriptor :
    public valued_message_descriptor<T>
    {
    public:
        ranged_message_descriptor(std::string name, std::string desc, T minimum, T maximum, T def)
        : valued_message_descriptor<T> (name, desc, def),
        minimum(minimum),
        maximum(maximum) {};
        
        virtual ranged_message_descriptor<T> *clone() const
        {
            return new ranged_message_descriptor<T>(*this);
        }
        
        virtual std::string print(const generic_formatter &formatter) const
        {
            return formatter.format(*this);
        }

        T minimum;
        T maximum;
        
        // ml_formattable.h pure virtual methods
        virtual std::string min_string(void) const
        {
            return to_string_with_precision(minimum, 2);
        }
        
        virtual std::string max_string(void) const
        {
            return to_string_with_precision(maximum, 2);
        }
    };

    /**
     Descriptor for a Max / Pd object class
     Also encapsulates the message descriptors for that class
     */
    class class_descriptor : public formattable_class_descriptor
    {
    public:
        class_descriptor() : parent(nullptr) {};
        class_descriptor(std::string name) : name_(name), parent(nullptr) {};
        class_descriptor(std::string name, const class_descriptor *parent) : name_(name), parent(parent) {};

        /**
         Insert a message descriptor at the beginning the list of message descriptors
         */
        template <typename T>
        void insert_message_descriptor(const T &message_descriptor)
        {
            message_descriptors.emplace(std::begin(message_descriptors), message_descriptor.clone());
        }
        
        /**
         Add a message descriptor to the list of message descriptors
         */
        template <typename T>
        void add_message_descriptor(const T &message_descriptor)
        {
            message_descriptors.emplace_back(message_descriptor.clone());
        }
        
        /**
         Add a comma separated list of message descriptors to the list of message descriptors
         */
        template <typename U, typename... T>
        void add_message_descriptor(const U &head, const T &...tail)
        {
            message_descriptors.emplace_back(head.clone());
            add_message_descriptor(tail...);
        }
        
        class_descriptor &desc(std::string description)
        {
            desc_ = description;
            return *this;
        }
        
        class_descriptor &url(std::string url)
        {
            url_ = url;
            return *this;
        }
        
        class_descriptor &notes(std::string notes)
        {
            notes_ = notes;
            return *this;
        }
        
        class_descriptor &num_outlets(int num_outlets)
        {
            num_outlets_ = num_outlets;
            return *this;
        }
        
        std::string print(const generic_formatter &formatter) const;
        
        // ml_formattable.h virtual methods
        virtual std::string desc_string(void) const;
        virtual std::string name_string(void) const;
        virtual std::string url_string(void) const;
        virtual unsigned int num_outlets(void) const;
        virtual std::string notes_string(void) const;
        virtual std::vector<std::unique_ptr<formattable_message_descriptor>> get_formattable_message_descriptors(void) const;
        
    private:
        std::vector<std::unique_ptr<message_descriptor>> message_descriptors;
        const std::string name_;
        std::string desc_;
        std::string notes_;
        std::string url_;
        unsigned int num_outlets_ = 2;
        const class_descriptor *parent;
    };

    /**
     Documentation manage to manage the lifetime and access to a set of class descriptors
     */
    class doc_manager
    {
    public:
        static doc_manager& shared_instance(generic_formatter &formatter);
        doc_manager(generic_formatter &formatter);
        
        std::string doc_for_class(std::string class_name) const;
        
    private:
        void add_class_descriptor(std::string name);
        void add_class_descriptor(std::string name, std::string parent);
        void add_class_descriptors(std::string parent, std::initializer_list<std::string> names);
 
        doc_manager(doc_manager const&) = delete;
        void operator=(doc_manager const&) = delete;

        void populate(void);
        
        std::map<std::string, class_descriptor> descriptors;
        generic_formatter &formatter;
    };
}


#endif /* defined(ml_doc_h__) */
