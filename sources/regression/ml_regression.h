//
//  ml_regression.h
//  ml
//
//  Created by Jamie Bullock on 25/02/2014.
//
//

#ifndef ml_regression_h__
#define ml_regression_h__

#include "ml_ml.h"

namespace ml
{
    class regression : public ml
    {
        FLEXT_HEADER_S(regression, ml, setup);
        
    public:
        regression();
        
    protected:
        static void setup(t_classid c)
        {
            // Flext attribute wrappers
        }
        
        void train();
        void map(int argc, const t_atom *argv);
        
        // Flext attribute setters
       
        // Flext attribute getters
        
        
        virtual GRT::MLBase &get_MLBase_instance(); // TODO: should be "final" but g++ 4.6.2 doesn't support it
        virtual const GRT::MLBase &get_MLBase_instance() const; // TODO: should be "final" but g++ 4.6.2 doesn't support it

        virtual GRT::Regressifier &get_Regressifier_instance() = 0;
        virtual const GRT::Regressifier &get_Regressifier_instance() const = 0;
        
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;

        
    private:
        // Flext attribute wrappers
    };
}

#endif
