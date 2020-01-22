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

#include "ml_regression.h"

#include "ml_defaults.h"

namespace ml
{
    static const std::string object_name = ML_NAME_PREFIX "mulreg";
    
    class mulreg : regression
    {
        FLEXT_HEADER_S(mulreg, regression, setup);
        
    public:
        mulreg()
        {
            post("Linear Regression based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
            set_data_type(LABELLED_REGRESSION);
        }
        
       
    protected:
        static void setup(t_classid c)
        {
            regression::setup(c);
            
            FLEXT_CADDATTR_SET(c, "num_outputs", set_num_outputs);
            FLEXT_CADDATTR_GET(c, "num_outputs", get_num_outputs);

            DefineHelp(c, object_name.c_str());
        }
        
        void map(int argc, const t_atom *argv);
        
        // Flext attribute setters
        void set_num_outputs(int num_outputs);
        
        // Flext attribute setters
        void get_num_outputs(int &num_outputs) const;

        
        // Implement pure virtual methods
        GRT::Regressifier &get_Regressifier_instance();
        const GRT::Regressifier &get_Regressifier_instance() const;

    private:
        // Flext attribue wrappers
        FLEXT_CALLVAR_I(get_num_outputs, set_num_outputs);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::MultidimensionalRegression regressifier;
        
    };
    
    // Flext attribute setters
    void mulreg::set_num_outputs(int num_outputs)
    {
        int curr_num_outputs = 0;
        
        get_num_outputs(curr_num_outputs);
        
        if (num_outputs == curr_num_outputs)
        {
            return;
        }
        
        bool success = regression_data.setInputAndTargetDimensions(regression_data.getNumInputDimensions(), num_outputs);
        
        if (success == false)
        {
            flext::error("unable to set input and target dimensions");
            return;
        }
    }
    
    // Flext attribute getters
    void mulreg::get_num_outputs(int &num_outputs) const
    {
        num_outputs = regression_data.getNumTargetDimensions();
    }
    
    // Methods
    void mulreg::map(int argc, const t_atom *argv)
    {
        GRT::UINT numInputDimensions = regression_data.getNumInputDimensions();
        GRT::VectorDouble query(numInputDimensions);
        
        if (argc < 0 || (unsigned)argc != numInputDimensions)
        {
            flext::error("invalid input length, expected %d, got %d", numInputDimensions, argc);
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = regressifier.predict(query);
        
        if (success == false)
        {
            flext::error("unable to map input");
            return;
        }
        
        GRT::VectorDouble output_data = regressifier.getRegressionData();
        GRT::VectorDouble::size_type numOutputDimensions = output_data.size();
        
        if (numOutputDimensions != regression_data.getNumTargetDimensions())
        {
            flext::error("invalid output dimensions: %d", numOutputDimensions);
            return;
        }
        
        AtomList result;
        
        for (uint32_t index = 0; index < numOutputDimensions; ++index)
        {
            t_atom value_a;
            double value = output_data[index];
            SetFloat(value_a, value);
            result.Append(value_a);
        }
        
        ToOutList(0, result);
    }

    
    // Implement pure virtual methods
    GRT::Regressifier &mulreg::get_Regressifier_instance()
    {
        return regressifier;
    }
    
    const GRT::Regressifier &mulreg::get_Regressifier_instance() const
    {
        return regressifier;
    }

    typedef class mulreg ml0x2emulreg;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), mulreg);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2emulreg);
#endif
    
} //namespace ml

