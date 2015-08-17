//
//  ml_doc_populate.cpp
//  ml
//
//  Created by Jamie Bullock on 03/08/2015.
//
//

#include "ml_doc.h"
#include "ml_types.h"
#include "ml_defaults.h"
#include "ml_names.h"

#include "GRT.h"



namespace ml_doc
{
    
        
    void doc_manager::populate(void)
    {
        
        add_class_descriptor(ml::k_base);
        
        add_class_descriptors(ml::k_base, {
            ml::k_classification,
            ml::k_feature_extraction,
            ml::k_regression
        });
        
        add_class_descriptors(ml::k_regression, {
            ml::k_mlp,
            ml::k_linreg,
            ml::k_logreg
        });
        
        add_class_descriptors(ml::k_classification, {
            ml::k_svm,
            ml::k_adaboost,
            ml::k_anbc,
            ml::k_dtw,
            ml::k_hmm,
            ml::k_softmax,
            ml::k_randforest,
            ml::k_mindist,
            ml::k_lda,
            ml::k_knn,
            ml::k_gmm,
            ml::k_dtree
        });
        
        add_class_descriptors(ml::k_feature_extraction, {
            ml::k_peak,
            ml::k_minmax,
            ml::k_zerox
        });
        
        descriptors[ml::k_mlp].desc = "Multilayer Perceptron";
        descriptors[ml::k_linreg].desc = "Linear Regression";
        descriptors[ml::k_logreg].desc = "Logistic Regression";
        descriptors[ml::k_peak].desc = "Peak Detection";
        descriptors[ml::k_minmax].desc = "Minimum / Maximum Detection";
        descriptors[ml::k_zerox].desc = "Zero Crossings Detection";
        descriptors[ml::k_svm].desc = "Support Vector Machine";
        descriptors[ml::k_adaboost].desc = "Adaptive Boosting";
        descriptors[ml::k_anbc].desc = "Adaptive Naive Bayes Classifier";
        descriptors[ml::k_dtw].desc = "Dynamic Time Warping";
        descriptors[ml::k_hmm].desc = "Hidden Markov Model";
        descriptors[ml::k_softmax].desc = "Softmax Classifier";
        descriptors[ml::k_randforest].desc = "Random Forests";
        descriptors[ml::k_mindist].desc = "Minimum Distance";
        descriptors[ml::k_lda].desc = "Linear Discriminant Analysis";
        descriptors[ml::k_knn].desc = "K Nearest Neighbour";
        descriptors[ml::k_gmm].desc = "Gaussian Mixture Model";
        descriptors[ml::k_dtree].desc = "Decision Trees";

        // base descriptor
        message_descriptor add(
                              "add",
                              "list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc"
                              );

        message_descriptor write(
                                "write",
                                "write training data and / or model, first argument gives path to write file"
                                );
        
        message_descriptor read(
                               "read",
                               "read training data and / or model, first argument gives path to the read file"
                               );
        
        message_descriptor train(
                                "train",
                                "train the model based on vectors added with 'add'"
                                );
        
        message_descriptor clear(
                                "clear",
                                "clear the stored training data and model"
                                );
        
        message_descriptor map(
                              "map",
                              "generate the output value(s) for the input feature vector"
                              );
        
        message_descriptor help(
                               "help",
                               "post this usage statement to the console"
                               );
        
        valued_message_descriptor<int> scaling(
                                               "scaling",
                                               "sets whether values are automatically scaled",
                                               {0, 1},
                                               1
                                               );
        
        valued_message_descriptor<int> probs(
                                             "probs",
                                             "determines whether probabilities are sent from the right outlet",
                                             {0, 1},
                                             0
                                             );
        
        descriptors[ml::k_base].add_message_descriptor(add, write, read, train, clear, map, help, scaling, probs);

        // generic classification descriptor
        valued_message_descriptor<bool> null_rejection(
                                                       "null_rejection",
                                                       "toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded",
                                                       {false, true},
                                                       true
                                                       );
        
        ranged_message_descriptor<float> null_rejection_coeff(
                                                              "null_rejection_coeff",
                                                              "set a multiplier for the NULL-rejection threshold ",
                                                              0.0,
                                                              1.0,
                                                              0.9
                                                              );
        
        descriptors[ml::k_classification].add_message_descriptor(null_rejection_coeff, null_rejection);
        
        // generic regression descriptor
        ranged_message_descriptor<float> training_rate(
                                                       "training_rate",
                                                       "update the weights at each step of the stochastic gradient descent",
                                                       0.0,
                                                       1.0,
                                                       0.1
                                                       );
        
        ranged_message_descriptor<float> min_change(
                                                    "min_change",
                                                    "set the minimum change that must be achieved between two training epochs for the training to continue",
                                                    0.0,
                                                    1.0,
                                                    1.0e-5
                                                    );
        
        ranged_message_descriptor<int> max_iterations(
                                                      "max_iterations",
                                                      "set the maximum number of training iterations",
                                                      0,
                                                      1000,
                                                      100
                                                      );
        
        descriptors[ml::k_regression].add_message_descriptor(training_rate, min_change, max_iterations);
        
        // Object-specific descriptors
        //-- Regressifiers
        //---- mlp
        valued_message_descriptor<ml::data_type> mode("mode",
                                                      "set the mode of the MLP" + std::to_string(ml::LABELLED_CLASSIFICATION) + "for classification " + std::to_string(ml::LABELLED_REGRESSION) + "for regression",
                                                      {ml::LABELLED_CLASSIFICATION, ml::LABELLED_REGRESSION, ml::LABELLED_TIME_SERIES_CLASSIFICATION},
                                                      ml::defaults::data_type
                                                      );
        
        
        message_descriptor add_mlp(
                              "add",
                              "list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc when in classification mode or N output values followed by M input values when in regression mode, where N is determined by the num_outputs attribute"
                              );
      
        ranged_message_descriptor<int> num_outputs(
                                                   "num_outputs",
                                                   "set the number of neurons in the output layer",
                                                   1,
                                                   1000,
                                                   ml::defaults::num_output_dimensions
                                                   );
        
        ranged_message_descriptor<int> num_hidden(
                                                  "num_hidden",
                                                  "set the number of neurons in the hidden layer",
                                                  1,
                                                  1000,
                                                  ml::defaults::num_hidden_neurons
                                                  );
        
        ranged_message_descriptor<int> min_epochs(
                                                  "min_epochs",
                                                  "setting the minimum number of training iterations",
                                                  1,
                                                  1000,
                                                  10
                                                  );
        
        // TODO: check if the "epochs" are still needed or if we can use "iterations" as inherited from ml_regression
        ranged_message_descriptor<int> max_epochs(
                                                  "max_epochs",
                                                  "setting the maximum number of training iterations",
                                                  1,
                                                  10000,
                                                  100
                                                  );

        ranged_message_descriptor<float> momentum(
                                                  "momentum",
                                                  "set the momentum",
                                                  0.0,
                                                  1.0,
                                                  0.5
                                                  );
        
        ranged_message_descriptor<float> gamma(
                                                  "gamma",
                                                  "set the gamma",
                                                  0.0,
                                                  10.0,
                                                  2.0
                                                  );
        
        // TODO: have optional value_labels for value labels
        valued_message_descriptor<int> input_activation_function(
                                                                 "input_activation_function",
                                                                 "set the activation function for the input layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID",
                                                                 {0, 1, 2},
                                                                 0
                                                                 );
        
        valued_message_descriptor<int> hidden_activation_function(
                                                                 "hidden_activation_function",
                                                                 "set the activation function for the hidden layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID",
                                                                 {0, 1, 2},
                                                                 0
                                                                 );
        
        valued_message_descriptor<int> output_activation_function(
                                                                 "output_activation_function",
                                                                 "set the activation function for the output layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID",
                                                                 {0, 1, 2},
                                                                 0
                                                                 );

                                                                 
        ranged_message_descriptor<int> rand_training_iterations(
                                                                 "rand_training_iterations",
                                                                 "set the number of random training iterations",
                                                                 0,
                                                                 1000,
                                                                 10
                                                                 );

        valued_message_descriptor<bool> use_validation_set(
                                                           "use_validation_set",
                                                           "set whether to use a validation training set",
                                                           {false, true},
                                                           true
                                                           );
        
        ranged_message_descriptor<int> validation_set_size(
                                                           "validation_set_size",
                                                           "set the size of the validation set",
                                                           1,
                                                           200,
                                                           20
                                                           );
        
        valued_message_descriptor<bool> randomize_training_order(
                                                           "randomize_training_order",
                                                           "sets whether to randomize the training order",
                                                           {false, true},
                                                           false
                                                           );
        
        
        descriptors[ml::k_mlp].add_message_descriptor(add_mlp, null_rejection, null_rejection_coeff, num_outputs, num_hidden, min_epochs, max_epochs, momentum, gamma, input_activation_function, hidden_activation_function, output_activation_function, rand_training_iterations, use_validation_set, validation_set_size, randomize_training_order);
        
        
        //-- Classifiers
        //---- ml.svm
        ranged_message_descriptor<int> type(
                                            "type",
                                            "set SVM type",
                                            0,
                                            4,
                                            0
                                            //        "	0 -- C-SVC		(multi-class classification)\n"
                                            //        "	1 -- nu-SVC		(multi-class classification)\n"
                                            //        "	2 -- one-class SVM\n"
                                            //        "	3 -- epsilon-SVR	(regression)\n"
                                            //        "	4 -- nu-SVR		(regression)\n"

                                            );
        
        ranged_message_descriptor<int> kernel(
                                              "kernel",
                                              "set type of kernel function",
                                              0,
                                              4,
                                              0
                                              //        "	0 -- linear: u'*v\n"
                                              //        "	1 -- polynomial: (gamma*u'*v + coef0)^degree\n"
                                              //        "	2 -- radial basis function: exp(-gamma*|u-v|^2)\n"
                                              //        "	3 -- sigmoid: tanh(gamma*u'*v + coef0)\n"
                                              //        "	4 -- precomputed kernel (kernel values in training_set_file)\n"
                                              );
        
        ranged_message_descriptor<float> degree(
                                              "degree",
                                              "set degree in kernel function",
                                              0,
                                              20,
                                              3
                                              );
        
        ranged_message_descriptor<float> svm_gamma(
                                              "gamma",
                                              "set gamma in kernel function",
                                              0.0,
                                              1.0,
                                              0.5
                                              );
        
        valued_message_descriptor<float> coef0(
                                               "coef0",
                                               "coef0 in kernel function",
                                               0.0
                                               );
        
        valued_message_descriptor<float> cost(
                                               "cost",
                                               "set the parameter C of C-SVC, epsilon-SVR, and nu-SVR",
                                               1.0
                                               );
        
        valued_message_descriptor<float> nu(
                                              "nu",
                                              "set the parameter nu of nu-SVC, one-class SVM, and nu-SVR",
                                              0.5
                                              );
        
        valued_message_descriptor<float> epsilon(
                                            "epsilon",
                                            "set the epsilon in loss function of epsilon-SVR",
                                            0.1
                                            );
        
        ranged_message_descriptor<int> cachesize(
                                                 "cachesize",
                                                 "set cache memory size in MB",
                                                 8,
                                                 1024,
                                                 100
                                                 );
        
        valued_message_descriptor<float> tolerance(
                                                   "tolerance",
                                                   "set tolerance of termination criterion",
                                                   0.001
                                                   );

        valued_message_descriptor<bool> shrinking(
                                                   "shrinking",
                                                   "whether to use the shrinking heuristics",
                                                  {0, 1},
                                                  1
                                                   );
        
        message_descriptor cross_validation(
                                            "cross_validation",
                                            "perform cross validation"
                                            );
        
        descriptors[ml::k_svm].add_message_descriptor(cross_validation, type, kernel, degree, svm_gamma, coef0, cost, nu, epsilon, cachesize, tolerance, shrinking);
        
        //---- ml.adaboost        
        ranged_message_descriptor<int> num_boosting_iterations(
                                                                "num_boosting_iterations",
                                                               "set the number of boosting iterations that should be used when training the model",
                                                               0,
                                                               200,
                                                               20
                                                               );
        
        valued_message_descriptor<int> prediction_method(
                                                        "prediction_method",
                                                         "set the Adaboost prediction method",
                                                         {GRT::AdaBoost::MAX_VALUE, GRT::AdaBoost::MAX_POSITIVE_VALUE},
                                                         GRT::AdaBoost::MAX_VALUE
                                                         
        );
        
        valued_message_descriptor<int> set_weak_classifier(
                                                           "set_weak_classifier",
                                                           "sets the weak classifier to be used by Adaboost",
                                                           {ml::weak_classifiers::DECISION_STUMP, ml::weak_classifiers::RADIAL_BASIS_FUNCTION},
                                                           ml::weak_classifiers::DECISION_STUMP
                                                           );
        
        valued_message_descriptor<int> add_weak_classifier(
                                                           "add_weak_classifier",
                                                           "add a weak classifier to the list of classifiers used by Adaboost",
                                                           {ml::weak_classifiers::DECISION_STUMP, ml::weak_classifiers::RADIAL_BASIS_FUNCTION},
                                                           ml::weak_classifiers::DECISION_STUMP
                                                           );

        descriptors[ml::k_adaboost].add_message_descriptor(num_boosting_iterations, prediction_method, set_weak_classifier, add_weak_classifier);
        
        //---- ml.anbc
        message_descriptor weights("weights",
                                   "vector of 1 integer and N floating point values where the integer is a class label and the floats are the weights for that class. Sending weights with a vector size of zero clears all weights"
                                   );
        
        descriptors[ml::k_anbc].add_message_descriptor(weights);
        
        //---- ml.dtw
        valued_message_descriptor<int> rejection_mode(
                                                      "rejection_mode",
                                                      "sets the method used for null rejection",
                                                      {GRT::DTW::TEMPLATE_THRESHOLDS, GRT::DTW::CLASS_LIKELIHOODS, GRT::DTW::THRESHOLDS_AND_LIKELIHOODS},
                                                      GRT::DTW::TEMPLATE_THRESHOLDS
                                                      );
        
        ranged_message_descriptor<float> warping_radius(
                                                        "warping_radius",
                                                        "sets the radius of the warping path, which is used if the constrain_warping_path is set to 1",
                                                        0.0,
                                                        1.0,
                                                        0.2
                                                        );
        
        valued_message_descriptor<bool> offset_time_series(
                                                           "offset_time_series",
                                                           "set if each timeseries should be offset by the first sample in the time series",
                                                           {false, true},
                                                           false
                                                           );
        
        valued_message_descriptor<bool> constrain_warping_path(
                                                           "constrain_warping_path",
                                                           "sets the warping path should be constrained to within a specific radius from the main diagonal of the cost matrix",
                                                           {false, true},
                                                           true
                                                           );
        
        valued_message_descriptor<bool> enable_z_normalization(
                                                               "enable_z_normalization",
                                                               "turn z-normalization on or off for training and prediction",
                                                               {false, true},
                                                               false
                                                               );
        
        valued_message_descriptor<bool> enable_trim_training_data(
                                                               "enable_trim_training_data",
                                                               "enabling data trimming prior to training",
                                                               {false, true},
                                                               false
                                                               );
  
        descriptors[ml::k_dtw].add_message_descriptor(rejection_mode, warping_radius, offset_time_series, constrain_warping_path, enable_z_normalization, enable_trim_training_data);
        
        //---- ml.hmm
        ranged_message_descriptor<int> num_states(
                                                  "num_states",
                                                  "sets the number of states in the model",
                                                  0,
                                                  100,
                                                  5
                                                  );
        
        ranged_message_descriptor<int> num_symbols(
                                                  "num_symbols",
                                                  "sets the number of symbols in the model",
                                                  0,
                                                  100,
                                                  10
                                                  );
        
        valued_message_descriptor<int> model_type(
                                                  "model_type",
                                                  "set the model type used",
                                                  {GRT::HMM_ERGODIC, GRT::HMM_LEFTRIGHT},
                                                  GRT::HMM_LEFTRIGHT
                                                  );
        
        ranged_message_descriptor<int> delta(
                                             "delta",
                                             "control how many states a model can transition to if the LEFTRIGHT model type is used",
                                             0,
                                             100,
                                             11
                                             );
        
        ranged_message_descriptor<int> max_num_iterations(
                                                          "max_num_iterations",
                                                          "set the maximum number of training iterations",
                                                          1,
                                                          1000,
                                                          100
                                                          );
        
        ranged_message_descriptor<int> num_random_training_iterations(
                                                                      "num_random_training_iterations",
                                                                      "setting the number of random training iterations",
                                                                      0,
                                                                      1000,
                                                                      10
                                                                      );
        
        ranged_message_descriptor<float> min_improvement(
                                                         "min_improvement",
                                                         "set the minimum improvement parameter which controls when the HMM training algorithm should stop",
                                                         0,
                                                         1,
                                                         1.0e-2
                                                         );
        
        descriptors[ml::k_hmm].add_message_descriptor(num_states, num_symbols, model_type, delta, max_num_iterations, num_random_training_iterations, min_improvement);
        
        //---- ml.softmax
        
        //---- ml.randforest
        ranged_message_descriptor<int> num_random_splits(
                                                         "num_random_splits",
                                                         "set the number of steps that will be used to search for the best spliting value for each node",
                                                         1,
                                                         1000,
                                                         100
                                                         );
        
        ranged_message_descriptor<int> num_samples_per_node(
                                                            "num_samples_per_node",
                                                            "set the minimum number of samples that are allowed per node",
                                                            1,
                                                            100,
                                                            5
                                                            );
        
        ranged_message_descriptor<int> max_depth(
                                                 "max_depth",
                                                 "sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node",
                                                 1,
                                                 100,
                                                 10
                                                 );

        descriptors[ml::k_randforest].add_message_descriptor(num_random_splits, num_samples_per_node, max_depth);
        
        //----ml.mindist
        ranged_message_descriptor<int> num_clusters(
                                                    "num_clusters",
                                                    "set how many clusters each model will try to find during the training phase",
                                                    1,
                                                    100,
                                                    10
                                                    );

        descriptors[ml::k_mindist].add_message_descriptor(num_clusters);
        
        //---- ml.lda
        
        //---- ml.knn
//        "best_k_value_search:\tbool (0 or 1) set whether k value search is enabled or not (default 0)\n";

        ranged_message_descriptor<int> k(
                                         "k",
                                         "sets the K nearest neighbours that will be searched for by the algorithm during prediction",
                                         1,
                                         500,
                                         10
                                         );
        
        ranged_message_descriptor<int> min_k_search_value(
                                         "min_k_search_value",
                                         "set the minimum K value to use when searching for the best K value",
                                         1,
                                         500,
                                         1
                                         );
        
        ranged_message_descriptor<int> max_k_search_value(
                                                          "max_k_search_value",
                                                          "set the maximum K value to use when searching for the best K value",
                                                          1,
                                                          500,
                                                          10
                                                          );
        
        valued_message_descriptor<bool> best_k_value_search(
                                                            "best_k_value_search",
                                                            "set whether k value search is enabled or not",
                                                            {false, true},
                                                            false
                                                            );
        
        descriptors[ml::k_knn].add_message_descriptor(k, min_k_search_value, max_k_search_value, best_k_value_search);
        
        //---- ml.gmm
        ranged_message_descriptor<int> num_mixture_models(
                                                          "num_mixture_models",
                                                          "sets the number of mixture models used for class",
                                                          1,
                                                          20,
                                                          2
                                                          );

        descriptors[ml::k_gmm].add_message_descriptor(num_mixture_models);

        //---- ml.dtree
        valued_message_descriptor<bool> training_mode(
                                                      "training_mode",
                                                      "set the training mode",
                                                      {GRT::ClusterTree::BEST_ITERATIVE_SPILT, GRT::ClusterTree::BEST_RANDOM_SPLIT},
                                                      GRT::ClusterTree::BEST_ITERATIVE_SPILT
                                                      );
        
        ranged_message_descriptor<int> num_splitting_steps(
                                                          "num_splitting_steps",
                                                          "set the number of steps that will be used to search for the best spliting value for each node",
                                                          1,
                                                          500,
                                                          100
                                                          );
        
        ranged_message_descriptor<int> min_samples_per_node(
                                                          "min_samples_per_node",
                                                          "sets the minimum number of samples that are allowed per node, if the number of samples at a node is below this value then the node will automatically become a leaf node",
                                                          1,
                                                          100,
                                                          5
                                                          );
        
        ranged_message_descriptor<int> dtree_max_depth(
                                                 "max_depth",
                                                 "sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node",
                                                 1,
                                                 100,
                                                 10
                                                 );
        
        valued_message_descriptor<bool> remove_features_at_each_split(
                                                               "remove_features_at_each_split",
                                                               "set if a feature is removed at each spilt so it can not be used again",
                                                               {false, true},
                                                               false
                                                               );
        descriptors[ml::k_dtree].add_message_descriptor(training_mode, num_splitting_steps, min_samples_per_node, dtree_max_depth, remove_features_at_each_split);

        //-- Feature extraction
        
        //---- ml.peak
        ranged_message_descriptor<int> search_window_size(
                                                          "search_window_size",
                                                          "set the search window size in values",
                                                          1,
                                                          500,
                                                          5
                                                          );
        
        message_descriptor peak(
                                "<float>",
                                "a floating point value to the inlet updates the current value of the peak detector"
                                );
        
        message_descriptor reset(
                                "reset",
                                "reset the peak detector"
                                );
        
        message_descriptor timeout(
                                 "timeout",
                                 "(see GRT documentation)" // TODO: add documentation!
                                 );
        
        message_descriptor peak_help(
                                 "help",
                                 "post usage statement to the console"
                                 );


        descriptors[ml::k_peak].add_message_descriptor(peak, reset, timeout, peak_help);
        
        //---- ml.minmax        
        ranged_message_descriptor<float> minmax_delta(
                                                      "delta",
                                                      "setting the minmax delta. Input values will be considered to be peaks if they are greater than the previous and next value by at least the delta value",
                                                      0,
                                                      1,
                                                      1e-6
                                                      );
        
        descriptors[ml::k_minmax].add_message_descriptor(minmax_delta);
        
        //---- ml.zerox
        
        
        

    }
}
