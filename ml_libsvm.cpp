//
//  ml_libsvm.cpp
//  ml_libsvm
//
//  Created by Jamie Bullock on 25/11/2013.
//
//

#include "ml.h"

#include "svm.h"

#include <flext.h>

#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <algorithm>

namespace ml
{

static const std::string weight_delimiter = ":";
void print_callback(const char *s);
typedef std::map<int, double> feature_map;

class normalizer
{
public:
    normalizer()
    : range(0), offset(0)
    {
        
    }
    
    ~normalizer()
    {
        
    }
    
    double normalize(double value)
    {
        return (value + offset) / range;
    }
    
    double range;
    double offset;
};
    
class observation
{
public:
    observation()
    : label(0)
    {
        
    }
    
    ~observation()
    {
        
    }
    
    double label;
    feature_map features;
};

    
class ml_libsvm : ml_base
{
    FLEXT_HEADER_S(ml_libsvm, ml_base, setup);
    typedef std::vector<observation> observation_vector;
public:
    ml_libsvm()
    : model(NULL), nr_fold(2), estimates(false)
    {
        post("ml.libsvm: Support Vector Machines using the libsvm library");
        
        // Reserve vector elements for weights so we can cast directly to the C arrays below
        weight_labels.reserve(100);
        weight_values.reserve(100);
        
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
        param.probability = 1;
        param.nr_weight = 0;
        param.weight_label = &weight_labels[0];
        param.weight = &weight_values[0];
        
        prob.l = 0;
        prob.x = NULL;
        prob.y = NULL;
        
        svm_set_print_string_function(print_callback);
        
        AddOutAnything("general purpose outlet");
    }
    
    ~ml_libsvm()
    {
        if (model != NULL)
        {
            this->clear();
            weight_labels.clear();
            weight_values.clear();
            svm_free_and_destroy_model(&model);
        }
    }
    
protected:
    static void setup(t_classid c)
    {
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
        
        FLEXT_CADDMETHOD_(c, 0, "add", add);
        FLEXT_CADDMETHOD_(c, 0, "save", save);
        FLEXT_CADDMETHOD_(c, 0, "load", load);
        FLEXT_CADDMETHOD_(c, 0, "normalize", normalize);
        FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
        FLEXT_CADDMETHOD_(c, 0, "train", train);
        FLEXT_CADDMETHOD_(c, 0, "clear", clear);
        FLEXT_CADDMETHOD_(c, 0, "predict", predict);
        FLEXT_CADDMETHOD_(c, 0, "help", usage);
    }
    
    // Methods
    void add(int argc, const t_atom *argv);
    void save(const t_symbol *path) const;
    void load(const t_symbol *path);
    void normalize();
    void cross_validation();
    void train();
    void clear();
    void predict(int argc, const t_atom *argv);
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
    void set_estimates(bool estimates);
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
    void get_estimates(bool &estimates) const;
    void get_weights(AtomList &weights) const;
    void get_mode(int &mode) const;
    
private:
    
    // Method wrappers
    FLEXT_CALLBACK_V(add);
    FLEXT_CALLBACK_S(save);
    FLEXT_CALLBACK_S(load);
    FLEXT_CALLBACK(normalize);
    FLEXT_CALLBACK(cross_validation);
    FLEXT_CALLBACK(train);
    FLEXT_CALLBACK(clear);
    FLEXT_CALLBACK_V(predict);
    FLEXT_CALLBACK(usage);
    
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
    FLEXT_CALLVAR_B(get_estimates, set_estimates);
    FLEXT_CALLVAR_V(get_weights, set_weights);
    FLEXT_CALLVAR_I(get_mode, set_mode);
    
    // Instance variables
    svm_model *model;
    svm_parameter param;
    svm_problem prob;
    
    int nr_fold;
    bool estimates;
    
