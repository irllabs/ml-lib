# ml-lib

**ml-lib** is a library of machine learning externals for Max and Pure Data.
**ml-lib** is primarily based on the [Gesture Recognition Toolkit](http://www.nickgillian.com/software/grt) by Nick Gillian
**ml-lib** is designed to work on a variety of platforms including OS X, Windows, Linux, on Intel and ARM architectures.

## Installation

- Download the latest release from the [GitHub releases page](https://github.com/cmuartfab/ml-lib/releases)
- For Max, add `ml.mxo` and the ml-lib helpfiles to your Max Search Path
- For Pd, add  `ml.pd_*` to your Pd search path and add the "ml" library to your startup flags by opening up the application Preferences and adding "-lib ml" to the Startup Flags

##  Components

**ml-lib** includes the following machine learning algorithms:
- SVM: Support Vector Machines
- DTW: Dynamic Time Warping
- HMM: Hidden Markov Models
- LINREG: Linear Regression
- LOGREG: Logical Regression
- MLP: Multi-layer Perceptron Artificial Neural Networks (ANN)

**ml-lib** also includes generic data processors like peak detection.

See the help file for each component for further details about operation and usage.

## Credits

This software has been designed and developed by [Ali Momeni](http://alimomeni.net) and [Jamie Bullock](http://jamiebullock.com).
The [Gesture Recognition Toolkit](http://www.nickgillian.com/software/grt) is developed by Nick Gillian

**ml-lib** is supported by [Art Fab](http://cmu-artfab.org), the [College of Fine Arts](http://cfa.cmu.edu) and [The Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) at [Carnegie Mellon University](http://cmu.edu)


## License

ml-lib is copyright (c) 2014 Carnegie Mellon University.

ml-lib is distributed under the GNU General Public License version 2. A copy of this is available in the accompanying [LICENSE](LICENSE) file. See also [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

