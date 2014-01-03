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

#include "ml.h"

#include <flext.h>

#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <algorithm>

#include <stdint.h>

namespace ml
{
    // Utility functions
    GRT::SVM::SVMTypes svm_type_from_type_string(std::string type_string)
    {
        if (type_string == "C_SVC")
        {
            return GRT::SVM::C_SVC;
        }
        
        if (type_string == "NU_SVC")
        {
            return GRT::SVM::NU_SVC;
        }
        
        if (type_string == "ONE_CLASS")
        {
            return GRT::SVM::ONE_CLASS;
        }
        
        if (type_string == "EPSILON_SVR")
        {
            return GRT::SVM::EPSILON_SVR;
        }
        
        if (type_string == "NU_SVR")
        {
            return GRT::SVM::NU_SVR;
        }
        
        error("invalid type string: %s, returning C_SVC", type_string.c_str());
        return GRT::SVM::C_SVC;
    }
    
    GRT::SVM::SVMKernelTypes svm_kernel_type_from_kernel_string(std::string kernel_string)
    {
        if (kernel_string == "LINEAR_KERNEL")
        {
            return GRT::SVM::LINEAR_KERNEL;
        }
        
        if (kernel_string == "POLY_KERNEL")
        {
            return GRT::SVM::POLY_KERNEL;
        }
        
        if (kernel_string == "RBF_KERNEL")
        {
            return GRT::SVM::RBF_KERNEL;
        }
        
        if (kernel_string == "SIGMOID_KERNEL")
        {
            return GRT::SVM::SIGMOID_KERNEL;
        }
        
        if (kernel_string == "PRECOMPUTED_KERNEL")
        {
            return GRT::SVM::PRECOMPUTED_KERNEL;
        }
        
        error("invalid type string: %s, returning LINEAR_KERNEL", kernel_string.c_str());
        return GRT::SVM::LINEAR_KERNEL;
    }
    
    class ml_svm : ml_base
    {
        FLEXT_HEADER_S(ml_svm, ml_base, setup);
        
    public:
        ml_svm()
        :
        ml_base(&svm, LABELLED_CLASSIFICATION),
        estimates(false)
        {
            post("ml.svm: Support Vector Machines based on the GRT library version %s", grt_version.c_str());
        }
        
        ~ml_svm()
        {
            
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
            FLEXT_CADDATTR_SET(c, "mode", set_kfold_value);
            FLEXT_CADDATTR_SET(c, "enable_cross_validation", set_enable_cross_validation);
            
            
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
            FLEXT_CADDATTR_GET(c, "mode", get_kfold_value);
            
            FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
        }
        
        // Methods
        void cross_validation();
        void train();
        void clear();
        void classify(int argc, const t_atom *argv);
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
        void set_kfold_value(int mode);
        void set_enable_cross_validation(bool enable_cross_validation);
        
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
        void get_kfold_value(int &mode) const;
        
    private:
        // Method wrappers
        FLEXT_CALLBACK(cross_validation);
        
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
        FLEXT_CALLVAR_I(get_kfold_value, set_kfold_value);
        FLEXT_CALLSET_B(set_enable_cross_validation);
        
        // Instance variables
        bool estimates;
        GRT::SVM svm;
    };
    
    // Utility functions
    
    
    // Attribute setters
    void ml_svm::set_type(int type)
    {
        switch (type)
        {
            case GRT::C_SVC:
            case GRT::NU_SVC:
            case GRT::ONE_CLASS:
            case GRT::EPSILON_SVR:
            case GRT::NU_SVR:
                svm.setSVMType(type);
                break;
                
            default:
                post("invalid SVM type, send a 'help' message to the first inlet for available types");
                break;
        }
    }
    
    void ml_svm::set_kernel(int kernel)
    {
        switch (kernel)
        {
            case GRT::LINEAR:
            case GRT::POLY:
            case GRT::RBF:
            case GRT::SIGMOID:
            case GRT::PRECOMPUTED:
                svm.setKernelType(kernel);
                break;
                
            default:
                post("invalid kernel type, send a 'help' message to the first inlet for available types");
                break;
        }
    }
    
    void ml_svm::set_degree(int degree)
    {
        svm.setDegree(degree);
    }
    
    void ml_svm::set_gamma(float gamma)
    {
        svm.setGamma(gamma);
    }
    
    void ml_svm::set_coef0(float coef0)
    {
        svm.setCoef0(coef0);
    }
    
    void ml_svm::set_cost(float cost)
    {
        svm.setC(cost);
    }
    
    void ml_svm::set_nu(float nu)
    {
        svm.setNu(nu);
    }
    
    void ml_svm::set_epsilon(float epsilon)
    {
        error("function not implemented");
    }
    
    void ml_svm::set_cachesize(int cachesize)
    {
        error("function not implemented");
    }
    
    void ml_svm::set_shrinking(int shrinking)
    {
        error("function not implemented");
    }
    
    void ml_svm::set_estimates(bool estimates)
    {
        this->estimates = estimates;
    }
    
