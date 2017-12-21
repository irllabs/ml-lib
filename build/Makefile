

# TODO: this Makefile makes me question if the project directory structure is right.
# Perhaps we should be treating the core of ml-lib as a component shared amongst the individual externals
# The externals could then all go in one directory instead of spread across classification/ regression/ feature_extraction/ etc

GRT_SRC = $(shell find ../vendor/grt/GRT -name *.cpp)
GRT_OBJ = $(GRT_SRC:%.cpp=%.o)

ML_PATH =  ../sources
ML_CLASSIFICATION_PATH = $(ML_PATH)/classification
ML_REGRESSION_PATH = $(ML_PATH)/regression
ML_FEATURE_EXTRACTION_PATH = $(ML_PATH)/feature_extraction
ML_INSTALL_DIR ?= ./build

ML_BASE_SRC = 	ml_base.cpp \
		ml_formatter.cpp \
		ml_doc.cpp \
		ml_doc_populate.cpp \
		ml_ml.cpp

ML_CLASSIFICATION_SRC = $(ML_CLASSIFICATION_PATH)/ml_classification.cpp
ML_REGRESSION_SRC = $(ML_REGRESSION_PATH)/ml_regression.cpp
ML_FEATURE_EXTRACTION_SRC = $(ML_FEATURE_EXTRACTION_PATH)/ml_feature_extraction.cpp

ML_CLASSIFICATION_EXT = ml_adaboost.cpp \
			ml_dtw.cpp \
			ml_hmm.cpp \
			ml_randforest.cpp \
			ml_svm.cpp \
			ml_anbc.cpp \
			ml_dtree.cpp \
			ml_gmm.cpp \
			ml_knn.cpp \
			ml_mindist.cpp \
			ml_softmax.cpp

ML_REGRESSION_EXT = ml_linreg.cpp \
		    ml_logreg.cpp \
		    ml_mlp.cpp

ML_FEATURE_EXTRACTION_EXT = ml_minmax.cpp \
			    ml_peak.cpp \
			    ml_zerox.cpp


ML_CLASSIFICATION_EXT_OBJ = $(addprefix $(ML_CLASSIFICATION_PATH)/,$(ML_CLASSIFICATION_EXT:.cpp=.o))
ML_CLASSIFICATION_EXT_PD = $(ML_CLASSIFICATION_EXT_OBJ:%.o=%.pd_linux)
ML_REGRESSION_EXT_OBJ = $(addprefix $(ML_REGRESSION_PATH)/,$(ML_REGRESSION_EXT:.cpp=.o))
ML_REGRESSION_EXT_PD = $(ML_REGRESSION_EXT_OBJ:%.o=%.pd_linux)
ML_FEATURE_EXTRACTION_EXT_OBJ = $(addprefix $(ML_FEATURE_EXTRACTION_PATH)/,$(ML_FEATURE_EXTRACTION_EXT:.cpp=.o))
ML_FEATURE_EXTRACTION_EXT_PD = $(ML_FEATURE_EXTRACTION_EXT_OBJ:%.o=%.pd_linux)

ML_BASE_OBJ = $(addprefix $(ML_PATH)/, $(ML_BASE_SRC:.cpp=.o))
ML_CLASSIFICATION_OBJ = $(ML_CLASSIFICATION_SRC:%.cpp=%.o)
ML_REGRESSION_OBJ = $(ML_REGRESSION_SRC:%.cpp=%.o)
ML_FEATURE_EXTRACTION_OBJ = $(ML_FEATURE_EXTRACTION_SRC:%.cpp=%.o)

ML_LIB_OBJ = $(ML_BASE_OBJ) $(ML_CLASSIFICATION_OBJ) $(ML_REGRESSION_OBJ) $(ML_FEATURE_EXTRACTION_OBJ)
ML_LIB_EXT_OBJ = $(ML_CLASSIFICATION_EXT_OBJ) $(ML_REGRESSION_EXT_OBJ) $(ML_FEATURE_EXTRACTION_EXT_OBJ)
ML_LIB_EXT_PD = $(ML_CLASSIFICATION_EXT_PD) $(ML_REGRESSION_EXT_PD) $(ML_FEATURE_EXTRACTION_EXT_PD)
#ML_LIB_EXT_PD = $(subst ml_,ml.,$(ML_LIB_EXT_PD_))

VENDOR_BASE = ../vendor
FLEXT_INCLUDE = $(VENDOR_BASE)/flext/source
GRT_INCLUDE = $(VENDOR_BASE)/grt/GRT
PD_INCLUDE = $(VENDOR_BASE)/pd
ML_INCLUDE = $(ML_PATH)

-include Make.config 

ifeq ($(OS),Windows_NT)
    REMOVE_DEAD = 
    FPIC=
    FUNCTION_SECTIONS=
    FLEXT_INLINE=
    GRT_OBJ=
    MINGW_LDFLAGS=-Wl,--enable-auto-import $(PD_BIN)/pd.dll -Lwin32/lib
    POST_LDFLAGS= -lgrt -lflext-pd_s.0.6.0 
else
    UNAME_S := $(shell uname -s)
    FPIC=-fPIC
    MINGW_LDFLAGS=
    POST_LDFLAGS =
    FLEXT_INLINE=-DFLEXT_INLINE
    FUNCTION_SECTIONS=-fdata-sections -ffunction-sections 
    ifeq ($(UNAME_S),Linux)
        REMOVE_DEAD = -Wl,--gc-sections
    endif
    ifeq ($(UNAME_S),Darwin)
        REMOVE_DEAD = -dead_strip
    endif
endif


CPPFLAGS = -Wno-error $(FPIC) -O2 -std=c++11 $(FUNCTION_SECTIONS) -I$(FLEXT_INCLUDE) -I$(GRT_INCLUDE) -I$(PD_INCLUDE) -I$(ML_INCLUDE)
LDFLAGS = $(REMOVE_DEAD) -L$(PD_BIN) 

FLEXT_CPPFLAGS = $(FLEXT_INLINE) -DFLEXT_SYS=2 -DFLEXT_USE_CMEM -DFLEXT_ATTRIBUTES=1 -DFLEXT_USE_HEX_SETUP_NAME -DPD

.PHONY: install

all: $(ML_LIB_OBJ) $(ML_LIB_EXT_OBJ) $(ML_LIB_EXT_PD)

grt: $(GRT_OBJ)

ml_lib: CPPFLAGS+=$(FLEXT_CPPFLAGS)
$(ML_LIB_OBJ): CPPFLAGS+=$(FLEXT_CPPFLAGS)
$(ML_LIB_EXT_OBJ): CPPFLAGS+=$(FLEXT_CPPFLAGS)

ml_lib: $(ML_LIB_OBJ)

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@

%.pd_linux: %.o ml_lib grt
	$(CXX) -shared $(MINGW_LDFLAGS) $(GRT_OBJ) $(ML_BASE_OBJ) $(ML_CLASSIFICATION_OBJ) $(ML_REGRESSION_OBJ) $(ML_FEATURE_EXTRACTION_OBJ) $(LDFLAGS) $< $(POST_LDFLAGS) -o $@
	strip --strip-unneeded $@
	
install: $(ML_LIB_EXT_PD)
	install -d $(ML_INSTALL_DIR)
	install -m 644 $(ML_LIB_EXT_PD) $(ML_INSTALL_DIR)
grt-clean:
	rm -f $(GRT_OBJ)

pd-clean:
	rm -f $(ML_CLASSIFICATION_EXT_PD)
	rm -f $(ML_CLASSIFICATION_EXT_OBJ)

clean: grt-clean pd-clean
