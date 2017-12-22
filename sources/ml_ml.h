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


#ifndef ml_ml_h__
#define ml_ml_h__

#include "ml_base.h"

#include "GRT.h"

#include <vector>
#include <map>

#include <stdint.h>

namespace ml
{
    const t_symbol *get_s_train();
    const t_symbol *get_s_clear();
    const t_symbol *get_s_read();
    const t_symbol *get_s_write();
    const t_symbol *get_s_probs();
    const t_symbol *get_s_error();

    void init_global_symbols();
    
    struct grt_type_exception : public std::exception
    {
        const char* what() const noexcept
        {
            return "Invalid GRT type";
        }
    };
    
    class ml:
    public base
    {
        FLEXT_HEADER_S(ml, flext_base, setup);
        
    public:
        ml();
        
    protected:
        
        static void setup(t_classid c);
        
        virtual void add(int argc, const t_atom *argv);
        virtual void write(const t_symbol *path) const;
        virtual void read(const t_symbol *path);
        virtual void train();
        virtual void clear();
        virtual void map(int argc, const t_atom *argv);
        virtual void usage() const;
        
        void record(bool state);
        void any(const t_symbol *s, int argc, const t_atom *argv);
        
        data_type get_data_type() const;
        void set_data_type(data_type type);
        
        virtual GRT::MLBase &get_MLBase_instance() = 0;
        virtual const GRT::MLBase &get_MLBase_instance() const = 0;
        virtual bool read_specialised_dataset(std::string &path) = 0;
        virtual bool write_specialised_dataset(std::string &path) const = 0;
                
        // Flext attribute setters
        void set_scaling(bool scaling);
        void set_probs(bool probs);
        
        // Flext attribute getters
        void get_scaling(bool &scaling) const;
        void get_probs(bool &probs) const;
        
        GRT::UnlabelledData unlabelled_data;
        GRT::ClassificationData classification_data;
        GRT::TimeSeriesClassificationData time_series_classification_data;
        GRT::RegressionData regression_data;
        GRT::MatrixDouble time_series_data;
        GRT::UINT current_label;
        
        bool probs;
        bool recording;
                
    private:
        
        void record_(bool state);
        void set_num_inputs(uint16_t num_inputs);
        
        // Flext method wrappers
        FLEXT_CALLBACK_A(any);
        FLEXT_CALLBACK_V(add);
        FLEXT_CALLBACK_B(record);
        FLEXT_CALLBACK_S(write);
        FLEXT_CALLBACK_S(read);
        FLEXT_CALLBACK(train);
        FLEXT_CALLBACK(clear);
        FLEXT_CALLBACK_V(map);
        FLEXT_CALLBACK(usage);
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_B(get_scaling, set_scaling);
        FLEXT_CALLVAR_B(get_probs, set_probs);
        
        data_type data_type_;
        
    };

}


#endif
