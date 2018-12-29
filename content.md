<h1>Class Reference</h1>
<h2>ml.adaboost</h2>
<p>Adaptive Boosting<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/AdaBoost">http://www.nickgillian.com/wiki/pmwiki.php/GRT/AdaBoost</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>num_boosting_iterations</td><td>set the number of boosting iterations that should be used when training the model</td><td></td><td>0</td><td>200</td><td>20</td></tr>
<tr><td>prediction_method</td><td>set the Adaboost prediction method, 0:MAX_VALUE, 1:MAX_POSITIVE_VALUE</td><td>1, 0</td><td></td><td></td><td>1</td></tr>
<tr><td>set_weak_classifier</td><td>sets the weak classifier to be used by Adaboost, 0:DECISION_STUMP, 1:RADIAL_BASIS_FUNCTION</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>add_weak_classifier</td><td>add a weak classifier to the list of classifiers used by Adaboost</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
</table><h2>ml.anbc</h2>
<p>Adaptive Naive Bayes Classifier<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/ANBC">http://www.nickgillian.com/wiki/pmwiki.php/GRT/ANBC</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>weights</td><td>vector of 1 integer and N floating point values where the integer is a class label and the floats are the weights for that class. Sending weights with a vector size of zero clears all weights</td><td></td><td></td><td></td><td></td></tr>
</table><h2>ml.dtree</h2>
<p>Decision Trees<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/DecisionTree">http://www.nickgillian.com/wiki/pmwiki.php/GRT/DecisionTree</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>training_mode</td><td>set the training mode</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>num_splitting_steps</td><td>set the number of steps that will be used to search for the best spliting value for each node</td><td></td><td>1</td><td>500</td><td>100</td></tr>
<tr><td>min_samples_per_node</td><td>sets the minimum number of samples that are allowed per node, if the number of samples at a node is below this value then the node will automatically become a leaf node</td><td></td><td>1</td><td>100</td><td>5</td></tr>
<tr><td>max_depth</td><td>sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node</td><td></td><td>1</td><td>100</td><td>10</td></tr>
<tr><td>remove_features_at_each_split</td><td>set if a feature is removed at each spilt so it can not be used again</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
</table><h2>ml.dtw</h2>
<p>Dynamic Time Warping<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/DTW">http://www.nickgillian.com/wiki/pmwiki.php/GRT/DTW</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>record</td><td>start or stop time series recording for a single example of a given class</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>rejection_mode</td><td>sets the method used for null rejection, 0:TEMPLATE_THRESHOLDS, 1:CLASS_LIKELIHOODS, 2:THRESHOLDS_AND_LIKELIHOODS</td><td>0, 1, 2</td><td></td><td></td><td>0</td></tr>
<tr><td>warping_radius</td><td>sets the radius of the warping path, which is used if the constrain_warping_path is set to 1</td><td></td><td>0</td><td>1</td><td>0.2</td></tr>
<tr><td>offset_time_series</td><td>set if each timeseries should be offset by the first sample in the time series</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>constrain_warping_path</td><td>sets the warping path should be constrained to within a specific radius from the main diagonal of the cost matrix</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>enable_z_normalization</td><td>turn z-normalization on or off for training and prediction</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>enable_trim_training_data</td><td>enabling data trimming prior to training</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
</table><h2>ml.gmm</h2>
<p>Gaussian Mixture Model<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/GMMClassifier">http://www.nickgillian.com/wiki/pmwiki.php/GRT/GMMClassifier</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>num_mixture_models</td><td>sets the number of mixture models used for class</td><td></td><td>1</td><td>20</td><td>2</td></tr>
</table><h2>ml.hmm</h2>
<p>Continuous Hidden Markov Model<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/HMM">http://www.nickgillian.com/wiki/pmwiki.php/GRT/HMM</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>record</td><td>start or stop time series recording for a single example of a given class</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>num_states</td><td>sets the number of states in the model</td><td></td><td>0</td><td>100</td><td>5</td></tr>
<tr><td>num_symbols</td><td>sets the number of symbols in the model</td><td></td><td>0</td><td>100</td><td>10</td></tr>
<tr><td>model_type</td><td>set the model type used, 0:ERGODIC, 1:LEFTRIGHT</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>delta</td><td>control how many states a model can transition to if the LEFTRIGHT model type is used</td><td></td><td>0</td><td>100</td><td>11</td></tr>
<tr><td>max_num_iterations</td><td>set the maximum number of training iterations</td><td></td><td>1</td><td>1000</td><td>100</td></tr>
<tr><td>num_random_training_iterations</td><td>set the number of random training iterations</td><td></td><td>0</td><td>1000</td><td>10</td></tr>
<tr><td>min_improvement</td><td>set the minimum improvement parameter which controls when the HMM training algorithm should stop</td><td></td><td>0</td><td>1</td><td>0.01</td></tr>
<tr><td>committee_size</td><td>set the committee size for the number of votes combined to make a prediction</td><td></td><td>1</td><td>1000</td><td>5</td></tr>
<tr><td>downsample_facor</td><td>set the downsample factor for the resampling of each training time series. A factor of 5 will result in each time series being resized (smaller) by a factor of 5</td><td></td><td>1</td><td>1000</td><td>5</td></tr>
</table><h2>ml.knn</h2>
<p>K Nearest Neighbour<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/KNN">http://www.nickgillian.com/wiki/pmwiki.php/GRT/KNN</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>k</td><td>sets the K nearest neighbours that will be searched for by the algorithm during prediction</td><td></td><td>1</td><td>500</td><td>10</td></tr>
<tr><td>min_k_search_value</td><td>set the minimum K value to use when searching for the best K value</td><td></td><td>1</td><td>500</td><td>1</td></tr>
<tr><td>max_k_search_value</td><td>set the maximum K value to use when searching for the best K value</td><td></td><td>1</td><td>500</td><td>10</td></tr>
<tr><td>best_k_value_search</td><td>set whether k value search is enabled or not</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
</table><h2>ml.linreg</h2>
<p>Linear Regression<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/LinearRegression">http://www.nickgillian.com/wiki/pmwiki.php/GRT/LinearRegression</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>training_rate</td><td>update the weights at each step of the stochastic gradient descent</td><td></td><td>0</td><td>1</td><td>0.1</td></tr>
<tr><td>min_change</td><td>set the minimum change that must be achieved between two training epochs for the training to continue</td><td></td><td>0</td><td>1</td><td>1e-05</td></tr>
<tr><td>max_iterations</td><td>set the maximum number of training iterations</td><td></td><td>0</td><td>1000</td><td>100</td></tr>
</table><h2>ml.logreg</h2>
<p>Logistic Regression<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/LogisticRegression">http://www.nickgillian.com/wiki/pmwiki.php/GRT/LogisticRegression</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>training_rate</td><td>update the weights at each step of the stochastic gradient descent</td><td></td><td>0</td><td>1</td><td>0.1</td></tr>
<tr><td>min_change</td><td>set the minimum change that must be achieved between two training epochs for the training to continue</td><td></td><td>0</td><td>1</td><td>1e-05</td></tr>
<tr><td>max_iterations</td><td>set the maximum number of training iterations</td><td></td><td>0</td><td>1000</td><td>100</td></tr>
</table><h2>ml.mindist</h2>
<p>Minimum Distance<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/MinDist">http://www.nickgillian.com/wiki/pmwiki.php/GRT/MinDist</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>num_clusters</td><td>set how many clusters each model will try to find during the training phase</td><td></td><td>1</td><td>100</td><td>10</td></tr>
</table><h2>ml.minmax</h2>
<p>Minimum / Maximum Detection<br/>URL: <a href=""></a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>list</td><td>list of float values in which to find minima and maxima</td><td></td><td></td><td></td><td></td></tr>
<tr><td>delta</td><td>setting the minmax delta. Input values will be considered to be peaks if they are greater than the previous and next value by at least the delta value</td><td></td><td>0</td><td>1</td><td>1e-06</td></tr>
</table><h2>ml.mlp</h2>
<p>Multilayer Perceptron<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/MLP">http://www.nickgillian.com/wiki/pmwiki.php/GRT/MLP</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc when in classification mode or N output values followed by M input values when in regression mode, where N is determined by the num_outputs attribute</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>training_rate</td><td>update the weights at each step of the stochastic gradient descent</td><td></td><td>0</td><td>1</td><td>0.1</td></tr>
<tr><td>min_change</td><td>set the minimum change that must be achieved between two training epochs for the training to continue</td><td></td><td>0</td><td>1</td><td>1e-05</td></tr>
<tr><td>max_iterations</td><td>set the maximum number of training iterations</td><td></td><td>0</td><td>1000</td><td>100</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>num_outputs</td><td>set the number of neurons in the output layer</td><td></td><td>1</td><td>1000</td><td>1</td></tr>
<tr><td>num_hidden</td><td>set the number of neurons in the hidden layer</td><td></td><td>1</td><td>1000</td><td>2</td></tr>
<tr><td>min_epochs</td><td>setting the minimum number of training iterations</td><td></td><td>1</td><td>1000</td><td>10</td></tr>
<tr><td>max_epochs</td><td>setting the maximum number of training iterations</td><td></td><td>1</td><td>10000</td><td>100</td></tr>
<tr><td>momentum</td><td>set the momentum</td><td></td><td>0</td><td>1</td><td>0.5</td></tr>
<tr><td>gamma</td><td>set the gamma</td><td></td><td>0</td><td>10</td><td>2</td></tr>
<tr><td>input_activation_function</td><td>set the activation function for the input layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID</td><td>0, 1, 2</td><td></td><td></td><td>0</td></tr>
<tr><td>hidden_activation_function</td><td>set the activation function for the hidden layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID</td><td>0, 1, 2</td><td></td><td></td><td>0</td></tr>
<tr><td>output_activation_function</td><td>set the activation function for the output layer, 0:LINEAR, 1:SIGMOID, 2:BIPOLAR_SIGMOID</td><td>0, 1, 2</td><td></td><td></td><td>0</td></tr>
<tr><td>rand_training_iterations</td><td>set the number of random training iterations</td><td></td><td>0</td><td>1000</td><td>10</td></tr>
<tr><td>use_validation_set</td><td>set whether to use a validation training set</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>validation_set_size</td><td>set the size of the validation set</td><td></td><td>1</td><td>200</td><td>20</td></tr>
<tr><td>randomize_training_order</td><td>sets whether to randomize the training order</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
</table><h2>ml.peak</h2>
<p>Peak Detection<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/PeakDetection">http://www.nickgillian.com/wiki/pmwiki.php/GRT/PeakDetection</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>float</td><td>a floating point value to the inlet updates the current value of the peak detector</td><td></td><td>-inf</td><td>inf</td><td>1</td></tr>
<tr><td>reset</td><td>reset the peak detector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>search_window_size</td><td>set the search window size in values</td><td></td><td>1</td><td>500</td><td>5</td></tr>
<tr><td>timeout</td><td>(see GRT documentation)</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
</table><h2>ml.randforest</h2>
<p>Random Forests<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/RandomForests">http://www.nickgillian.com/wiki/pmwiki.php/GRT/RandomForests</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>num_random_splits</td><td>set the number of steps that will be used to search for the best spliting value for each node</td><td></td><td>1</td><td>1000</td><td>100</td></tr>
<tr><td>num_samples_per_node</td><td>set the minimum number of samples that are allowed per node</td><td></td><td>1</td><td>100</td><td>5</td></tr>
<tr><td>max_depth</td><td>sets the maximum depth of the tree, any node that reaches this depth will automatically become a leaf node</td><td></td><td>1</td><td>100</td><td>10</td></tr>
</table><h2>ml.softmax</h2>
<p>Softmax Classifier<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/Softmax">http://www.nickgillian.com/wiki/pmwiki.php/GRT/Softmax</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
</table><h2>ml.svm</h2>
<p>Support Vector Machine<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/SVM">http://www.nickgillian.com/wiki/pmwiki.php/GRT/SVM</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>add</td><td>list comprising a class id followed by n features; <class> <feature 1> <feature 2> etc</td><td></td><td></td><td></td><td></td></tr>
<tr><td>write</td><td>write training data and / or model, first argument gives path to write file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>read</td><td>read training data and / or model, first argument gives path to the read file</td><td></td><td></td><td></td><td></td></tr>
<tr><td>train</td><td>train the model based on vectors added with 'add'</td><td></td><td></td><td></td><td></td></tr>
<tr><td>clear</td><td>clear the stored training data and model</td><td></td><td></td><td></td><td></td></tr>
<tr><td>map</td><td>generate the output value(s) for the input feature vector</td><td></td><td></td><td></td><td></td></tr>
<tr><td>help</td><td>post usage statement to the console</td><td></td><td></td><td></td><td></td></tr>
<tr><td>scaling</td><td>sets whether values are automatically scaled</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>probs</td><td>determines whether probabilities are sent from the right outlet</td><td>0, 1</td><td></td><td></td><td>0</td></tr>
<tr><td>null_rejection_coeff</td><td>set a multiplier for the NULL-rejection threshold </td><td></td><td>0</td><td>1</td><td>0.9</td></tr>
<tr><td>null_rejection</td><td>toggle NULL rejection off or on, when 'on' classification results below the NULL-rejection threshold will be discarded</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
<tr><td>cross_validation</td><td>perform cross validation</td><td></td><td></td><td></td><td></td></tr>
<tr><td>type</td><td>set SVM type, 0:C-SVC (multi-class), 1:nu-SVC (multi-class), 2:one-class SVM, 3:epsilon-SVR (regression), 4:nu-SVR (regression)</td><td></td><td>0</td><td>4</td><td>0</td></tr>
<tr><td>kernel</td><td>set type of kernel function,0:linear (u'*v),1:polynomial (gamma*u'*v + coef0)^degree,2:radial basis function: exp(-gamma*|u-v|^2),3:sigmoid tanh(gamma*u'*v + coef0),4:precomputed kernel (kernel values in training_set_file)</td><td></td><td>0</td><td>4</td><td>0</td></tr>
<tr><td>degree</td><td>set degree in kernel function</td><td></td><td>0</td><td>20</td><td>3</td></tr>
<tr><td>gamma</td><td>set gamma in kernel function</td><td></td><td>0</td><td>1</td><td>0.5</td></tr>
<tr><td>coef0</td><td>coef0 in kernel function</td><td></td><td></td><td></td><td>0</td></tr>
<tr><td>cost</td><td>set the parameter C of C-SVC, epsilon-SVR, and nu-SVR</td><td></td><td></td><td></td><td>1</td></tr>
<tr><td>nu</td><td>set the parameter nu of nu-SVC, one-class SVM, and nu-SVR</td><td></td><td></td><td></td><td>0.5</td></tr>
<tr><td>epsilon</td><td>set the epsilon in loss function of epsilon-SVR</td><td></td><td></td><td></td><td>0.1</td></tr>
<tr><td>cachesize</td><td>set cache memory size in MB</td><td></td><td>8</td><td>1024</td><td>100</td></tr>
<tr><td>tolerance</td><td>set tolerance of termination criterion</td><td></td><td></td><td></td><td>0.001</td></tr>
<tr><td>shrinking</td><td>whether to use the shrinking heuristics</td><td>0, 1</td><td></td><td></td><td>1</td></tr>
</table><h2>ml.zerox</h2>
<p>Zero Crossings Detection<br/>URL: <a href="http://www.nickgillian.com/wiki/pmwiki.php/GRT/ZeroCrossingCounter">http://www.nickgillian.com/wiki/pmwiki.php/GRT/ZeroCrossingCounter</a></p>
<table>
<thead>
<tr><th>Message Selector</th><th>Description</th><th>Allowed Values</th><th>Minimum</th><th>Maximum</th><th>Default</th>
</thead></tr>
<tr><td>dead_zone_threshold</td><td>set the dead zone threshold</td><td></td><td>0</td><td>1</td><td>0.01</td></tr>
<tr><td>search_window_size</td><td>set the search window size in values</td><td></td><td>1</td><td>500</td><td>20</td></tr>
</table>
