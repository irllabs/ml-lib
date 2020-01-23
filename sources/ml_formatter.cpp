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

#include "ml_formatter.h"
#include "ml_formattable.h"

#include "../vendor/json/single_include/nlohmann/json.hpp"

#include <regex>
#include <sstream>

namespace ml_doc
{
    namespace k
    {
        static const std::string url_preamble = "For more information on the technique used, see: ";
        static const std::string notes_preamble = "NOTES: ";
        static const std::string main_obj_id = "obj-10000";
        static const std::string printl_obj_id = "obj-10001";
        static const std::string printr_obj_id = "obj-10002";
        static const uint16_t init_message_x = 180;
        static const uint16_t init_message_y = 105;
        static const uint16_t ml_obj_x = 30;
        static const uint16_t ml_obj_y = 700;
        static const uint16_t heading_x = 30;
        static const uint16_t heading_y = 15;
        static const uint16_t heading_spacing = 30;
        static const uint16_t max_message_spacing = 40;
        static const uint16_t pd_message_spacing = 50;
        static const uint16_t tall_patching_height = 650;
        static const uint16_t short_patching_height = 300;
        static const uint16_t max_message_comment_distance = 220;
        static const uint16_t pd_message_comment_distance = 310;
    }
    
    class obj_id
    {
    public:
        static std::string get()
        {
            return std::to_string(++current_id);
        };
        
        static int current_id;
    };
    
    int obj_id::current_id = 0;
    
    // free standing functions
    
    std::string convert_to_non_scientific_float(const std::string& s)
    {
        double d;
        std::stringstream in(s);
        std::stringstream out;
        
        in >> d;
        out << std::fixed << d;

        return out.str();
    }
    
    std::string get_generic_desc(const formattable_message_descriptor &f)
    {
        std::string formatted = f.desc_string() + ". ";
        std::string descriptors = "";
        std::vector<std::string> allowed_values = f.allowed_values_strings();
        std::size_t num_allowed_values = allowed_values.size();
       
        for (int i = 0; i < num_allowed_values; ++i)
        {
            if (i == 0)
            {
                descriptors += "allowed values: [";
            }
            else
            {
                descriptors += " ";
            }
           
            descriptors += allowed_values[i];
            
            if (i == num_allowed_values - 1)
            {
                descriptors += "] ";
            }
        }
        
        if (!f.def_string().empty())
        {
            descriptors += "default: " + f.def_string() + " ";
        }
        
        if (!f.min_string().empty())
        {
            descriptors += "min: " + f.min_string() + " ";
        }
        
        if (!f.max_string().empty())
        {
            descriptors += "max: " + f.max_string();
        }
        
        descriptors = std::regex_replace(descriptors, std::regex(" +$"), "");
        
        if (!descriptors.empty())
        {
            formatted += "(" + descriptors + ")";
        }
        
        return formatted;
    }
    
    
    // max_formatter
    
