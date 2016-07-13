//
//  main.cpp
//  ml-doc
//
//  Created by Jamie Bullock on 17/08/2015.
//  Copyright (c) 2015 Jamie Bullock. All rights reserved.
//

#include "ml_doc.h"
#include "ml_names.h"

#include <iostream>
#include <fstream>
#include <string>

bool arg_exists(const char **begin, const char **end, const std::string &option)
{
    return std::find(begin, end, option) != end;
}

int main(int argc, const char * argv[]) {
    
    if (arg_exists(argv, argv+argc, "-html"))
    {
        ml_doc::html_table_formatter html_table_formatter;
        ml_doc::doc_manager &doc_manager = ml_doc::doc_manager::shared_instance(html_table_formatter);
        std::string doc = "";
        doc = "<h1>Class Reference</h1>\n";
        
        for (auto class_name : ml::k_classes)
        {
            doc += doc_manager.doc_for_class(class_name);
        }
        std::cout << doc;
    }
    else if (arg_exists(argv, argv+argc, "-pd"))
    {
        ml_doc::pd_help_formatter pd_help_formatter;
        ml_doc::doc_manager &doc_manager = ml_doc::doc_manager::shared_instance(pd_help_formatter);
        std::string doc = "";
        for (auto class_name : ml::k_classes)
        {
            doc = doc_manager.doc_for_class(class_name);
            std::ofstream file;
            file.open(class_name + "-help.pd");
            file << doc;
            file.close();
        }
    }
    
    return 0;
}
