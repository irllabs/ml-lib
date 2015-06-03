# ml-lib

**ml-lib** is a library of machine learning externals for Max and Pure Data.
**ml-lib** is primarily based on the [Gesture Recognition Toolkit](http://www.nickgillian.com/software/grt) by Nick Gillian
**ml-lib** is designed to work on a variety of platforms including OS X, Windows, Linux, on Intel and ARM architectures.

## Bug Reports and Discussion
Please use the [GitHub Issue](https://github.com/cmuartfab/ml-lib/issues) Tracker for all bug reports
Please use the [ArtFab Discussion form (under Software > ml.lib)](http://discuss.artfab.art.cmu.edu/c/software/ml-lib) for all general conversations, questions, discussions and project sharing.  

## Development Status

**ML-LIB IS CURRENTLY IN OPEN BETA** 

This means the software is considered feature complete, but has not been extensively tested and should not be used in production environments.

The library has currently been tested on Mac OS X with Max 5.x and 6.x and on Mac OS X and Linux on i386 and armv6 architectures using Pure Data. Issues have been reported with Max 7 and this has been investigated.

Bugs should be reported via the [issues page](https://github.com/cmuartfab/ml-lib/issues).

## Installation

- Download the latest release from the [GitHub releases page](https://github.com/cmuartfab/ml-lib/releases)
- For Max, add the `ml.*.mxo` externals and the ml-lib helpfiles to your Max Search Path
- For Pd, add  `ml.*.pd_*` to your Pd search path and add the "ml" library to your startup flags by opening up the application Preferences and adding "-lib ml" to the Startup Flags

##  Library structure

**ml-lib** objects follow the naming convention `ml.*` where “*” is an abbreviated form of the algorithm implemented by the object. 

Objects fall into one of five categories:

- **Pre-processing**: pre-process data prior to used as input to a classification or regression object
- **Post-processing**: post-process data after being output from a classification or regression object
- **Feature extraction**: extract “features” from control data. [Feature vectors](http://en.wikipedia.org/wiki/Feature_vector) can be used as input to classification or regression objects
- **Classification**: take feature vectors as input, and output a value representing the class of the input. For example an object detecting hand position might output 0 for left, 1 for right, 2 for top and 3 for bottom. 
- **Regression**: perform an M x N mapping between an input vector and an output vector with one or more dimensions. For example an object may map `x` and `y` dimensions of hand position to a single dimension representing the distance from origin (0, 0).

## Object list

### Pre-processing

*No objects currently implemented*

### Post-processing

*No objects currently implemented*

### Feature extraction

- `ml.peak`: output detected peaks from a continues stream of input values
- `ml.minmax`: output a vector of minima and maxima locations (peaks) from an input vector

### Classification

- `ml.adaboost`:  [Adaptive Boosting](http://www.nickgillian.com/wiki/pmwiki.php?n=GRT.AdaBoost)
- `ml.dtw`: [Dynamic Time Warping](http://www.nickgillian.com/wiki/pmwiki.php?n=GRT.DTW)
- `ml.gmm`: [Gaussian Mixture Model](http://www.nickgillian.com/wiki/pmwiki.php/GRT/GMMClassifier)
- `ml.hmm`: [Hidden Markov Models](http://www.nickgillian.com/wiki/pmwiki.php?n=GRT.HMM)
- `ml.knn`: [k’s Nearest Neighbour](http://www.nickgillian.com/wiki/pmwiki.php/GRT/KNN)
- `ml.mindist`:[Minimum Distance](http://www.nickgillian.com/wiki/pmwiki.php/GRT/MinDist)
- `ml.randforest`: [Random Decision Forest](http://www.nickgillian.com/wiki/pmwiki.php/GRT/RandomForests)
- `ml.softmax`: [Softmax](http://www.nickgillian.com/wiki/pmwiki.php/GRT/Softmax)
- `ml.svm`: [Support Vector Machines](http://www.nickgillian.com/wiki/pmwiki.php?n=GRT.SVM)

### Regression

- `ml.linreg`: [Linear Regression](http://www.nickgillian.com/wiki/pmwiki.php/GRT/LinearRegression)
- `ml.logreg`: [Logistic Regression](http://www.nickgillian.com/wiki/pmwiki.php/GRT/LogisticRegression)
- `ml.mlp`: [Multi-layer Perceptron](http://www.nickgillian.com/wiki/pmwiki.php/GRT/MLP) Artificial Neural Networks (ANN)

See the help file for each component for further details about operation and usage.

## Credits

This software has been designed and developed by [Ali Momeni](http://alimomeni.net) and [Jamie Bullock](http://jamiebullock.com).
The [Gesture Recognition Toolkit](http://www.nickgillian.com/software/grt) is developed by Nick Gillian

**ml-lib** is supported by [Art Fab](http://cmu-artfab.org), the [College of Fine Arts](http://cfa.cmu.edu) and [The Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) at [Carnegie Mellon University](http://cmu.edu)


## License

ml-lib is copyright (c) 2014 Carnegie Mellon University.

ml-lib is distributed under the GNU General Public License version 2. A copy of this is available in the accompanying [LICENSE](LICENSE) file. See also [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

