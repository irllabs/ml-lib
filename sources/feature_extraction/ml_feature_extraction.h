//
//  ml_feature_extraction.h
//  ml
//
//  Created by Jamie Bullock on 06/08/2014.
//
//

#ifndef ml_ml_feature_extraction_h
#define ml_ml_feature_extraction_h

#include "ml_ml.h"

namespace ml
{
    class ml_feature_extraction : public ml
    {
        FLEXT_HEADER_S(ml_feature_extraction, ml, setup);
        
    public:
        ml_feature_extraction();
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_GET(c, "num_input_dimensions", get_num_input_dimensions);
            FLEXT_CADDATTR_GET(c, "num_output_dimensions", get_num_output_dimensions);
        }
        
        void map(int argc, const t_atom *argv);
                
        // Flext attribute getters
        void get_num_input_dimensions(int &num_input_dimensions) const;
        void get_num_output_dimensions(int &num_output_dimensions) const;
        
        virtual GRT::MLBase &get_MLBase_instance(); // TODO: should be "final" but g++ 4.6.2 doesn't support it
        virtual const GRT::MLBase &get_MLBase_instance() const; // TODO: should be "final" but g++ 4.6.2 doesn't support it
        
        virtual GRT::FeatureExtraction &get_FeatureExtraction_instance() = 0;
        virtual const GRT::FeatureExtraction &get_FeatureExtraction_instance() const = 0;
        
        // Override pure virtual functions - do nothing
        virtual bool read_specialised_dataset(std::string &path) { return true; };
        virtual bool write_specialised_dataset(std::string &path) const { return true; };
        
    private:
        // Flext attribute wrappers
        FLEXT_CALLGET_I(get_num_input_dimensions);
        FLEXT_CALLGET_I(get_num_output_dimensions);
        
        static const std::string attribute_help;
    };
}




#endif
