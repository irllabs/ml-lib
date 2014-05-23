//
//  ml_classification.h
//  ml
//
//  Created by Jamie Bullock on 25/02/2014.
//
//

#ifndef ml_ml_classification_h
#define ml_ml_classification_h

#include "ml_ml.h"

namespace ml
{
    class ml_classification : public ml
    {
        FLEXT_HEADER_S(ml_classification, ml, setup);
        
    public:
        ml_classification()
        {
            set_data_type(LABELLED_CLASSIFICATION);
        }
        
        ~ml_classification()
        {
            
        }
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_SET(c, "null_rejection", set_null_rejection);
            FLEXT_CADDATTR_SET(c, "null_rejection_coeff", set_null_rejection_coeff);
            
            FLEXT_CADDATTR_GET(c, "null_rejection", get_null_rejection);
            FLEXT_CADDATTR_GET(c, "null_rejection_coeff", get_null_rejection_coeff);
        }
        
        // Methods
        void train();
        void map(int argc, const t_atom *argv);
        void usage();
        
        // Attribute Setters
        void set_null_rejection(bool null_rejection);
        void set_null_rejection_coeff(float null_rejection_coeff);
        
        // Attribute Getters
        void get_null_rejection(bool &null_rejection) const;
        void get_null_rejection_coeff(float &null_rejection_coeff) const;
        
        virtual GRT::MLBase &get_MLBase_instance(); // TODO: should be "final" but g++ 4.6.2 doesn't support it
        virtual const GRT::MLBase &get_MLBase_instance() const; // TODO: should be "final" but g++ 4.6.2 doesn't support it
        
        virtual GRT::Classifier &get_Classifier_instance() = 0;
        virtual const GRT::Classifier &get_Classifier_instance() const = 0;
        
        bool read_specialised_dataset(std::string &path);
        bool write_specialised_dataset(std::string &path) const;
        
    private:
        bool get_num_samples() const;
        
        // Method wrappers
        
        // Attribute wrappers
        FLEXT_CALLVAR_B(get_null_rejection, set_null_rejection);
        FLEXT_CALLVAR_F(get_null_rejection_coeff, set_null_rejection_coeff);
        
    };
}

#endif
