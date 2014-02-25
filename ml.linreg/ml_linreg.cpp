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

namespace ml
{
    class ml_linreg : ml_regression
    {
        FLEXT_HEADER_S(ml_linreg, ml_regression, setup);
        
    public:
        ml_linreg()
        {
            post("ml.regressifier: Linear Regression based on the GRT library version %s", get_grt_version().c_str());
            set_scaling(default_scaling);
        }
        
        ~ml_linreg()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            DefineHelp(c,"ml.linreg");
        }
        
        // Implement pure virtual methods
        GRT::Regressifier &get_Regressifier_instance();
        const GRT::Regressifier &get_Regressifier_instance() const;

    private:
        // Instance variables
        GRT::LinearRegression regressifier;
        
    };
    
    // Implement pure virtual methods
    GRT::Regressifier &ml_linreg::get_Regressifier_instance()
    {
        return regressifier;
    }
    
    const GRT::Regressifier &ml_linreg::get_Regressifier_instance() const
    {
        return regressifier;
    }

    
    FLEXT_LIB("ml.linreg", ml_linreg);
    
} //namespace ml

