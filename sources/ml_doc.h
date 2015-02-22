//
//  ml_doc.h
//  ml
//
//  Created by Jamie Bullock on 18/02/2015.
//
//

#ifndef ml_ml_doc
#define ml_ml_doc

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

namespace ml_doc
{
    class ml_doc_attribute_base
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
    class ml_doc_attribute : public ml_doc_attribute_base
    {

    public:
        virtual std::string print(void)
        {
            std::string out = ml_doc_attribute_base::print();
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
    class ml_doc_ranged_attribute :
    public ml_doc_attribute<T>
    {

    public:
        virtual std::string print(void)
        {
            std::string out = ml_doc_attribute<T>::print();
            out += "(min: " + std::to_string(min) + " max: " + std::to_string(min) + ") ";
            return out;
        }

        T min;
        T max;
    };

    class ml_doc_class
    {
    public:
        template <typename T>
        void add_attribute(T &attribute)
        {
            std::unique_ptr<ml_doc_attribute_base> attr_ptr(new T(attribute));
            attributes.push_back(std::move(attr_ptr));
        }

        std::string print(void)
        {
            std::string out = name + ": " + desc + "\n";

            for(auto &attr : attributes)
            {
                out += attr->print();
                out += "\n";
            }
            return out;
        }

        std::string name;
        std::string desc;

    private:
        std::vector<std::unique_ptr<ml_doc_attribute_base> > attributes;
    };

    class ml_shared_doc_manager
    {
    public:
        static ml_shared_doc_manager& shared_instance()
        {
            static ml_shared_doc_manager instance;
            instance.populate();
            return instance;
        }

        std::string doc_for_class(std::string class_name)
        {
            auto it = docs.find(class_name);
            std::unique_ptr<ml_doc_class> doc;

            if (it == docs.end())
            {
                return "";
            }

            return it->second->print();
        }

        bool is_empty(ml_doc_class &doc)
        {
            return &doc == &empty_doc;
        }

    private:
        ml_shared_doc_manager() {};
        ml_shared_doc_manager(ml_shared_doc_manager const&) = delete;
        void operator=(ml_shared_doc_manager const&) = delete;
    
        void populate(void)
        {
            std::unique_ptr<ml_doc_class> ml_mlp(new ml_doc_class());
            ml_doc_ranged_attribute<int> min_epochs;
            
            min_epochs.name = "min_epochs";
            min_epochs.desc = "the minimum number of training iterations";
            min_epochs.min = 0;
            min_epochs.max = 100;
            min_epochs.def = 10;
            min_epochs.allowed_values = {1, 2, 3, 4, 5};
            
            ml_mlp->add_attribute(min_epochs);
            ml_mlp->name = "ml.mlp";
            ml_mlp->desc = "blah blah blah";
            
            docs.emplace(std::pair<std::string, std::unique_ptr<ml_doc_class> >("ml.mlp", std::move(ml_mlp)));
        }

        std::map<std::string, std::unique_ptr<ml_doc_class> > docs;
        ml_doc_class empty_doc;
  };
}


#endif /* defined(ml_ml_doc) */
