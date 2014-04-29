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

#include "GRT.h"

#include <flext.h>

#include <vector>
#include <map>

#include <stdint.h>

#define ML_VERSION "0.14.0"
#define ML_NAME "ml-lib"
#define ML_POST_SEP "---------------------------------------"

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
    std::string get_symbol_as_string(const t_symbol *symbol);
    
    class ml:
    public flext_base
    {
        FLEXT_HEADER_S(ml, flext_base, setup);
        
    public:
        ml();
        
    protected:
        static void setup(t_classid c);
        
        static const t_symbol *s_train;
        static const t_symbol *s_clear;
        static const t_symbol *s_load;
        static const t_symbol *s_save;
        static const t_symbol *s_probs;
        static const t_symbol *s_error;
                
        virtual void add(int argc, const t_atom *argv);
        virtual void save(const t_symbol *path) const;
        virtual void load(const t_symbol *path);
        virtual void train();
        virtual void clear();
        virtual void map(int argc, const t_atom *argv);
        virtual void usage();
        
        void record(bool state);
        void any(const t_symbol *s, int argc, const t_atom *argv);
        
        ml_data_type get_data_type() const;
        void set_data_type(ml_data_type data_type);
        
        virtual GRT::MLBase &get_MLBase_instance() = 0;
        virtual const GRT::MLBase &get_MLBase_instance() const = 0;
        virtual bool load_specialised_data(std::string &path) = 0;
        virtual bool save_specialised_data(std::string &path) const = 0;
        
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
        FLEXT_CALLBACK_S(save);
        FLEXT_CALLBACK_S(load);
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
