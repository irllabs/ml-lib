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
    static const std::string object_name = ML_NAME_PREFIX "logreg";
    
    class logreg : regression
    {
        FLEXT_HEADER_S(logreg, regression, setup);
        
    public:
        logreg()
        {
            post("Logistic Regression based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(defaults::scaling);
        }
        
    protected:
        static void setup(t_classid c)
        {
            DefineHelp(c, object_name.c_str());
        }
        
        // Implement pure virtual methods
        GRT::Regressifier &get_Regressifier_instance();
        const GRT::Regressifier &get_Regressifier_instance() const;
        
    private:
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
                
        GRT::LogisticRegression regressifier;
        
    };
    
    // Implement pure virtual methods
    GRT::Regressifier &logreg::get_Regressifier_instance()
    {
        return regressifier;
    }
    
    const GRT::Regressifier &logreg::get_Regressifier_instance() const
    {
        return regressifier;
    }
    
    typedef class logreg ml0x2elogreg;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), logreg);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2elogreg);
#endif
    
} //namespace ml

