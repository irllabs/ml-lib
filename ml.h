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

#ifndef ml_libsvm_ml_h
#define ml_libsvm_ml_h

#include <flext.h>

#define ML_VERSION "0.5.0"
#define ML_NAME "ml-lib"
#define ML_POST_SEP "---------------------------------------"


namespace ml
{

static const t_symbol *s_train;
static const t_symbol *s_cleared;
static const t_symbol *s_normalized;
static const t_symbol *s_loaded;
static const t_symbol *s_saved;
    
class ml_base:
public flext_base
{
    FLEXT_HEADER_S(ml_base, flext_base, setup);
    
public:
    ml_base();
    
protected:
    // Methods
    void add(int argc, const t_atom *argv);
    void save(const t_symbol *path) const;
    void load(const t_symbol *path);
    void normalize();
    void cross_validation();
    void train();
    void clear();
    void classify(int argc, const t_atom *argv);
    void usage();
        
private:
    static void setup(t_classid c);
    // Method wrappers
    FLEXT_CALLBACK_V(add);
    FLEXT_CALLBACK_S(save);
    FLEXT_CALLBACK_S(load);
    FLEXT_CALLBACK(normalize);
    FLEXT_CALLBACK(train);
    FLEXT_CALLBACK(clear);
    FLEXT_CALLBACK_V(classify);
    FLEXT_CALLBACK(usage);

};
    
} // namespace ml


#endif
