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

#include "ml_classification.h"

#include "ml_defaults.h"

#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <algorithm>

#include <stdint.h>

namespace ml
{
    const std::string object_name = ML_NAME_PREFIX "svm";
    
    // Utility functions
    GRT::SVM::SVMType get_grt_svm_type(int type)
    {
        if (type >= GRT::SVM::SVMType::NUM_SVM_TYPES)
        {
            throw grt_type_exception();
        }
        return static_cast<GRT::SVM::SVMType>(type);
    }
    
    GRT::SVM::KernelType get_grt_svm_kernel_type(int type)
    {
        if (type >= GRT::SVM::KernelType::NUM_KERNEL_TYPES)
        {
            throw grt_type_exception();
        }
        return static_cast<GRT::SVM::KernelType>(type);
    }
    
    GRT::SVM::SVMType svm_type_from_type_string(std::string type_string)
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
    
    GRT::SVM::KernelType svm_kernel_type_from_kernel_string(std::string kernel_string)
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
    
    class svm : classification
    {
        FLEXT_HEADER_S(svm, classification, setup);
        
    public:
        svm()
        {
            std::stringstream ss;
			ss << "Support Vector Machines based on the GRT library version " << GRT::GRTBase::getGRTVersion();
            post(ss.str());
            set_scaling(defaults::scaling);
            set_probs(defaults::probabilities);
			//std::string test(GRT::GRTBase::getGRTVersion());
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
            FLEXT_CADDATTR_SET(c, "probs", set_probs);
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
            FLEXT_CADDATTR_GET(c, "probs", get_probs);
            FLEXT_CADDATTR_GET(c, "weights", get_weights);
            FLEXT_CADDATTR_GET(c, "mode", get_kfold_value);
            
            FLEXT_CADDMETHOD_(c, 0, "cross_validation", cross_validation);
            
            DefineHelp(c, object_name.c_str());
        }
        
        void cross_validation();
        
        // Flext attribute setters
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
        void set_probs(bool probs);
        void set_weights(const AtomList &weights);
        void set_kfold_value(int mode);
        void set_enable_cross_validation(bool enable_cross_validation);
        
        // Flext attribute getters
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
        void get_probs(bool &probs) const;
        void get_weights(AtomList &weights) const;
        void get_kfold_value(int &mode) const;
        
        // Pure virtual method implementations
        GRT::Classifier &get_Classifier_instance();
        const GRT::Classifier &get_Classifier_instance() const;
        
    private:
        // Flext method wrappers
        FLEXT_CALLBACK(cross_validation);
        
        // Flext attribute wrappers
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
        FLEXT_CALLVAR_B(get_probs, set_probs);
        FLEXT_CALLVAR_V(get_weights, set_weights);
        FLEXT_CALLVAR_I(get_kfold_value, set_kfold_value);
        FLEXT_CALLSET_B(set_enable_cross_validation);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::SVM grt_svm;
    };
    
    // Flext attribute setters
    void svm::set_type(int type)
    {
        GRT::SVM::SVMType type_ = GRT::SVM::SVMType::C_SVC;
        
        try
        {
            type_ = get_grt_svm_type(type);
        }
        catch (std::exception& e)
        {
            post("invalid SVM type, send a 'help' message to the first inlet for available types");
            return;
        }
        
        grt_svm.setSVMType(type_);
    }
    
    void svm::set_kernel(int kernel)
    {
        GRT::SVM::KernelType kernel_ = GRT::SVM::KernelType::LINEAR_KERNEL;

        try
        {
            kernel_ = get_grt_svm_kernel_type(kernel);
        }
        catch (std::exception& e)
        {
            post("invalid kernel type, send a 'help' message to the first inlet for available types");
            return;
        }
        
        grt_svm.setKernelType(kernel_);
    }
    
    void svm::set_degree(int degree)
    {
        grt_svm.setDegree(degree);
    }
    
    void svm::set_gamma(float gamma)
    {
        grt_svm.setGamma(gamma);
    }
    
    void svm::set_coef0(float coef0)
    {
        grt_svm.setCoef0(coef0);
    }
    
    void svm::set_cost(float cost)
    {
        grt_svm.setC(cost);
    }
    
    void svm::set_nu(float nu)
    {
        grt_svm.setNu(nu);
    }
    
    void svm::set_epsilon(float epsilon)
    {
        error("function not implemented");
    }
    
    void svm::set_cachesize(int cachesize)
    {
        error("function not implemented");
    }
    
    void svm::set_shrinking(int shrinking)
    {
        error("function not implemented");
    }
    
    void svm::set_probs(bool probs)
    {
        this->probs = probs;
    }
    
    void svm::set_weights(const AtomList &weights)
    {
        error("function not implemented");
    }
    
    void svm::set_kfold_value(int mode)
    {
        grt_svm.setKFoldCrossValidationValue(mode);
    }
    
    void svm::set_enable_cross_validation(bool enable_cross_validation)
    {
        grt_svm.enableCrossValidationTraining(enable_cross_validation);
    }
    
    // Flext attribute getters
    void svm::get_type(int &type) const
    {
        std::string type_s = grt_svm.getSVMType();
        type = svm_type_from_type_string(type_s);
    }
    
    void svm::get_kernel(int &kernel) const
    {
        std::string kernel_s = grt_svm.getKernelType();
        kernel = svm_kernel_type_from_kernel_string(kernel_s);
        
    }
    
    void svm::get_degree(int &degree) const
    {
        degree = grt_svm.getDegree();
    }
    
    void svm::get_gamma(float &gamma) const
    {
        gamma = grt_svm.getGamma();
    }
    
    void svm::get_coef0(float &coef0) const
    {
        coef0 = grt_svm.getCoef0();
    }
    
    void svm::get_cost(float &cost) const
    {
        cost = grt_svm.getC();
    }
    
    void svm::get_nu(float &nu) const
    {
        nu = grt_svm.getNu();
    }
    
    void svm::get_epsilon(float &epsilon) const
    {
        error("function not implemented");
    }
    
    void svm::get_cachesize(int &cachesize) const
    {
        error("function not implemented");
    }
    
    void svm::get_shrinking(int &shrinking) const
    {
        error("function not implemented");
    }
    
    void svm::get_probs(bool &probs) const
    {
        probs = this->probs;
    }
    
    void svm::get_weights(AtomList &weights) const
    {
        error("function not implemented");
    }
    
    void svm::get_kfold_value(int &mode) const
    {
        error("function not implemented");
    }
    
    void svm::cross_validation()
    {
        double result = grt_svm.getCrossValidationResult();
        ToOutDouble(0, result);
    }
    
    // Implement pure virtual methods
    GRT::Classifier &svm::get_Classifier_instance()
    {
        return grt_svm;
    }
    
    const GRT::Classifier &svm::get_Classifier_instance() const
    {
        return grt_svm;
    }
    
    typedef class svm ml0x2esvm;

#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), svm);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2esvm);
#endif
    
    
} //namespace ml



