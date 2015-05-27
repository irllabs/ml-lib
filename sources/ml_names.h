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

#ifndef ml_names_h__
#define ml_names_h__

#include <string>
#include <map>

namespace ml_doc {

    enum class name 
    {
        peak,
        minmax,
        zerox,
        svm,
        adaboost,
        anbc,
        dtw,
        hmm,
        softmax,
        randforest,
        mindist,
        lda,
        knn,
        gmm,
        dtree,
        linreg,
        logreg,
        mlp
    };

    extern std::map<name, std::string> name_lookup;

}

#endif /* defined(ml_names_h__) */
