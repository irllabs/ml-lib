#! /bin/sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# ACTIONS
# These are implemented as functions, and just called by the
# short MAIN section below

buildAction () {
    echo "Building..."

    # You might want to call your clean action first, if it makes sense.
    cleanAction

    # Now do build steps.

}

cleanAction () {
    echo "Cleaning..."

    # Do your clean steps here.
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# MAIN

echo "Running with ACTION=${ACTION}"

case $ACTION in
    # NOTE: for some reason, it gets set to "" rather than "build" when
    # doing a build.
    "")
        buildAction
        ;;

    "clean")
        cleanAction
        ;;
esac

exit 0