    void ml_svm::set_weights(const AtomList &weights)
    {
        error("function not implemented");
    }
    
    void ml_svm::set_kfold_value(int mode)
    {
        svm.setKFoldCrossValidationValue(mode);
    }
    
    void ml_svm::set_enable_cross_validation(bool enable_cross_validation)
    {
        svm.enableCrossValidationTraining(enable_cross_validation);
    }
    
    // Attribute getters
    void ml_svm::get_type(int &type) const
    {
        std::string type_s = svm.getSVMType();
        type = svm_type_from_type_string(type_s);
    }
    
    void ml_svm::get_kernel(int &kernel) const
    {
        std::string kernel_s = svm.getKernelType();
        kernel = svm_kernel_type_from_kernel_string(kernel_s);
        
    }
    
    void ml_svm::get_degree(int &degree) const
    {
        degree = svm.getDegree();
    }
    
    void ml_svm::get_gamma(float &gamma) const
    {
        gamma = svm.getGamma();
    }
    
    void ml_svm::get_coef0(float &coef0) const
    {
        coef0 = svm.getCoef0();
    }
    
    void ml_svm::get_cost(float &cost) const
    {
        cost = svm.getC();
    }
    
    void ml_svm::get_nu(float &nu) const
    {
        nu = svm.getNu();
    }
    
    void ml_svm::get_epsilon(float &epsilon) const
    {
        error("function not implemented");
    }
    
    void ml_svm::get_cachesize(int &cachesize) const
    {
        error("function not implemented");
    }
    
    void ml_svm::get_shrinking(int &shrinking) const
    {
        error("function not implemented");
    }
    
    void ml_svm::get_estimates(bool &estimates) const
    {
        estimates = this->estimates;
    }
    
    void ml_svm::get_weights(AtomList &weights) const
    {
        error("function not implemented");
    }
    
    void ml_svm::get_kfold_value(int &mode) const
    {
        error("function not implemented");
    }
    
    // Methods
    void ml_svm::cross_validation()
    {
        double result = svm.getCrossValidationResult();
        ToOutDouble(0, result);
    }
    
    void ml_svm::train()
    {
        GRT::UINT numSamples = labelledClassificationData.getNumSamples();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        bool success = false;
        success = svm.train(labelledClassificationData);
        
        if (!success)
        {
            error("training failed");
            return;
        }
        
        t_atom a_num_classes;
        
        SetInt(a_num_classes, svm.getNumClasses());
        ToOutAnything(1, s_train, 1, &a_num_classes);
    }
    
    void ml_svm::clear()
    {
        svm.clear();
        ml_base::clear();
    }
    
    void ml_svm::classify(int argc, const t_atom *argv)
    {
        
        GRT::UINT numSamples = labelledClassificationData.getNumSamples();
        GRT::UINT numInputs = labelledClassificationData.getNumDimensions();
        
        if (numSamples == 0)
        {
            error("no observations added, use 'add' to add training data");
            return;
        }
        
        if (svm.getTrained() == false)
        {
            error("model has not been trained, use 'train' to train the model");
            return;
        }
        
        GRT::VectorDouble query(numInputs);
        
        if (argc < 0 || (unsigned)argc != numInputs)
        {
            error("invalid input length, expected %d, got %d", numInputs, argc);
        }
        
        for (uint32_t index = 0; index < (uint32_t)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            query[index] = value;
        }
        
        bool success = false;
        success = svm.predict(query);
        
        if (success == false)
        {
            error("unable to classify input");
            return;
        }
        
        if (estimates)
        {
            GRT::VectorDouble likelihoods = svm.getClassLikelihoods();
            GRT::vector<GRT::UINT> labels = labelledClassificationData.getClassLabels();
            
            if (likelihoods.size() != labels.size())
            {
                error("labels / likelihoods size mismatch");
            }
            else
            {
                AtomList estimates;
                
                for (uid_t count = 0; count < labels.size(); ++count)
                {
                    t_atom label_a;
                    t_atom likelihood_a;
                    
                    // Need to call SetDouble() first or label_a gets corrupted. Bug in Flext?
                    SetDouble(&likelihood_a, likelihoods[count]);
                    SetInt(label_a, labels[count]);
                    
                    estimates.Append(label_a);
                    estimates.Append(likelihood_a);
                }
                ToOutAnything(1, s_estimates, estimates);
            }
        }
        
        GRT::UINT classification = svm.getPredictedClassLabel();
        ToOutInt(0, classification);
    }
    
    void ml_svm::usage()
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
        post("cross_validation:\t\tperform cross-validation");
        post("train:\ttrain the SVM based on labelled vectors added with 'add'");
        post("clear:\tclear the stored training data");
        post("classify:\tgive the class of the input feature vector provided as a list");
        post("help:\tpost this usage statement to the console");
        post("%s", ML_POST_SEP);
        
    }
    
    FLEXT_LIB("ml.svm", ml_svm);
    
} //namespace ml


