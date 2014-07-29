#!/usr/bin/python

import os

print "generating package files..."

SOURCES_ROOT = "../../sources"
BUILD_ROOT = "../build/flext"
CLASSIFICATION_ROOT = SOURCES_ROOT + "/classification"
REGRESSION_ROOT = SOURCES_ROOT + "/regression"
FEATURE_EXTRACTION_ROOT = SOURCES_ROOT + "/feature_extraction"
PACKAGE_TEMPLATE = "package.template.txt"
COMMON_SOURCES = "%s/ml_ml.cpp %s/ml_base.cpp " % (SOURCES_ROOT, SOURCES_ROOT)
CLASSIFICATION_SOURCES = COMMON_SOURCES + "%s/ml_classification.cpp " % CLASSIFICATION_ROOT
REGRESSION_SOURCES = COMMON_SOURCES + "%s/ml_regression.cpp " % REGRESSION_ROOT
NAME_PREFIX = "ml."
NAME_MARKER = "%NAME%"
SOURCES_MARKER = "%SOURCES%"

classification_externals = (
        "adaboost",
        "dtree",
        "gmm",
        "knn",
        "mindist",
        "softmax",
        "anbc",
        "dtw",
        "hmm",
        "lda",
        "randforest",
        "svm"
        )

regression_externals = (
        "linreg",
        "logreg",
        "mlp"
  )

feature_extraction_externals = (
        "minmax",
        "peak"
        )

all_externals = classification_externals + regression_externals + feature_extraction_externals

template_file = open(PACKAGE_TEMPLATE, "r")
template = template_file.read()
template_file.close()

for external in all_externals:
    external_file = "ml_" + external + ".cpp"
    name = NAME_PREFIX + external

    if external in classification_externals:
        sources = CLASSIFICATION_SOURCES
        path_prefix = CLASSIFICATION_ROOT
    elif external in regression_externals:
        sources = REGRESSION_SOURCES
        path_prefix = REGRESSION_ROOT
    elif external in feature_extraction_externals:
        sources = COMMON_SOURCES
        path_prefix = FEATURE_EXTRACTION_ROOT
    else:
        print "error processing external: %s"
        exit(os.EX_SOFTWARE)

    external_path = path_prefix + "/" + external_file

    sources += external_path

    package = template.replace(NAME_MARKER, name)
    package = package.replace(SOURCES_MARKER, sources)

    package_file = open(BUILD_ROOT + "/" + "package." + external + ".txt", "w")
    package_file.write(package)
    package_file.close()



print "done!"





