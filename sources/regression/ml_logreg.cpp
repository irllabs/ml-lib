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
    static const std::string ml_object_name = "ml.logreg";
    
    class ml_logreg : ml_regression
    {
        FLEXT_HEADER_S(ml_logreg, ml_regression, setup);
        
    public:
        ml_logreg()
        {
            post("Logistic Regression based on the GRT library version " + GRT::GRTBase::getGRTVersion());
            set_scaling(default_scaling);
        }
        
    protected:
        static void setup(t_classid c)
        {
            DefineHelp(c, ml_object_name.c_str());
        }
        
        // Implement pure virtual methods
        GRT::Regressifier &get_Regressifier_instance();
        const GRT::Regressifier &get_Regressifier_instance() const;
        
    private:
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
                
        GRT::LogisticRegression regressifier;
        
    };
    
    // Implement pure virtual methods
    GRT::Regressifier &ml_logreg::get_Regressifier_instance()
    {
        return regressifier;
    }
    
    const GRT::Regressifier &ml_logreg::get_Regressifier_instance() const
    {
        return regressifier;
    }
    
    typedef class ml_logreg ml0x2elogreg;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_logreg);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2elogreg);
#endif
    
} //namespace ml

