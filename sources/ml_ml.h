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

#ifndef ml_ml_h
#define ml_ml_h

#include "ml_base.h"

#include "GRT.h"

#include <vector>
#include <map>

#include <stdint.h>

namespace ml
{
    typedef enum ml_data_type_
    {
        LABELLED_CLASSIFICATION,
        LABELLED_REGRESSION,
        LABELLED_TIME_SERIES_CLASSIFICATION,
        UNLABELLED_CLASSIFICATION,
        MLP_NUM_DATA_TYPES
    }
    ml_data_type;
    
    // Constants
    const ml_data_type default_data_type = LABELLED_CLASSIFICATION;
    const bool default_scaling = true;
    const GRT::UINT defaultNumInputDimensions = 2;
    const GRT::UINT defaultNumOutputDimensions = 1;
    
    // Utility functions
    const std::string get_symbol_as_string(const t_symbol *symbol);
    const std::string get_file_extension_from_path(const std::string &path); // can be a full path or just file name
    
    class ml:
    public ml_base
    {
        FLEXT_HEADER_S(ml, flext_base, setup);
        
    public:
        ml();
        
    protected:
        static void setup(t_classid c);
        
        static const t_symbol *s_train;
        static const t_symbol *s_clear;
        static const t_symbol *s_read;
        static const t_symbol *s_write;
        static const t_symbol *s_probs;
        static const t_symbol *s_error;
                
        virtual void add(int argc, const t_atom *argv);
        virtual void write(const t_symbol *path) const;
        virtual void read(const t_symbol *path);
        virtual void train();
        virtual void clear();
        virtual void map(int argc, const t_atom *argv);
        virtual void usage() const;
        
        void record(bool state);
        void any(const t_symbol *s, int argc, const t_atom *argv);
        
        ml_data_type get_data_type() const;
        void set_data_type(ml_data_type data_type);
        
        virtual GRT::MLBase &get_MLBase_instance() = 0;
        virtual const GRT::MLBase &get_MLBase_instance() const = 0;
        virtual bool read_specialised_dataset(std::string &path) = 0;
        virtual bool write_specialised_dataset(std::string &path) const = 0;
        
        bool check_empty_with_error(std::string &string) const;
        
        std::string get_grt_version();
        
        // Attribute setters
        void set_scaling(bool scaling);
        void set_probs(bool probs);
        
        // Attribute getters
        void get_scaling(bool &scaling) const;
        void get_probs(bool &probs) const;
        
        // Instance variables
        GRT::UnlabelledData unlabelledData;
        GRT::ClassificationData classificationData;
        GRT::TimeSeriesClassificationData timeSeriesClassificationData;
        GRT::RegressionData regressionData;
        GRT::MatrixDouble timeSeriesData;
        GRT::UINT currentLabel;
        bool probs;
        bool recording;
        
    private:
        void record_(bool state);
        void set_num_inputs(uint8_t num_inputs);
        // Method wrappers
        FLEXT_CALLBACK_A(any);
        FLEXT_CALLBACK_V(add);
        FLEXT_CALLBACK_B(record);
        FLEXT_CALLBACK_S(write);
        FLEXT_CALLBACK_S(read);
        FLEXT_CALLBACK(train);
        FLEXT_CALLBACK(clear);
        FLEXT_CALLBACK_V(map);
        FLEXT_CALLBACK(usage);
        
        // Attribute wrappers
        FLEXT_CALLVAR_B(get_scaling, set_scaling);
        FLEXT_CALLVAR_B(get_probs, set_probs);
        
        ml_data_type data_type;
    };
}


#endif
