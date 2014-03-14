## All platforms
- Download and install [Flext](http://grrrr.org/research/software/flext/)

## Mac OS X
- Open the ml.xcodeproj
- Type cmd-B to build

## Linux
- Download GRT `svn checkout http://gesture-recognition-toolkit.googlecode.com/svn/ gesture-recognition-toolkit-read-only`
- Navigate to GRTBuild and type "make"
- Move the resulting "libgrt.a" to /usr/local/lib
- `cd` to the ml-lib directory
- Invoke the Flext build system with `path/to/flext/build.sh pd gcc`
- This should create a ml.pd\_linux in  pd-linux/release-single

