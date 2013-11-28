# ml-lib

**ml-lib** is a library of machine learning externals for Max and Pure Data.

## Installation

- Download the latest release from the [GitHub releases page](https://github.com/cmuartfab/ml-lib/releases)
- For Max, drag the file `ml.mxo` to your `max-startup` folder (usually `MaxX/Cycling '74/max-startup`, where X is your Max version number) and drag the help files `*.maxhelp` to your `max-help` folder
- For Pd, drag the file `ml.pd_*` to your Pd search path (on Mac: `Pd.app/Contents/Resources/extra, on Linux: /usr/lib/pd/extra) and add the "ml" library to your startup flags by opening up the application Preferences and adding "-lib ml" to the Startup Flags

##  Components

**ml-lib** is comprised of the folling components:

- **ml.libsvm**: a wrapper around the [libsvm](http://www.csie.ntu.edu.tw/~cjlin/libsvm/) library for Support Vector Machines

See the help file for each component for further details about operation and usage.

## Credits

This software has been designed and developed by [Ali Momeni](http://alimomeni.net) and [Jamie Bullock](http://jamiebullock.com).

Supported by [Art Fab](http://cmu-artfab.org) @ Carnegie Mellon University 


## License

ml-lib is copyright (c) 2013 Carnegie Mellon University.

ml-lib is distributed under the GNU General Public License version 2. A copy of this is available in the accompanying [LICENSE](LICENSE) file. See also [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