    std::string max_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + get_generic_desc(f) + "\n";
        return formatted;
    }
    
    std::string max_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = f.name_string() + ": " + f.desc_string() + "\n";
        
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
        }
        
        return formatted;
    }
    
    // max_help_formatter
    
    std::string max_help_formatter::format(const formattable_message_descriptor &f, const uint16_t message_y, const std::string& obj_id) const
    {
        using namespace nlohmann;
        
        json patch;
        patch["boxes"] = json::array();
                
        std::string arguments = f.example_string() != "" ? f.example_string() : convert_to_non_scientific_float(f.def_string());
        std::string name = f.name_string();
        std::string comparator = "float";
        
        if (name.compare(0, comparator.length(), comparator) == 0)
        {
            patch["boxes"].push_back(
                                     {{
                "box", {
                    {"id", obj_id},
                    {"maxclass", "flonum"},
                    {"numinlets", 1},
                    {"numoutlets", 2},
                    {"outlettype", {"", "bang"}},
                    {"parameter_enable", 0},
                    {"patching_rect", { k::init_message_x, message_y, 50, 20.0 }}
                }
            }});
        }
        else
        {
            patch["boxes"].push_back(
            {{
                "box", {
                    {"id", obj_id},
                    {"fixwidth", 1},
                    {"maxclass", "message"},
                    {"numinlets", 2},
                    {"numoutlets", 1},
                    {"outlettype", {""}},
                    {"patching_rect", { k::init_message_x, message_y, 0, 22.0 }},
                    {"text", f.name_string() + " " + arguments}
                }
            }});
        }
        
        patch["boxes"].push_back({{
            "box", {
                {"id", obj_id + "c"},
                {"fixwidth", 1},
                {"bubble", 1},
                {"maxclass", "comment"},
                {"numinlets", 1},
                {"numoutlets", 0},
                {"patching_rect", { k::init_message_x + k::max_message_comment_distance, message_y, 0, 20.0 }},
                {"text", get_generic_desc(f)}
            }
        }});
        
        patch["lines"] = {
            {{
                "patchline", {
                    {"destination", json::array({k::main_obj_id, 0})},
//                    {"hidden", 1},
                    {"source", json::array({obj_id, 0})}
                }
            }}
        };
        
        return patch.dump();
    }
    
    std::string max_help_formatter::format(const formattable_class_descriptor &f) const
    {
        using namespace nlohmann;
        
        std::vector<std::unique_ptr<formattable_message_descriptor>> formattable_message_descriptors = f.get_formattable_message_descriptors();
        auto url_text = f.url_string().empty() ? "" : k::url_preamble + f.url_string();
        const int height = formattable_message_descriptors.size() < 5 ? k::short_patching_height : k::tall_patching_height;
        
        json patch;
        
        patch["patcher"] = {{"autosave", 0}, {"rect", {80, 80, 1200, height}}};
        patch["patcher"]["boxes"] = {
            {{
                // Main heading
                "box", {
                    {"id", obj_id::get()},
                    {"fixwidth", 1},
                    {"maxclass", "comment"},
                    {"numinlets", 1},
                    {"numoutlets", 0},
                    {"fontface", 1},
                    {"fontsize", 16.0},
                    {"patching_rect", { k::heading_x, k::heading_y, 0, 20.0 }},
                    {"text", f.desc_string()}
                }
            }},
            {{
                // URL
                "box", {
                    {"id", obj_id::get()},
                    {"fixwidth", 1},
                    {"maxclass", "comment"},
                    {"numinlets", 1},
                    {"numoutlets", 0},
                    {"patching_rect", { k::heading_x, k::heading_y + k::heading_spacing, 0, 20.0 }},
                    {"text", url_text}
                }
            }},
            {{
                // The actual ml. object
                "box", {
                    {"id", k::main_obj_id},
                    {"fixwidth", 1},
                    {"maxclass", "newobj"},
                    {"numinlets", 1},
                    {"numoutlets", 2},
                    {"outlettype", { "", "" }},
                    {"patching_rect", {k::ml_obj_x, height - 50, 0, 22.0 }},
                    {"text", f.name_string()}
                }
            }},
            {{
                "box", {
                    {"id", k::printl_obj_id},
                    {"fixwidth", 1},
                    {"maxclass", "newobj"},
                    {"numinlets", 1},
                    {"numoutlets", 0},
                    {"patching_rect", {k::ml_obj_x, height, 0, 22.0 }},
                    {"text", "print left"}
                }
            }}
        };
        
        const auto num_outlets = f.num_outlets();
        if (num_outlets == 2)
        {
            patch["patcher"]["boxes"] +=
            {{
                "box", {
                    {"id", k::printr_obj_id},
                    {"fixwidth", 1},
                    {"maxclass", "newobj"},
                    {"numinlets", 1},
                    {"numoutlets", 0},
                    {"patching_rect", {k::ml_obj_x + 27, height + 80, 0, 22.0 }},
                    {"text", "print right"}
                }
            }};
        }
        
        std::string notes = f.notes_string();
        if (!notes.empty())
        {
            patch["patcher"]["boxes"] +=
            {{
                "box", {
                    {"id", obj_id::get()},
                    {"fixwidth", 1},
                    {"bgcolor", {0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0}},
                    {"maxclass", "comment"},
                    {"numinlets", 1},
                    {"numoutlets", 0},
                    {"patching_rect", { k::heading_x, k::heading_y + k::heading_spacing * 1.6, 0, 20.0 }},
                    {"text", k::notes_preamble + notes}
                }
            }};
        }
        
        patch["patcher"]["lines"] = json::array();

        uint16_t message_y = k::init_message_y;
        json& boxes = patch["patcher"]["boxes"];
        json& lines = patch["patcher"]["lines"];
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            std::string formatted = this->format(*formattable, message_y, obj_id::get());
            json messages = json::parse(formatted);
            

            boxes.insert(boxes.end(), messages["boxes"].begin(), messages["boxes"].end());
            lines.insert(lines.end(), messages["lines"].begin(), messages["lines"].end());
            message_y += k::max_message_spacing;
        }
        
        lines += {{
            "patchline", {
                {"destination", json::array({k::printl_obj_id, 0})},
                {"source", json::array({k::main_obj_id, 0})}
            }
        }};
        
        if (num_outlets == 2)
        {
            lines += {{
                "patchline", {
                    {"destination", json::array({k::printr_obj_id, 0})},
                    {"source", json::array({k::main_obj_id, 1})}
                }
            }};
        }
        
        return patch.dump(4);
    }

    // pd_help_formatter
    std::string pd_escaped(const std::string& s)
    {
        return std::regex_replace(s, std::regex("(,|;)"), " \\$1");
    }
    
    
    std::string pd_help_formatter::format(const formattable_message_descriptor &f,
                                          const uint16_t message_x,
                                          const uint16_t message_y,
                                          uint16_t &objects_added) const
    {
        using std::to_string;
        std::string name = f.name_string();
        std::string comparator = "float";
        std::string coords = to_string(message_x) +  " " + to_string(message_y);
        std::string arguments = f.example_string() != "" ? f.example_string() : f.def_string();
        std::string formatted = name.compare(0, comparator.length(), comparator) == 0 ?
                                "#X floatatom " +
                                coords + " 5 0 0 0 - - -;\n"
                                :
                                "#X msg " +
                                coords +  " " +
                                name + " " + arguments + " " + ";\n"
                                ;
        formatted += "#X text " + to_string(message_x + k::pd_message_comment_distance) + " " + to_string(message_y) + " " + pd_escaped(f.desc_string()) + ";\n";
        objects_added = 2;
        
        return formatted;
    }
    
    std::string pd_help_formatter::format(const formattable_class_descriptor &f) const
    {
        
        using std::to_string;

        std::string formatted = "#N canvas 600 140 900 900 12;\n";
        uint16_t message_x = k::init_message_x;
        uint16_t message_y = k::init_message_y;
        uint16_t object_count = 0;

        formatted += "#X obj " + to_string(k::ml_obj_x) + " " + to_string(k::ml_obj_y) + " " + f.name_string() + ";\n";
        ++object_count;
        
        formatted += "#X text " + to_string(k::heading_x) + " " + to_string(k::heading_y) + " " + pd_escaped(f.desc_string()) + ";\n";
        ++object_count;

        const auto wiki_url = f.url_string();
        if (wiki_url != "")
        {
            formatted += "#X text " + to_string(k::heading_x) + " " + to_string(k::heading_y + k::heading_spacing) +
            " " + pd_escaped(k::url_preamble + f.url_string()) + ";\n";
            ++object_count;
        }
        
        std::string notes = f.notes_string();
        if (!notes.empty())
        {
            formatted += "#X text " + to_string(450) + " " + to_string(k::heading_y) +
        " " + pd_escaped(k::notes_preamble + notes) + ";\n";
            ++object_count;
        }
                
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            uint16_t objects_added = 0;
            formatted += this->format(*formattable, message_x, message_y, objects_added);
            formatted += "#X connect " + to_string(object_count) + " 0 0 0;\n";
            object_count += objects_added;
            message_y += k::pd_message_spacing;
        }
        
        // TODO: abstract this into an add_object helper method
        formatted += "#X obj " + to_string(k::ml_obj_x) + " " + to_string(k::ml_obj_y + 80) + " print left;\n";
        formatted += "#X connect 0 0 " + to_string(object_count) + " 0;\n";
        ++object_count;
        
        const auto num_outlets = f.num_outlets();
        if (num_outlets == 2)
        {
            formatted += "#X obj " + to_string(k::ml_obj_x + 80) + " " + to_string(k::ml_obj_y + 80) + " print right;\n";
            formatted += "#X connect 0 1 " + to_string(object_count) + " 0;\n";
        }
        return formatted;
    }
    
    // html_table_formatter
    
    std::string html_table_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = "<tr><td>" + f.name_string() + "</td><td>" + f.desc_string() + "</td>";
        std::vector<std::string> allowed_values = f.allowed_values_strings();
        
        formatted += "<td>";
        
        if (allowed_values.size())
        {
            for (auto it = allowed_values.begin(); it != allowed_values.end();  ++it )
            {
                formatted += *it;
                if (std::next(it) != allowed_values.end())
                {
                    formatted += ", ";
                }
            }
        }
        
        formatted += "</td><td>";
        
        if (!f.min_string().empty())
        {
            formatted += f.min_string();
        }
        
        formatted += "</td><td>";
        
        if (!f.max_string().empty())
        {
            formatted += f.max_string();
        }
        
        formatted += "</td><td>";
        
        if (!f.def_string().empty())
        {
            formatted += f.def_string();
        }
        
        formatted += "</td></tr>\n";
        
        return formatted;
    }
    
    std::string html_table_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = "<h2>" + f.name_string() + "</h2>" + "\n" + "<p>" + f.desc_string() + "<br/>URL: <a href=\"" + f.url_string() + "\">" + f.url_string() + "</a><br/>" + k::notes_preamble + f.notes_string() + "</p>\n";
        
        formatted += "<table>\n<thead>\n<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>\n</thead></tr>\n";
        
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
        }
        
        formatted += "</table>";
        
        return formatted;
    }
    
    // maxref xml formatter
    std::string xml_escaped(const std::string& s)
    {
        auto escaped = std::regex_replace(s, std::regex("(<)"), "&lt;");
        return std::regex_replace(escaped, std::regex("(>)"), "&gt;");
    }
    
    std::string maxref_xml_formatter::format(const formattable_message_descriptor &f) const
    {
        std::string formatted = "<method name=\"" + f.name_string() + "\">" + "<arglist/>";
        
        formatted += "<digest>" + xml_escaped(get_generic_desc(f)) + "</digest>";
        formatted += "<description></description>";
        formatted += "</method>";
        
        return formatted;
    }
    
    std::string maxref_xml_formatter::format(const formattable_class_descriptor &f) const
    {
        std::string formatted = "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \
        <?xml-stylesheet href=\"./_c74_ref.xsl\" type=\"text/xsl\"?> \
        <c74object name=\"" + f.name_string() +  "\">";
        
        formatted += "<digest>" + f.desc_string() + "</digest>" +
        "<description>" + k::url_preamble + f.url_string() + "</description>" +
        "<metadatalist> \
        <metadata name=\"author\">IRL Labs</metadata> \
        <metadata name=\"tag\">ml.lib</metadata> \
        <metadata name=\"tag\">Machine Learning</metadata> \
        <metadata name=\"tag\">64-bit</metadata> \
        </metadatalist> \
        <inletlist> \
        <inlet id=\"0\" type=\"list\"> \
        <digest>Message inlet: typically add / train / map</digest> \
        </inlet> \
        </inletlist> \
        <outletlist> \
        <outlet id=\"0\" type=\"int\"> \
        <digest>Class ID: the output class ID of the classifier</digest> \
        </outlet> \
        <outlet id=\"1\" type=\"list\"> \
        <digest>Message outlet: used for message feedback and class probabilities</digest> \
        </outlet> \
        </outletlist>";
        
        formatted += "<methodlist>";
        
        std::vector<std::unique_ptr<formattable_message_descriptor> > formattable_message_descriptors = f.get_formattable_message_descriptors();
        
        for (std::unique_ptr<formattable_message_descriptor> &formattable : formattable_message_descriptors)
        {
            formatted += this->format(*formattable);
        }
        
        formatted += "</methodlist>";
        formatted += "</c74object>";
        
        
        return formatted;
    }
    
}
