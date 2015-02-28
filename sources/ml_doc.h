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


//Class [1]:
//Name
//Short description
//Long description
//URL
//
//Attribute [0-N]:
//Name
//Description
//Minimum
//Maximum
//Type
//Allowed Values
//Default Value
//
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
    class attribute_doc
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
    class valued_attribute_doc : public attribute_doc
    {

    public:
        virtual std::string print(void)
        {
            std::string out = attribute_doc::print();
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
    class ranged_attribute_doc :
    public valued_attribute_doc<T>
    {

    public:
        virtual std::string print(void)
        {
            std::string out = valued_attribute_doc<T>::print();
            out += "(min: " + std::to_string(min) + " max: " + std::to_string(min) + ") ";
            return out;
        }

        T min;
        T max;
    };

    class class_doc
    {
    public:
        template <typename T>
        void add_attribute_doc(T &attribute_doc)
        {
            std::unique_ptr<ml_doc::attribute_doc> attr_ptr(new T(attribute_doc));
            attribute_docs.push_back(std::move(attr_ptr));
        }

        std::string print(void)
        {
            std::string out = name + ": " + desc + "\n";

            for(auto &attr : attribute_docs)
            {
                out += attr->print();
                out += "\n";
            }
            return out;
        }

        std::string name;
        std::string desc;

    private:
        std::vector<std::unique_ptr<attribute_doc> > attribute_docs;
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

        std::string doc_for_class(std::string class_name)
        {
            auto it = docs.find(class_name);
            std::unique_ptr<class_doc> doc;

            if (it == docs.end())
            {
                return "";
            }

            return it->second->print();
        }

        bool is_empty(class_doc &doc)
        {
            return &doc == &empty_doc;
        }

    private:
        ml_doc_manager() {};
        ml_doc_manager(ml_doc_manager const&) = delete;
        void operator=(ml_doc_manager const&) = delete;
    
        void populate(void)
        {
            std::unique_ptr<class_doc> ml_mlp(new class_doc());
            ranged_attribute_doc<int> min_epochs;
            
            min_epochs.name = "min_epochs";
            min_epochs.desc = "the minimum number of training iterations";
            min_epochs.min = 0;
            min_epochs.max = 100;
            min_epochs.def = 10;
            min_epochs.allowed_values = {1, 2, 3, 4, 5};
            
            ml_mlp->add_attribute_doc(min_epochs);
            ml_mlp->name = "ml.mlp";
            ml_mlp->desc = "blah blah blah";
            
            docs.emplace(std::pair<std::string, std::unique_ptr<class_doc> >("ml.mlp", std::move(ml_mlp)));
        }

        std::map<std::string, std::unique_ptr<class_doc> > docs;
        class_doc empty_doc;
  };
}


#endif /* defined(ml_doc) */
