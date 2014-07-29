for file in *.txt
do
    ../../../flext/build.sh pd gcc $1 PKGINFO=$file
done