    std::map<uint32_t, normalizer> normalizers;
    std::vector<int> weight_labels;
    std::vector<double> weight_values;
    std::vector<observation> observations;
};

// Utility functions
void free_problem_data(svm_problem *prob)
{
    if (prob->x != NULL)
    {
        for (uint32_t line = 0; line < prob->l; ++line)
        {
            free(prob->x[line]);
        }
    }
    free(prob->x);
    free(prob->y);
    
    prob->x = NULL;
    prob->y = NULL;
    prob->l = 0;
}

void copy_observations_to_problem(svm_problem &prob, std::vector<observation> &observations)
{
    prob.l = observations.size();
    prob.x = (svm_node **)malloc(prob.l * sizeof(svm_node *));
    prob.y = (double *)malloc(prob.l * sizeof(double));
    feature_map::size_type num_nodes = 0;
    
    for (uint32_t line = 0; line < prob.l; ++line)
    {
        feature_map::iterator feature_iterator;
        feature_map features = observations[line].features;
        num_nodes = features.size() + 1; // add one for the "-1" termination node
        
        prob.y[line] = observations[line].label;
        prob.x[line] = (svm_node *)malloc(num_nodes * sizeof(svm_node));
        svm_node *node = prob.x[line];
        
        for (feature_iterator = features.begin(); feature_iterator != features.end(); ++feature_iterator, ++node)
        {
            node->index = feature_iterator->first;
            node->value = feature_iterator->second;
        }
        node->index = -1;
    }
}

feature_map::size_type get_observations_max_index(std::vector<observation> &observations)
{
    feature_map::size_type max_index = 0;
    
    for (uint32_t n = 0; n < observations.size(); ++n)
    {
        feature_map features = observations[n].features;
        feature_map::size_type last_index = features.rbegin()->first;
        max_index = last_index > max_index ? last_index : max_index;
    }
    
    return max_index;
}

// SVM print callback
void print_callback(const char *s)
{
#ifdef ML_LIBSVM_DEBUG
    post("libsvm: %s", s);
#endif
}

// Attribute setters
void ml_libsvm::set_type(int type)
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
            post("invalid SVM type, send a 'help' message to the first inlet for available types");
            break;
    }
}

void ml_libsvm::set_kernel(int kernel)
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
            post("invalid kernel type, send a 'help' message to the first inlet for available types");
            break;
    }
}

void ml_libsvm::set_degree(int degree)
{
    param.degree = degree;
}

void ml_libsvm::set_gamma(float gamma)
{
    param.gamma = (double)gamma;
}

void ml_libsvm::set_coef0(float coef0)
{
    param.coef0 = (double)coef0;
}

void ml_libsvm::set_cost(float cost)
{
    param.C = (double)cost;
}

void ml_libsvm::set_nu(float nu)
{
    param.nu = (double)nu;
}

void ml_libsvm::set_epsilon(float epsilon)
{
    param.eps = (double)epsilon;
}

void ml_libsvm::set_cachesize(int cachesize)
{
    param.cache_size = cachesize;
}

void ml_libsvm::set_shrinking(int shrinking)
{
    switch (shrinking)
    {
        case 0:
        case 1:
            param.shrinking = shrinking;
            break;
            
        default:
            error("shrinking must either be 0 (off) or 1 (on)");
            break;
    }
}

void ml_libsvm::set_estimates(bool estimates)
{
    this->estimates = estimates;
}

void ml_libsvm::set_weights(const AtomList &weights)
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
            error("no ':' found, weights must be a list of class:weight pairs");
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

void ml_libsvm::set_mode(int mode)
{
    if (mode < 2)
    {
        error("n-fold cross validation: n must >= 2");
        return;
    }
    nr_fold = mode;
}

// Attribute getters
void ml_libsvm::get_type(int &type) const
{
    type = param.svm_type;
}

void ml_libsvm::get_kernel(int &kernel) const
{
    kernel = param.kernel_type;
}

void ml_libsvm::get_degree(int &degree) const
{
    degree = param.degree;
}

void ml_libsvm::get_gamma(float &gamma) const
{
    gamma = param.gamma;
}

void ml_libsvm::get_coef0(float &coef0) const
{
    coef0 = param.coef0;
}

void ml_libsvm::get_cost(float &cost) const
{
    cost = param.C;
}

void ml_libsvm::get_nu(float &nu) const
{
    nu = param.nu;
}

void ml_libsvm::get_epsilon(float &epsilon) const
{
    epsilon = param.eps;
}

void ml_libsvm::get_cachesize(int &cachesize) const
{
    cachesize = param.cache_size;
}

