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
#include <string>


int main(int argc, const char * argv[]) {

    ml_doc::html_table_formatter html_table_formatter;
    ml_doc::doc_manager &doc_manager = ml_doc::doc_manager::shared_instance(html_table_formatter);
    std::string doc;
    
    
    for (auto class_name : ml::k_classes)
    {
        doc += doc_manager.doc_for_class(class_name);
    }
    
    std::cout << doc;
    
    return 0;
}
