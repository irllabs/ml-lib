## All platforms
- Download and install [Flext](http://grrrr.org/research/software/flext/)

## Mac OS X
- Open the ml.xcodeproj
- Type cmd-B to build

## Linux
- Download GRT `svn checkout http://gesture-recognition-toolkit.googlecode.com/svn/ gesture-recognition-toolkit-read-only`
- Navigate to GRTBuild and type "make"
- Move the resulting "libgrt.a" to /usr/local/lib
- `cd` to the ml-lib/build/flext directory
- Ensure that the `FLEXT\_ROOT` variable in the build.config file is set to the *relative* path of your Flext source folder
- Run `build-flext.sh`
- This will create "pd\_linux" files in pd-linux/release-single