void ml_libsvm::get_shrinking(int &shrinking) const
{
    shrinking = param.shrinking;
}

void ml_libsvm::get_estimates(bool &estimates) const
{
    estimates = this->estimates;
}

void ml_libsvm::get_weights(AtomList &weights) const
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

void ml_libsvm::get_mode(int &mode) const
{
    mode = nr_fold;
}

// Methods
void ml_libsvm::add(int argc, const t_atom *argv)
{
    
    observation observation;
    
    observation.label = GetAFloat(argv[0]);
    
    for (uint32_t index = 1; index < argc; ++index)
    {
        float value = GetAFloat(argv[index]);
        observation.features[index] = value;
    }
    
    observations.push_back(observation);
    
}

void ml_libsvm::save(const t_symbol *path) const
{
    const char *path_s = GetString(path);
    int rv = svm_save_model(path_s, model);
    
    if (rv == -1)
    {
        error("an error occurred saving the model");
    }
}

void ml_libsvm::load(const t_symbol *path)
{
    const char *path_s = GetString(path);
    model = svm_load_model(path_s);
    
    if (model == NULL)
    {
        error("unable to load model");
    }
}

void ml_libsvm::normalize()
{
    AtomList outList;
    t_atom normalized_a;
    t_atom flag_a;
    
    SetString(normalized_a, "normalized");
    outList.Append(normalized_a);
    
    if (observations.size() == 0)
    {
        error("no observations added, use 'add' to add labeled feature vectors");
        SetInt(flag_a, 0);
        outList.Append(flag_a);
        ToOutList(1, outList);
        return;
    }
    typedef std::map<uint32_t, std::vector<double> > vector_map;
    
    observation_vector::iterator observation_iterator;
    vector_map features_by_index;
    vector_map::iterator index_iterator;
    
    for (observation_iterator = observations.begin(); observation_iterator != observations.end(); ++observation_iterator)
    {
        feature_map features = observation_iterator->features;
        feature_map::iterator feature_iterator;
        
        for (feature_iterator = features.begin(); feature_iterator != features.end(); ++feature_iterator)
        {
            uint32_t index = feature_iterator->first;
            double value = feature_iterator->second;
            
            features_by_index[index].push_back(value);
        }
    }
    
    for (index_iterator = features_by_index.begin(); index_iterator != features_by_index.end() ; ++index_iterator)
    {
        uint32_t index = index_iterator->first;
        std::vector<double> feature_list = index_iterator->second;
        std::sort(feature_list.begin(), feature_list.end());
        normalizer normalizer;
        
        normalizer.range = feature_list.back() - feature_list.front();
        normalizer.offset = 0 - feature_list.front();
        
        normalizers[index] = normalizer;
        
        for (uint32_t count = 0; count < observations.size(); ++count)
        {
            double feature = observations[count].features[index];
            double normalized = normalizer.normalize(feature);
            observations[count].features[index] = normalized;
        }
    }
    
    SetInt(flag_a, 1);
    outList.Append(flag_a);
    ToOutList(1, outList);
}

void ml_libsvm::cross_validation()
{
    int i;
    int total_correct = 0;
    double total_error = 0;
    double sumv = 0, sumy = 0, sumvv = 0, sumyy = 0, sumvy = 0;
    double *target = NULL;
    
    copy_observations_to_problem(prob, observations);
    const char *error_message = svm_check_parameter(&prob, &param);
    
    if (error_message != NULL)
    {
        error("%s", error_message);
    }
    
    target = (double *)malloc(prob.l * sizeof(prob.l));
    svm_cross_validation(&prob, &param, nr_fold, target);
    
    if(param.svm_type == EPSILON_SVR ||
       param.svm_type == NU_SVR)
    {
        for(i=0;i<prob.l;i++)
        {
            double y = prob.y[i];
            double v = target[i];
            total_error += (v-y)*(v-y);
            sumv += v;
            sumy += y;
            sumvv += v*v;
            sumyy += y*y;
            sumvy += v*y;
        }
        post("cross validation mean squared error = %g\n",total_error/prob.l);
        post("cross validation squared correlation coefficient = %g\n",
             ((prob.l * sumvy - sumv * sumy) * (prob.l * sumvy - sumv * sumy))/
             ((prob.l * sumvv - sumv * sumv) * (prob.l * sumyy - sumy * sumy))
             );
    }
    else
    {
        for(i = 0; i < prob.l; i++)
        {
            if(target[i] == prob.y[i])
            {
                ++total_correct;
            }
        }
        post("cross validation accuracy = %g%%\n", 100.0 * total_correct / prob.l);
    }
    free(target);
    free_problem_data(&prob);
    
}

