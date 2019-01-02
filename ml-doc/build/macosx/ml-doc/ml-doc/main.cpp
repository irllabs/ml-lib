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
#include <memory>

bool arg_exists(const char **begin, const char **end, const std::string &option)
{
    return std::find(begin, end, option) != end;
}

int main(int argc, const char * argv[])
{
    std::ofstream file;
    std::string file_ext;
    std::string doc = "";
    std::unique_ptr<ml_doc::generic_formatter> formatter;

    if (arg_exists(argv, argv+argc, "-html"))
    {
        formatter = std::make_unique<ml_doc::html_table_formatter>();
        doc = "<h1>Class Reference</h1>\n";
        file_ext = ".html";
    }
    else if (arg_exists(argv, argv+argc, "-pd"))
    {
        formatter = std::make_unique<ml_doc::pd_help_formatter>();
        file_ext = "-help.pd";
    }
    else if (arg_exists(argv, argv+argc, "-max"))
    {
        formatter = std::make_unique<ml_doc::max_help_formatter>();
        file_ext = ".maxhelp";
    }
    else if (arg_exists(argv, argv+argc, "-maxref"))
    {
        formatter = std::make_unique<ml_doc::maxref_xml_formatter>();
        file_ext = ".maxref.xml";
    }
    else
    {
        EXIT_FAILURE;
    }
    
    ml_doc::doc_manager &doc_manager = ml_doc::doc_manager::shared_instance(*formatter.get());

    for (auto class_name : ml::k_classes)
    {
        doc = doc_manager.doc_for_class(class_name);
        file.open(class_name + file_ext);
        file << doc;
        file.close();
    }
    
    return 0;
}
