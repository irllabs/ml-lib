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

#include "ml_setup.h"

extern "C" {

#ifdef BUILD_AS_LIBRARY
    void ml_setup();
#else
    void ml0x2esvm_setup();
    void ml0x2eadaboost_setup();
    void ml0x2edtw_setup();
    void ml0x2ehmmc_setup();
    void ml0x2eann_setup();
    void ml0x2elinreg_setup();
    void ml0x2elogreg_setup();
    void ml0x2epeak_setup();
    void ml0x2eminmax_setup();
    void ml0x2eanbc_setup();
    void ml0x2esoftmax_setup();
    void ml0x2erandforest_setup();
    void ml0x2emindist_setup();
    void ml0x2eknn_setup();
    void ml0x2egmm_setup();
    void ml0x2edtree_setup();
    void ml0x2ezerox_setup();
    
#endif // #ifdef BUILD_AS_LIBRARY
    
} // extern "C"

void ml::setup_all()
{
#ifdef BUILD_AS_LIBRARY
    ml_setup();
#else
    
    ml0x2esvm_setup();
    ml0x2eadaboost_setup();
    ml0x2edtw_setup();
    ml0x2ehmmc_setup();
    ml0x2eann_setup();
    ml0x2elinreg_setup();
    ml0x2elogreg_setup();
    ml0x2epeak_setup();
    ml0x2eminmax_setup();
    ml0x2eanbc_setup();
    ml0x2esoftmax_setup();
    ml0x2erandforest_setup();
    ml0x2emindist_setup();
    ml0x2eknn_setup();
    ml0x2egmm_setup();
    ml0x2edtree_setup();
    ml0x2ezerox_setup();
    
#endif // #ifdef BUILD_AS_LIBRARY
}

