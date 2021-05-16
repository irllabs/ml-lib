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

void generate_doc(ml_doc::generic_formatter& formatter, std::string file_ext, std::string header = "")
{
    ml_doc::doc_manager doc_manager(formatter);
    std::ofstream file;
    
    for (auto class_name : ml::k_classes)
    {
        auto doc = header + doc_manager.doc_for_class(class_name);
        file.open(class_name + file_ext);
        file << doc;
        file.close();
    }
}

int main(int argc, const char * argv[])
{
    if (argc == 1)
    {
       std::cout << "Usage: ml-doc [-html] [-pd] [-max] [-maxref]" << std::endl;
    }
   
    if (arg_exists(argv, argv+argc, "-html"))
    {
        ml_doc::html_table_formatter formatter;
        generate_doc(formatter, ".html", "<h1>Class Reference</h1>\n");
    }
    if (arg_exists(argv, argv+argc, "-pd"))
    {
        ml_doc::pd_help_formatter formatter;
        generate_doc(formatter, "-help.pd");
    }
    if (arg_exists(argv, argv+argc, "-max"))
    {
        ml_doc::max_help_formatter formatter;
        generate_doc(formatter, ".maxhelp");
    }
    if (arg_exists(argv, argv+argc, "-maxref"))
    {
        ml_doc::maxref_xml_formatter formatter;
        generate_doc(formatter, ".maxref.xml");
    }
   
    return 0;
}
