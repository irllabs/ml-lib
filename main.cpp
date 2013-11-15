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

#include <vector>
#include <string>
#include <sstream>



static const std::string weight_delimiter = ":";

class svm : public flext_base
{
    FLEXT_HEADER_S(svm,flext_base,setup);
    
public:
    svm(int argc,t_atom *argv)
    : model(NULL), x_space(NULL), weight_labels(1000, 0), weight_values(1000, 0)
    {
        post("creating svm object");
        param.svm_type = C_SVC;
        param.kernel_type = RBF;
        param.degree = 3;
        param.gamma = 0;
        param.coef0 = 0;
        param.nu = 0.5;
        param.cache_size = 100;
        param.C = 1;
        param.eps = 1e-3;
        param.p = 0.1;
        param.shrinking = 1;
        param.probability = 0;
        param.nr_weight = 0;
        param.weight_label = &weight_labels[0];
        param.weight = &weight_values[0];
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
        FLEXT_CADDATTR_SET(c, "weights", set_weights);
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
        FLEXT_CADDATTR_GET(c, "weights", get_weights);
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
    void set_weights(const AtomList &weights);
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
    void get_weights(AtomList &weights) const;
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
    FLEXT_CALLVAR_V(get_weights, set_weights);
    FLEXT_CALLVAR_I(get_mode, set_mode);
    
    // Instance variables
    svm_model *model;
    svm_parameter param;
    svm_problem prob;
    svm_node *x_space;
    
    int nr_fold;
    
    std::vector<int> weight_labels;
    std::vector<double> weight_values;
    
};

void svm::set_type(int type)    
{
    switch (type)
    {
        case C_SVC:
        case NU_SVC:
        case ONE_CLASS:
        case EPSILON_SVR:
        case NU_SVR:
            param.svm_type = type;
            break;
            
        default:
            post("Error: invalid SVM type, send a 'bang' to the first inlet for available types");
            break;
    }
}

void svm::set_kernel(int kernel)    
{
    switch (kernel)
    {
        case LINEAR:
        case POLY:
        case RBF:
        case SIGMOID:
        case PRECOMPUTED:
            param.kernel_type = kernel;
            break;
            
        default:
            post("Error: invalid kernel type, send a 'bang' to the first inlet for available types");
            break;
    }
}

void svm::set_degree(int degree)    
{
    param.degree = degree;
}

void svm::set_gamma(float gamma)    
{
    param.gamma = (double)gamma;
}

void svm::set_coef0(float coef0)    
{
    param.coef0 = (double)coef0;
}

void svm::set_cost(float cost)    
{
    param.C = (double)cost;
}

void svm::set_nu(float nu)    
{
    param.nu = (double)nu;
}

void svm::set_epsilon(float epsilon)    
{
    param.eps = (double)epsilon;
}

void svm::set_cachesize(int cachesize)    
{
    param.cache_size = cachesize;
}

void svm::set_shrinking(int shrinking)    
{
    switch (shrinking)
    {
        case 0:
        case 1:
            param.shrinking = shrinking;
            break;
            
        default:
            error("Error: shrinking must either be 0 (off) or 1 (on)");
            break;
    }
}

void svm::set_estimates(int estimates)    
{
    switch (estimates)
    {
        case 0:
        case 1:
            param.probability = estimates;
            break;
            
        default:
            error("Error: probability estimates must either be 0 (off) or 1 (on)");
            break;
    }
}

void svm::set_weights(const AtomList &weights)
{
    param.nr_weight = weights.Count();
    weight_labels.clear();
    weight_values.clear();
    
    for (int count = 0; count < param.nr_weight; ++count)
    {
        std::string weight = GetString(GetSymbol(weights[count]));
        std::string::size_type location = weight.find(weight_delimiter);

        if (location == std::string::npos)
        {
            error("Error: no ':' found, weights must be a list of class:weight pairs");
            return;
        }

        std::string::size_type weight_length = weight.length();
        std::string::size_type value_length = weight_length - location - 1;
        
        std::string value_s = weight.substr(location + 1, value_length);
        std::string weight_s = weight.substr(0, location);

        int label = atoi(weight_s.c_str());
        double value = atof(value_s.c_str());

        weight_labels.push_back(label);
        weight_values.push_back(value);
    }
}

void svm::set_mode(int mode)
{
    if (mode < 2)
    {
        error("Error: n-fold cross validation: n must >= 2");
        return;
    }
    nr_fold = mode;
}

void svm::get_type(int &type) const
{
    type = param.svm_type;
}

void svm::get_kernel(int &kernel) const
{
    kernel = param.kernel_type;
}

void svm::get_degree(int &degree) const
{
    degree = param.degree;
}

void svm::get_gamma(float &gamma) const    
{
    gamma = param.gamma;
}

void svm::get_coef0(float &coef0) const    
{
    coef0 = param.coef0;
}

void svm::get_cost(float &cost) const    
{
    cost = param.C;
}

void svm::get_nu(float &nu) const    
{
    nu = param.nu;
}

void svm::get_epsilon(float &epsilon) const    
{
    epsilon = param.eps;
}

void svm::get_cachesize(int &cachesize) const    
{
    cachesize = param.cache_size;
}

void svm::get_shrinking(int &shrinking) const    
{
    shrinking = param.shrinking;
}

void svm::get_estimates(int &estimates) const    
{
    estimates = param.probability;
}

void svm::get_weights(AtomList &weights) const
{
    uint32_t num_weights = weight_labels.size();
    
    for (uint32_t count = 0; count < num_weights; ++count)
    {
        int weight_label = weight_labels[count];
        double weight_value = weight_values[count];
        
        std::stringstream weight;
        weight << weight_label << ":" << weight_value;
        const char *weight_c = weight.str().c_str();
        const t_symbol *weight_s = MakeSymbol(weight_c);
        t_atom weight_a;
        SetSymbol(weight_a, weight_s);
        
        weights.Append(weight_a);
    }
}

void svm::get_mode(int &mode) const    
{    
    mode = nr_fold;
}


FLEXT_NEW_V("svm", svm)
