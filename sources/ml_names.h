//
//  ml_names.h
//  ml
//
//  Created by Jamie Bullock on 12/08/2015.
//
//

#ifndef ml_ml_names_h
#define ml_ml_names_h

#include <set>

namespace ml
{
    const std::string k_base = "ml.base";
    const std::string k_classification = "ml.classification";
    const std::string k_regression = "ml.regression";
    const std::string k_feature_extraction = "ml.feature_extraction";
    const std::string k_peak = "ml.peak";
    const std::string k_minmax = "ml.minmax";
    const std::string k_zerox = "ml.zerox";
    const std::string k_svm = "ml.svm";
    const std::string k_adaboost = "ml.adaboost";
    const std::string k_anbc = "ml.anbc";
    const std::string k_dtw = "ml.dtw";
    const std::string k_hmm = "ml.hmm";
    const std::string k_softmax = "ml.softmax";
    const std::string k_randforest = "ml.randforest";
    const std::string k_mindist = "ml.mindist";
    const std::string k_lda = "ml.lda";
    const std::string k_knn = "ml.knn";
    const std::string k_gmm = "ml.gmm";
    const std::string k_dtree = "ml.dtree";
    const std::string k_linreg = "ml.linreg";
    const std::string k_logreg = "ml.logreg";
    const std::string k_mlp = "ml.mlp";
    
    const std::set<std::string> k_classes =
    {
        k_peak,
        k_minmax,
        k_zerox,
        k_svm,
        k_adaboost,
        k_anbc,
        k_dtw,
        k_hmm,
        k_softmax,
        k_randforest,
        k_mindist,
        k_lda,
        k_knn,
        k_gmm,
        k_dtree,
        k_linreg,
        k_logreg,
        k_mlp
    };
}

#endif
