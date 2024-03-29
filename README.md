# ml-lib

[![Build Status](https://travis-ci.org/irllabs/ml-lib.svg?branch=develop)](https://travis-ci.org/irllabs/ml-lib)

**ml-lib** is a library of machine learning externals for Max and Pure Data.
**ml-lib** is primarily based on the [Gesture Recognition Toolkit](https://github.com/nickgillian/grt) by Nick Gillian
**ml-lib** is designed to work on a variety of platforms including OS X, Windows, Linux, on Intel and ARM architectures.

The goal of ml-lib is to provide a simple, consistent interface to a wide range of machine learning techniques in Max and Pure Data. The canonical NIME 2015 paper on ml-lib can be found [here](https://nime2015.lsu.edu/proceedings/201/0201-paper.pdf).

Full class documentation can be found [here](http://irllabs.github.io/ml-lib/).

## Bug Reports and Discussion
Please use the [GitHub Issue Tracker](https://github.com/cmuartfab/ml-lib/issues) for all bug reports and feature requests.

<!-- Please use the [ArtFab Discussion form (under Software > ml.lib)](http://discuss.artfab.art.cmu.edu/c/software/ml-lib) for all general conversations, questions, discussions and project sharing.  -->

## Development Status

The library has currently been tested on Mac OS X with Max 7 and 8 and on Mac OS X and Linux on i386 and armv6 architectures using Pure Data. 

Bugs should be reported via the [issues page](https://github.com/cmuartfab/ml-lib/issues).

## Installation

- For Max, install by searching for ml.lib in the Max Package Manager that can be found under File -> Show Package Manager.
- For Pd, install by searching for ml.lib in the Deken externals manager that can be found under Help -> Find Externals. Once installed, add to your Pd search path the exact path to the ml.lib folder inside Pd/externals.

## Compiling from source

Instructions for compiling ml-lib from source can be found [here](BUILD.md)

##  Library structure

**ml-lib** objects follow the naming convention `ml.*` where “*” is an abbreviated form of the algorithm implemented by the object. 

A full list of all objects and their parameters can be found [here](http://irllabs.github.io/ml-lib/).

For more detailed descriptions of the underlying algorithms, see links below.

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

- `ml.minmax`: output a vector of minima and maxima locations (peaks) from an input vector

### Classification

- `ml.adaboost`:  [Adaptive Boosting](http://nickgillian.com/grt/index.html)
- `ml.dtw`: [Dynamic Time Warping](http://nickgillian.com/grt/index.html)
- `ml.gmm`: [Gaussian Mixture Model](http://nickgillian.com/grt/index.html)
- `ml.hmmc`: [Hidden Markov Models](http://nickgillian.com/grt/index.html)
- `ml.knn`: [k’s Nearest Neighbour](http://nickgillian.com/grt/index.html)
- `ml.mindist`:[Minimum Distance](http://nickgillian.com/grt/index.html)
- `ml.randforest`: [Random Decision Forest](http://nickgillian.com/grt/index.html)
- `ml.softmax`: [Softmax](http://nickgillian.com/grt/index.html)
- `ml.svm`: [Support Vector Machines](http://nickgillian.com/grt/index.html)

### Regression

- `ml.linreg`: [Linear Regression](http://nickgillian.com/grt/index.html)
- `ml.logreg`: [Logistic Regression](http://nickgillian.com/grt/index.html)
- `ml.ann`: [Multi-layer Perceptron](http://nickgillian.com/grt/index.html)
- `ml.mulreg`: Multiple Regression

See the help file for each component for further details about operation and usage.

## Credits

This software has been designed and developed by [Ali Momeni](http://alimomeni.net) and [Jamie Bullock](http://jamiebullock.com).
The [Gesture Recognition Toolkit](http://nickgillian.com/grt/index.html is developed by Nick Gillian

**ml-lib** is supported by [Art Fab](http://cmu-artfab.org), the [College of Fine Arts](http://cfa.cmu.edu) and [The Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) at [Carnegie Mellon University](http://cmu.edu)

Special thanks to [Niccolò Granieri](http://niccologranieri.com) for testing and assistance.

## License

ml-lib is copyright (c) 2014 Carnegie Mellon University.

ml-lib is distributed under the GNU General Public License version 2. A copy of this is available in the accompanying [LICENSE](LICENSE) file. See also [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