void ml_libsvm::train()
{
    free_problem_data(&prob);
    svm_free_and_destroy_model(&model);
    
    prob.l = observations.size();
    
    if (prob.l == 0)
    {
        error("no observations added, use 'add' to add labeled feature vectors");
        return;
    }
    
    copy_observations_to_problem(prob, observations);
    feature_map::size_type max_index = get_observations_max_index(observations);
    
    if(param.gamma == 0 && max_index > 0)
    {
        param.gamma = 1.0 / (float)max_index;
    }
    
    if(param.kernel_type == PRECOMPUTED)
    {
        for(uint32_t i = 0; i < prob.l; ++i)
        {
            if (prob.x[i][0].index != 0)
            {
                error("wrong input format: first column must be 0:sample_serial_number\n");
                return;
            }
            if ((int)prob.x[i][0].value <= 0 || (int)prob.x[i][0].value > max_index)
            {
                error("wrong input format: sample_serial_number out of range\n");
                return;
            }
        }
    }
    
    const char *error_message = svm_check_parameter(&prob, &param);
    
    if (error_message != NULL)
    {
        error("%s", error_message);
    }
    
    model = svm_train(&prob, &param);
    
    t_atom a_train;
    t_atom a_num_sv;
    t_atom a_num_classes;
    
    AtomList result;
    
    SetSymbol(a_train, MakeSymbol("train"));
    SetInt(a_num_sv, -1);
    SetInt(a_num_classes, -1);
    
    result.Append(a_train);
    
    if (model == NULL)
    {
        error("training model failed");
    }
    else
    {
        SetInt(a_num_sv, svm_get_nr_sv(model));
        SetInt(a_num_classes, svm_get_nr_class(model));
    }
    
    result.Append(a_num_classes);
    result.Append(a_num_sv);
    
    ToOutList(1, result);
    
    // NOTE: don't free problem here because "svm_model contains pointers to svm_problem"
}

void ml_libsvm::clear()
{
    prob.l = 0;
    
    for (uint32_t item = 0; item < observations.size(); ++item)
    {
        observations[item].features.clear();
    }
    
    observations.clear();
    normalizers.clear();
    
    free_problem_data(&prob);
    svm_free_and_destroy_model(&model);
}

