
# Build Instructions

## Mac OS X
- Open build/macosx/ml.xcworkspace
- Select the scheme "BUILD ALL MAX" or "BUILD ALL PD"
- Change the build system to "Legacy Build System" from File → Workspace Settings... → Build System
- Type cmd-B to build

## Linux
- Change directory to the "build" directory
- Type `make install`

## Windows
- Open build/win32/ml.sln
- In the menu bar choose "Build" then "Build Solution"

# Building documentation

The help files, html documentation, and Max XML files for ml.lib are all autogenerated

## Mac OS X
- Open ml-doc/build/ml-doc.xcodeproj
- Type cmd-R to run

To view the built documentation, in Xcode select "Show Build Folder in Finder" from the Products menu
From there you can navigate to Products/Debug and find the ml-doc executable


