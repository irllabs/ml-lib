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

#ifndef ml_svm_ml_h
#define ml_svm_ml_h

#include "GRT.h"

#include <flext.h>

#include <vector>
#include <map>


#define ML_VERSION "0.9.1"
#define ML_NAME "ml-lib"
#define ML_POST_SEP "---------------------------------------"


namespace ml
{    

typedef enum mlp_data_type_
{
    LABELLED_CLASSIFICATION,
    LABELLED_REGRESSION,
    LABELLED_TIME_SERIES_CLASSIFICATION,
    UNLABELLED_CLASSIFICATION,
    MLP_NUM_DATA_TYPES
}
mlp_data_type;
    
const mlp_data_type defaultMode = LABELLED_CLASSIFICATION;
const GRT::UINT defaultNumInputDimensions = 2;
const GRT::UINT defaultNumOutputDimensions = 1;
    
class ml_base:
public flext_base
{
    FLEXT_HEADER_S(ml_base, flext_base, setup);
    
public:
    ml_base();
    ml_base(GRT::MLBase *mlBase);
    ml_base(GRT::MLBase *mlBase, mlp_data_type data_type);

    void init();
    
protected:
    static void setup(t_classid c);
    
    static const t_symbol *s_train;
    static const t_symbol *s_cleared;
    static const t_symbol *s_loaded;
    static const t_symbol *s_saved;
    static const t_symbol *s_probs;
    
    virtual void add(int argc, const t_atom *argv);
    virtual void save(const t_symbol *path) const;
    virtual void load(const t_symbol *path);
    virtual void train();
    virtual void clear();
    virtual void map(int argc, const t_atom *argv);
    virtual void usage();
    void record(bool state);
    void any(const t_symbol *s, int argc, const t_atom *argv);
    
    virtual void set_mode(mlp_data_type mode);
    
    // Attribute setters
    void set_scaling(bool scaling);
    void set_probs(bool probs);
    
    // Attribute getters
    void get_scaling(bool &scaling) const;
    void get_probs(bool &probs) const;
    
    // Instance variables
    GRT::MLBase *mlBase; // TODO: maybe switch to reference if all derived classes aggregate an MLBase derived class
    mlp_data_type mode;
    GRT::UnlabelledClassificationData unlabelledClassificationData;
    GRT::LabelledClassificationData labelledClassificationData;
    GRT::LabelledTimeSeriesClassificationData labelledTimeSeriesClassificationData;
    GRT::LabelledRegressionData labelledRegressionData;
    GRT::MatrixDouble timeSeriesData;
    GRT::UINT currentLabel;
    std::string grt_version;
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
    
    // Instance variables
};
  
    
class ml_classification_base : public ml_base
{
    FLEXT_HEADER_S(ml_classification_base, ml_base, setup);
    
public:
    ml_classification_base(GRT::Classifier *classifier, mlp_data_type data_type)
    :
    ml_base(classifier, data_type)
    {
        this->classifier = classifier;
    }
    
    ~ml_classification_base()
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
    void clear();
    void train();
    void map(int argc, const t_atom *argv);
//    void usage();
    
    // Attribute Setters
    void set_null_rejection(bool null_rejection);
    void set_null_rejection_coeff(float null_rejection_coeff);
    
    // Attribute Getters
    void get_null_rejection(bool &null_rejection) const;
    void get_null_rejection_coeff(float &null_rejection_coeff) const;
    
private:
    bool get_num_samples() const;

    // Method wrappers
    
    // Attribute wrappers
    FLEXT_CALLVAR_B(get_null_rejection, set_null_rejection);
    FLEXT_CALLVAR_F(get_null_rejection_coeff, set_null_rejection_coeff);
    
    // Instance variables
    GRT::Classifier *classifier;
    
};

    
class ml_regression_base : public ml_base
{
    FLEXT_HEADER_S(ml_regression_base, ml_base, setup);
    
public:
    ml_regression_base(GRT::Regressifier *regressifier)
    :
    ml_base(regressifier, LABELLED_REGRESSION)
    {
        labelledRegressionData.setInputAndTargetDimensions(defaultNumInputDimensions, defaultNumOutputDimensions);
        this->regressifier = regressifier;
    }
    
    ~ml_regression_base()
    {
        
    }
    
protected:
    static void setup(t_classid c)
    {
        FLEXT_CADDATTR_SET(c, "max_iterations", set_max_iterations);
        FLEXT_CADDATTR_SET(c, "min_change", set_min_change);
        FLEXT_CADDATTR_SET(c, "training_rate", set_training_rate);
        
        FLEXT_CADDATTR_GET(c, "max_iterations", get_max_iterations);
        FLEXT_CADDATTR_GET(c, "min_change", get_min_change);
        FLEXT_CADDATTR_GET(c, "training_rate", get_training_rate);
    }
    
    // Methods
    void clear();
    void train();
    void map(int argc, const t_atom *argv);
    void usage();
    
    // Attribute Setters
    void set_max_iterations(int max_iterations);
    void set_min_change(float min_change);
    void set_training_rate(float training_rate);
    
    
    // Attribute Getters
    void get_max_iterations(int &max_iterations) const;
    void get_min_change(float &min_change) const;
    void get_training_rate(float &training_rate) const;
    
private:
    
    // Method wrappers
    
    // Attribute wrappers
    FLEXT_CALLVAR_I(get_max_iterations, set_max_iterations);
    FLEXT_CALLVAR_F(get_min_change, set_min_change);
    FLEXT_CALLVAR_F(get_training_rate, set_training_rate);
    
    // Instance variables
    GRT::Regressifier *regressifier;
    
};
    
} // namespace ml


#endif
