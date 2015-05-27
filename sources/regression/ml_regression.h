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
            FLEXT_CADDATTR_SET(c, "max_iterations", set_max_iterations);
            FLEXT_CADDATTR_SET(c, "min_change", set_min_change);
            FLEXT_CADDATTR_SET(c, "training_rate", set_training_rate);
            
            FLEXT_CADDATTR_GET(c, "max_iterations", get_max_iterations);
            FLEXT_CADDATTR_GET(c, "min_change", get_min_change);
            FLEXT_CADDATTR_GET(c, "training_rate", get_training_rate);
        }
        
        void train();
        void map(int argc, const t_atom *argv);
        
        // Flext attribute setters
        void set_max_iterations(int max_iterations);
        void set_min_change(float min_change);
        void set_training_rate(float training_rate);
        
        
        // Flext attribute getters
        void get_max_iterations(int &max_iterations) const;
        void get_min_change(float &min_change) const;
        void get_training_rate(float &training_rate) const;
        
        virtual GRT::MLBase &get_MLBase_instance(); // TODO: should be "final" but g++ 4.6.2 doesn't support it
        virtual const GRT::MLBase &get_MLBase_instance() const; // TODO: should be "final" but g++ 4.6.2 doesn't support it

        virtual GRT::Regressifier &get_Regressifier_instance() = 0;
        virtual const GRT::Regressifier &get_Regressifier_instance() const = 0;
        
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;

        
    private:
        // Flext attribute wrappers
        FLEXT_CALLVAR_I(get_max_iterations, set_max_iterations);
        FLEXT_CALLVAR_F(get_min_change, set_min_change);
        FLEXT_CALLVAR_F(get_training_rate, set_training_rate);
        
        static const std::string attribute_help;
    };
}

#endif