void ml_libsvm::predict(int argc, const t_atom *argv)
{
    if (model == NULL)
    {
        error("no model");
        return;
    }
    
    uint32_t num_features = argc;
    uint32_t max_index = num_features + 1;
    int svm_type = svm_get_svm_type(model);
    int nr_class = svm_get_nr_class(model);
    double *prob_estimates=NULL;
    std::vector<int> labels;
    std::vector<double> probabilities;
    AtomList estimates;
    
    double prediction = 0.0;
    
    svm_node *nodes = (svm_node *)malloc(max_index * sizeof(svm_node));
    
    for (uint32_t index = 0; index < num_features; ++index)
    {
        nodes[index].index = index + 1;
        double value = GetAFloat(argv[index]);
        
        if (!normalizers.empty())
        {
            auto normalization_iterator = normalizers.find(nodes[index].index);
            
            if (normalization_iterator != normalizers.end())
            {
                value = normalization_iterator->second.normalize(value);
            }
            else
            {
                error("invalid key %d, unable to normalize feature", nodes[index].index);
            }
        }
        nodes[index].value = value;
    }
    
    nodes[num_features].index = -1;
    nodes[num_features].value = 0.0;
    
    if(this->estimates)
    {
        if(svm_check_probability_model(model) == 0)
        {
            error("probability attribute set to 1, but model doesn't support probability");
        }
        else
        {
            t_atom estimates_a;
            SetString(estimates_a, "estimates");
            estimates.Append(estimates_a);
            
            if (svm_type == NU_SVR || svm_type == EPSILON_SVR)
            {
                post("probability model for test data: target value = predicted value + z,\nz: Laplace distribution e^(-|z|/sigma)/(2sigma),sigma=%g\n", svm_get_svr_probability(model));
            }
            else
            {
                int *labels_ = (int *)malloc(nr_class * sizeof(int));
                svm_get_labels(model, labels_);
                
                for(uint32_t j = 0; j < nr_class; ++j)
                {
                    labels.push_back(labels_[j]);
                }
                free(labels_);
            }
            
            if ((svm_type == C_SVC || svm_type == NU_SVC))
            {
                prob_estimates = (double *)malloc(nr_class * sizeof(double));
                prediction = svm_predict_probability(model, nodes, prob_estimates);
                
                for(uint32_t j = 0; j < nr_class; ++j)
                {
                    probabilities.push_back(prob_estimates[j]);
                }
            }
            
            for (uint32_t j = 0; j < nr_class; ++j)
            {
                std::stringstream estimate;
                estimate << labels[j] << ":" << probabilities[j];
                const char *estimate_c = estimate.str().c_str();
                const t_symbol *estimate_s = MakeSymbol(estimate_c);
                t_atom estimate_a;
                SetSymbol(estimate_a, estimate_s);
                estimates.Append(estimate_a);
            }
            
            ToOutList(1, estimates);
        }
    }
    else
    {
        prediction = svm_predict(model, nodes);
    }
    
    free(nodes);
    ToOutFloat(0, (float)prediction);
}

void ml_libsvm::usage()
{
    post("%s", ML_POST_SEP);
    post("Attributes:");
    post("%s", ML_POST_SEP);
    post("type:\tset type of SVM (default 0)");
    post("	0 -- C-SVC		(multi-class classification)");
    post("	1 -- nu-SVC		(multi-class classification)");
    post("	2 -- one-class SVM");
    post("	3 -- epsilon-SVR	(regression)");
    post("	4 -- nu-SVR		(regression)");
    post("kernel:\tset type of kernel function (default 2)");
    post("	0 -- linear: u'*v");
    post("	1 -- polynomial: (gamma*u'*v + coef0)^degree");
    post("	2 -- radial basis function: exp(-gamma*|u-v|^2)");
    post("	3 -- sigmoid: tanh(gamma*u'*v + coef0)");
    post("	4 -- precomputed kernel (kernel values in training_set_file)");
    post("degree:\tset degree in kernel function (default 3)");
    post("gamma:\tset gamma in kernel function (default 1/num_features)");
    post("coef0:\tset coef0 in kernel function (default 0)");
    post("cost:\tset the parameter C of C-SVC, epsilon-SVR, and nu-SVR (default 1)");
    post("nu:\tset the parameter nu of nu-SVC, one-class SVM, and nu-SVR (default 0.5)");
    post("epsilon:\tset the epsilon in loss function of epsilon-SVR (default 0.1)");
    post("cachesize:\tset cache memory size in MB (default 100)");
    post("epsilon:\tset tolerance of termination criterion (default 0.001)");
    post("shrinking:\twhether to use the shrinking heuristics, 0 or 1 (default 1)");
    post("estimates:\twhether to train a SVC or SVR model for probability estimates, 0 or 1 (default 0)");
    post("weights:\tlist of weight tuples 'class:weight' to set the parameter of class to weight*C, for C-SVC (default 1)");
    post("n:\tn-fold cross validation mode");
    post("%s", ML_POST_SEP);
    post("Methods:");
    post("%s", ML_POST_SEP);
    post("add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc");
    post("save:\tsave a trained model, first argument gives path to save location");
    post("load:\tload a trained model, first argument gives path to the load location");
    post("normalize:\tnormalize the training data prior to trianing a model");
    post("cross_validation:\t\tperform cross-validation");
    post("train:\ttrain the SVM based on labelled vectors added with 'add'");
    post("clear:\tclear the stored training data");
    post("predict:\tpredict the class of the input feature vector provided as a list");
    post("help:\tpost this usage statement to the console");
    post("%s", ML_POST_SEP);
    
}

FLEXT_LIB("ml.libsvm", ml_libsvm);
    
} //namespace ml


