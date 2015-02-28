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


//Method [0-N]: (methods are stateless)
//Name
//Description
//Arguments

#include <string>
#include <vector>
#include <utility>
#include <memory>
#include <map>

#ifndef ml_doc_h
#define ml_doc_h


namespace ml_doc
{
    class message_descriptor
    {
    public:
        virtual std::string print(void)
        {
            std::string out = name + ": " + desc + ". ";
            return out;
        }

        std::string name;
        std::string desc;
    };

    template <typename T>
    class valued_message_descriptor : public message_descriptor
    {

    public:
        virtual std::string print(void)
        {
            std::string out = message_descriptor::print();
            if (allowed_values.size())
            {
                out += "(allowed values: [";
                for (auto val : allowed_values) 
                {
                    out += std::to_string(val);
                    out += " ";
                }
                out += "]) ";
            }

            out += "(default: " + std::to_string(def) + ") ";

            return out;
        }

        std::vector<T> allowed_values;
        T def;
    };

    template <typename T>
    class ranged_message_descriptor :
    public valued_message_descriptor<T>
    {

    public:
        virtual std::string print(void)
        {
            std::string out = valued_message_descriptor<T>::print();
            out += "(min: " + std::to_string(min) + " max: " + std::to_string(min) + ") ";
            return out;
        }

        T min;
        T max;
    };

    class class_descriptor
    {
    public:
        template <typename T>
        void add_message_descriptor(T &message_descriptor)
        {
            std::unique_ptr<ml_doc::message_descriptor> attr_ptr(new T(message_descriptor));
            message_descriptors.push_back(std::move(attr_ptr));
        }

        std::string print(void)
        {
            std::string out = name + ": " + desc + "\n";

            for(auto &attr : message_descriptors)
            {
                out += attr->print();
                out += "\n";
            }
            return out;
        }

        std::string name;
        std::string desc;

    private:
        std::vector<std::unique_ptr<message_descriptor> > message_descriptors;
    };

    class ml_doc_manager
    {
    public:
        static ml_doc_manager& shared_instance()
        {
            static ml_doc_manager instance;
            instance.populate();
            return instance;
        }

        std::string descriptor_for_class(std::string class_name)
        {
            auto it = descriptors.find(class_name);
            std::unique_ptr<class_descriptor> descriptor;

            if (it == descriptors.end())
            {
                return "";
            }

            return it->second->print();
        }

        bool is_empty(class_descriptor &descriptor)
        {
            return &descriptor == &empty_descriptor;
        }

    private:
        ml_doc_manager() {};
        ml_doc_manager(ml_doc_manager const&) = delete;
        void operator=(ml_doc_manager const&) = delete;
    
        void populate(void)
        {
            std::unique_ptr<class_descriptor> ml_mlp(new class_descriptor());
            ranged_message_descriptor<int> min_epochs;
            
            min_epochs.name = "min_epochs";
            min_epochs.desc = "the minimum number of training iterations";
            min_epochs.min = 0;
            min_epochs.max = 100;
            min_epochs.def = 10;
            min_epochs.allowed_values = {1, 2, 3, 4, 5};
            
            ml_mlp->add_message_descriptor(min_epochs);
            ml_mlp->name = "ml.mlp";
            ml_mlp->desc = "blah blah blah";
            
            descriptors.emplace(std::pair<std::string, std::unique_ptr<class_descriptor> >("ml.mlp", std::move(ml_mlp)));
        }

        std::map<std::string, std::unique_ptr<class_descriptor> > descriptors;
        class_descriptor empty_descriptor;
  };
}


#endif /* defined(ml_descriptor) */
