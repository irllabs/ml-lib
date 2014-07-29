source build.config
for file in *.txt
do
    $FLEXT_ROOT/build.sh pd gcc $1 PKGINFO=$file
done
