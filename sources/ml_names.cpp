/*
 * ml-lib, a machine learning library for Max and Pure Data
 * Copyright (C) 2013 Carnegie Mellon University
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 2 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of  MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "ml_names.h"

#define ML_PREFIX "ml."

namespace ml_doc
{
    std::map<name, std::string> name_lookup =
    {
        {name::peak, ML_PREFIX "peak"},
        {name::minmax, ML_PREFIX "minmax"},
        {name::zerox, ML_PREFIX "zerox"},
        {name::svm, ML_PREFIX "svm"},
        {name::adaboost, ML_PREFIX "adaboost"},
        {name::anbc, ML_PREFIX "anbc"},
        {name::dtw, ML_PREFIX "dtw"},
        {name::hmm, ML_PREFIX "hmm"},
        {name::softmax, ML_PREFIX "softmax"},
        {name::randforest, ML_PREFIX "randforest"},
        {name::mindist, ML_PREFIX "mindist"},
        {name::lda, ML_PREFIX "lda"},
        {name::knn, ML_PREFIX "knn"},
        {name::gmm, ML_PREFIX "gmm"},
        {name::dtree, ML_PREFIX "dtree"},
        {name::linreg, ML_PREFIX "linreg"},
        {name::logreg, ML_PREFIX "logreg"},
        {name::mlp, ML_PREFIX "mlp"}
    };
}
