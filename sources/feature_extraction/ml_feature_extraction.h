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


#ifndef ml_feature_extraction_h__
#define ml_feature_extraction_h__

#include "ml_ml.h"

namespace ml
{
    class feature_extraction : public ml
    {
        FLEXT_HEADER_S(feature_extraction, ml, setup);
        
    public:
        feature_extraction();
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_GET(c, "num_input_dimensions", get_num_input_dimensions);
            FLEXT_CADDATTR_GET(c, "num_output_dimensions", get_num_output_dimensions);
        }
        
        void map(int argc, const t_atom *argv);
                
        // Flext attribute getters
        void get_num_input_dimensions(int &num_input_dimensions) const;
        void get_num_output_dimensions(int &num_output_dimensions) const;
        
        virtual GRT::MLBase &get_MLBase_instance(); // TODO: should be "final" but g++ 4.6.2 doesn't support it
        virtual const GRT::MLBase &get_MLBase_instance() const; // TODO: should be "final" but g++ 4.6.2 doesn't support it
        
        virtual GRT::FeatureExtraction &get_FeatureExtraction_instance() = 0;
        virtual const GRT::FeatureExtraction &get_FeatureExtraction_instance() const = 0;
        
        // Override pure virtual functions - do nothing
        virtual bool read_specialised_dataset(std::string &path) { return true; };
        virtual bool write_specialised_dataset(std::string &path) const { return true; };
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLGET_I(get_num_input_dimensions);
        FLEXT_CALLGET_I(get_num_output_dimensions);
        
        static const std::string attribute_help;
    };
}




#endif
