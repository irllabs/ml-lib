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
void print_callback(const char *s);

class Observation
{
public:
    Observation()
    {
        
    }
    ~Observation()
    {
        
    }
    
    double label;
    std::vector<double> features;
};

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
        
        prob.l = 0;
        prob.x = NULL;
        prob.y = NULL;
        
        svm_set_print_string_function(print_callback);
        
        AddOutAnything("general purpose outlet");
    }
    
    ~svm()
    {
        post("destroying svm object");
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
        post("setting up svm class");
        
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
        FLEXT_CADDMETHOD_(c, 0, "normalise", normalise);
        FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
        FLEXT_CADDMETHOD_(c, 0, "train", train);
        FLEXT_CADDMETHOD_(c, 0, "clear", clear);
        FLEXT_CADDMETHOD_(c, 0, "predict", predict);
        FLEXT_CADDMETHOD_(c, 0, "bang", usage);
    }

    // Methods
    void add(int argc, const t_atom *argv);
    void save(const t_symbol *path) const;
    void load(const t_symbol *path);
    void normalise();
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
    FLEXT_CALLBACK_S(save);
    FLEXT_CALLBACK_S(load);
    FLEXT_CALLBACK(normalise);
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
   
    std::vector<Observation> observations;
    
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

// SVM print callback
void print_callback(const char *s)
{
    post("libsvm: %s", s);
}

// Attribute setters
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
            post("invalid SVM type, send a 'bang' to the first inlet for available types");
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
            post("invalid kernel type, send a 'bang' to the first inlet for available types");
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
            error("shrinking must either be 0 (off) or 1 (on)");
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
            error("probability estimates must either be 0 (off) or 1 (on)");
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

void svm::set_mode(int mode)
{
    if (mode < 2)
    {
        error("n-fold cross validation: n must >= 2");
        return;
    }
    nr_fold = mode;
}

// Attribute getters
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

// Methods
void svm::add(int argc, const t_atom *argv)
{
    
    Observation observation;
    
    observation.label = GetFloat(argv[0]);
    
    for (uint32_t index = 1; index < argc; ++index)
    {
        // TODO: currently we're assuming there's always a value for every feature
        float value = GetFloat(argv[index]);
        observation.features.push_back(value);
    }
    
    observations.push_back(observation);
   
}

void svm::save(const t_symbol *path) const
{
    const char *path_s = GetString(path);
    int rv = svm_save_model(path_s, model);
    
    if (rv == -1)
    {
        error("an error occurred saving the model");
    }
}

void svm::load(const t_symbol *path)
{
    const char *path_s = GetString(path);
    model = svm_load_model(path_s);
    
    if (model == NULL)
    {
        error("unable to load model");
    }
}

void svm::normalise()
{
    error("function not yet implemented");
}

void svm::cross_validation()
{
    int i;
	int total_correct = 0;
	double total_error = 0;
	double sumv = 0, sumy = 0, sumvv = 0, sumyy = 0, sumvy = 0;
	double *target = (double *)malloc(prob.l * sizeof(prob.l));
    
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
		post("Cross Validation Mean squared error = %g\n",total_error/prob.l);
		post("Cross Validation Squared correlation coefficient = %g\n",
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
		printf("Cross Validation Accuracy = %g%%\n", 100.0 * total_correct / prob.l);
	}
	free(target);
}

