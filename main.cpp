//
//  main.cpp
//  svm
//
//  Created by Jamie Bullock on 13/11/2013.
//
//

#define FLEXT_ATTRIBUTES 1

#include "svm.h"

#include <flext.h>

class svm : public flext_base
{
    FLEXT_HEADER_S(svm,flext_base,setup);
    
public:
    svm(int argc,t_atom *argv)
    : model(NULL), x_space(NULL)
    {
        post("creating svm object");
    }
    
    ~svm()
    {
        post("destroying svm object");
        if (model != NULL)
        {
            svm_free_and_destroy_model(&model);
        }
    }

protected:
    static void setup(t_classid c)
    {
        post("setting up svm class");

        FLEXT_CADDBANG(c, 0, bang);
        
        FLEXT_CADDATTR_SET(c, "type", set_type);
        FLEXT_CADDATTR_SET(c, "kernel", set_kernel);
        FLEXT_CADDATTR_SET(c, "degree", set_degree);
        FLEXT_CADDATTR_SET(c, "gamma", set_gamma);
        FLEXT_CADDATTR_SET(c, "coef0", set_coef0);
        FLEXT_CADDATTR_SET(c, "cost", set_cost);
        FLEXT_CADDATTR_SET(c, "nu", set_nu);
        FLEXT_CADDATTR_SET(c, "epsilon", set_epsilon);
        FLEXT_CADDATTR_SET(c, "cachesize", set_cachesize);
        FLEXT_CADDATTR_SET(c, "shrinking", set_shrinking);
        FLEXT_CADDATTR_SET(c, "estimates", set_estimates);
        FLEXT_CADDATTR_SET(c, "weight", set_weight);
        FLEXT_CADDATTR_SET(c, "mode", set_mode);
        
        FLEXT_CADDATTR_GET(c, "type", get_type);
        FLEXT_CADDATTR_GET(c, "kernel", get_kernel);
        FLEXT_CADDATTR_GET(c, "degree", get_degree);
        FLEXT_CADDATTR_GET(c, "gamma", get_gamma);
        FLEXT_CADDATTR_GET(c, "coef0", get_coef0);
        FLEXT_CADDATTR_GET(c, "cost", get_cost);
        FLEXT_CADDATTR_GET(c, "nu", get_nu);
        FLEXT_CADDATTR_GET(c, "epsilon", get_epsilon);
        FLEXT_CADDATTR_GET(c, "cachesize", get_cachesize);
        FLEXT_CADDATTR_GET(c, "shrinking", get_shrinking);
        FLEXT_CADDATTR_GET(c, "estimates", get_estimates);
        FLEXT_CADDATTR_GET(c, "weight", get_weight);
        FLEXT_CADDATTR_GET(c, "mode", get_mode);
        
//        FLEXT_CADDMETHOD(c, 0, add);
    }

    void bang()
    {
        post("svm: a support vector machine external for Max and Pd");
    }
    
    // Methods
    void add(int argc, const t_atom *argv);
    void save(const t_symbol *&path) const;
    void load(const t_symbol *&path);
    void normalisation(int on);
    void cross_validation();
    void train();
    void clear();
    void predict();
    void usage();

    // Attribute Setters
    void set_type(int type); // svm type
    void set_kernel(int kernel);
    void set_degree(int degree);
    void set_gamma(float gamma);
    void set_coef0(float coef0);
    void set_cost(float cost);
    void set_nu(float nu);
    void set_epsilon(float epsilon);
    void set_cachesize(int cachesize);
    void set_shrinking(int shrinking);
    void set_estimates(int estimates);
    void set_weight(int weight);
    void set_mode(int mode); // cross validation mode
    
    // Attribute Getters
    void get_type(int &type) const;
    void get_kernel(int &type) const;
    void get_degree(int &type) const;
    void get_gamma(float &gamma) const;
    void get_coef0(float &coef0) const;
    void get_cost(float &cost) const;
    void get_nu(float &nu) const;
    void get_epsilon(float &epsilon) const;
    void get_cachesize(int &cachesize) const;
    void get_shrinking(int &shrinking) const;
    void get_estimates(int &estimates) const;
    void get_weight(int &weight) const;
    void get_mode(int &mode) const;
    
private:
   
    // Method wrappers
    FLEXT_CALLBACK_V(add);
//    FLEXT_CALLBACK_S(save);
//    FLEXT_CALLBACK_S(load);

    FLEXT_CALLBACK(bang);
    
    // Attribute wrappers
    FLEXT_CALLVAR_I(get_type, set_type);
    FLEXT_CALLVAR_I(get_kernel, set_kernel);
    FLEXT_CALLVAR_I(get_degree, set_degree);
    FLEXT_CALLVAR_F(get_gamma, set_gamma);
    FLEXT_CALLVAR_F(get_coef0, set_coef0);
    FLEXT_CALLVAR_F(get_cost, set_cost);
    FLEXT_CALLVAR_F(get_nu, set_nu);
    FLEXT_CALLVAR_F(get_epsilon, set_epsilon);
    FLEXT_CALLVAR_I(get_cachesize, set_cachesize);
    FLEXT_CALLVAR_I(get_shrinking, set_shrinking);
    FLEXT_CALLVAR_I(get_estimates, set_estimates);
    FLEXT_CALLVAR_I(get_weight, set_weight);
    FLEXT_CALLVAR_I(get_mode, set_mode);
    
    // Instance variables
    svm_model *model;
    svm_parameter param;
    svm_problem prob;
    svm_node *x_space;
    int nr_fold;
};

void svm::set_type(int type)
{
}

void svm::get_type(int &type) const
{
}

FLEXT_NEW_V("svm", svm)