void svm::train()
{
    free_problem_data(&prob);
    svm_free_and_destroy_model(&model);
    
    prob.l = observations.size();

    if (prob.l == 0)
    {
        error("no observations added, use 'add' to add labeled feature vectors");
        return;
    }
    
    size_t num_features = observations[0].features.size();
    size_t max_index = num_features + 1;
    
    prob.x = (svm_node **)malloc(prob.l * sizeof(svm_node *));
    prob.y = (double *)malloc(prob.l * sizeof(double));
    
    // Copy out the data, don't pass C++ structures into svm_train()
    for (uint32_t line = 0; line < prob.l; ++line)
    {
        prob.y[line] = observations[line].label;
        prob.x[line] = (svm_node *)malloc(max_index * sizeof(svm_node));
        
        for (uint32_t feature = 0; feature < num_features; ++feature)
        {
            prob.x[line][feature].index = (int)feature + 1;
            prob.x[line][feature].value = observations[line].features[feature];
        }
        prob.x[line][num_features].index = -1;
        prob.x[line][num_features].value = 0.0;
    }
    
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

void svm::clear()
{
    prob.l = 0;
    
    for (uint32_t item = 0; item < observations.size(); ++item)
    {
        observations[item].features.clear();
    }
    
    observations.clear();
    
    free_problem_data(&prob);
    svm_free_and_destroy_model(&model);
}

void svm::predict(int argc, const t_atom *argv)
{
    if (model == NULL)
    {
        error("no model");
        return;
    }
    
    uint32_t num_features = argc;
    uint32_t max_index = num_features + 1;
    
    svm_node *nodes = (svm_node *)malloc(max_index * sizeof(svm_node));
    
    for (uint32_t index = 0; index < num_features; ++index)
    {
        nodes[index].index = index;
        nodes[index].value = GetFloat(argv[index]);
    }
    
    nodes[num_features].index = -1;
    nodes[num_features].value = 0.0;
    
    double prediction = svm_predict(model, nodes);
    free(nodes);
    ToOutFloat(0, (float)prediction);
}

void svm::usage()
{
    post(
         "Attributes:\n\n"
         "type:\tset type of SVM (default 0)\n"
         "	0 -- C-SVC		(multi-class classification)\n"
         "	1 -- nu-SVC		(multi-class classification)\n"
         "	2 -- one-class SVM\n"
         "	3 -- epsilon-SVR	(regression)\n"
         "	4 -- nu-SVR		(regression)\n"
         "kernel:\tset type of kernel function (default 2)\n"
         "	0 -- linear: u'*v\n"
         "	1 -- polynomial: (gamma*u'*v + coef0)^degree\n"
         "	2 -- radial basis function: exp(-gamma*|u-v|^2)\n"
         "	3 -- sigmoid: tanh(gamma*u'*v + coef0)\n"
         "	4 -- precomputed kernel (kernel values in training_set_file)\n"
         "degree:\tset degree in kernel function (default 3)\n"
         "gamma:\tset gamma in kernel function (default 1/num_features)\n"
         "coef0:\tset coef0 in kernel function (default 0)\n"
         "cost:\tset the parameter C of C-SVC, epsilon-SVR, and nu-SVR (default 1)\n"
         "nu:\tset the parameter nu of nu-SVC, one-class SVM, and nu-SVR (default 0.5)\n"
         "epsilon:\tset the epsilon in loss function of epsilon-SVR (default 0.1)\n"
         "cachesize:\tset cache memory size in MB (default 100)"
         );
    post(
         "epsilon:\tset tolerance of termination criterion (default 0.001)\n"
         "shrinking:\twhether to use the shrinking heuristics, 0 or 1 (default 1)\n"
         "estimates:\twhether to train a SVC or SVR model for probability estimates, 0 or 1 (default 0)\n"
         "weights:\tlist of weight tuples 'class:weight' to set the parameter of class to weight*C, for C-SVC (default 1)\n"
         "n:\tn-fold cross validation mode\n\n"
         "Methods:\n\n"
         "add:\tlist comprising a class id followed by n features; <class> <feature 1> <feature 2> etc\n"
         "save:\tsave a trained model, first argument gives path to save location\n"
         "load:\tload a trained model, first argument gives path to the load location\n"
         "normalise:\tnormalise the training data prior to trianing a model\n"
         "cross_validation:\t\tperform cross-validation\n"
         "train:\ttrain the SVM based on labelled vectors added with 'add'\n"
         "clear:\tclear the stored training data\n"
         "predict:\tpredict the class of the input feature vector provided as a list\n"
         "usage:\tpost this usage statement to the console\n"
         );
}






FLEXT_NEW_V("svm", svm)
