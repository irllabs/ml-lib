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

#include "ml_base.h"

#include "GRT.h"

#include <vector>

namespace ml
{
    const std::string ml_object_name = "ml.minmax";
    const t_symbol *s_min  = flext::MakeSymbol("min");
    const t_symbol *s_max  = flext::MakeSymbol("max");
    
    class ml_minmax : ml_base
    {
        FLEXT_HEADER_S(ml_minmax, ml_base, setup);
        
    public:
        ml_minmax()
        : delta(1e-6)
        {
            post("Peak / valley detection based on Eli Billauer's peakdet");
            FLEXT_ADDMETHOD(0, input);
            help.append_attributes(attribute_help);
        }
        
    protected:
        
        static void setup(t_classid c)
        {
            
            FLEXT_CADDATTR_SET(c, "delta", set_delta);
            FLEXT_CADDATTR_GET(c, "delta", get_delta);
                        
            DefineHelp(c, ml_object_name.c_str());
        }
        
        void input(int argc, t_atom *argv);
        
        // Flext attribute setters
        void set_delta(float delta);
        
        // Flext attribute getters
        void get_delta(float &delta) const;
        
        
    private:
        
        // Flext method wrappers
        FLEXT_CALLBACK_V(input);
        
        // Flext attribute wrappers
        FLEXT_CALLVAR_F(get_delta, set_delta);
        
        // Virtual method override
        virtual const std::string get_object_name(void) const { return ml_object_name; };
        
        double delta;
        
        // Utility methods
        void detect_minmax(
                           const std::vector<double> &data,
                           std::vector<uint32_t> &maxima_locations,
                           std::vector<uint32_t> &minima_locations
                           );
        
        void populate_locations(
                                const std::vector<double> &data,
                                const std::vector<uint32_t> &locations,
                                AtomList &atomList
                                );
        
        static const std::string attribute_help;
    };
    
    void ml_minmax::set_delta(float delta)
    {
        if (delta <= 0)
        {
            error("minmax delta must be positive and non-zero");
            return;
        }
        
        this->delta = delta;
    }
    
    // Flext attribute getters
    void ml_minmax::get_delta(float &delta) const
    {
        delta = this->delta;
    }
    
    void ml_minmax::input(int argc, t_atom *argv)
    {
        AtomList maxima;
        AtomList minima;
        t_atom min_a;
        t_atom max_a;
        std::vector<double> data;
        std::vector<uint32_t> maxima_locations;
        std::vector<uint32_t> minima_locations;
        
        SetSymbol(min_a, s_min);
        SetSymbol(max_a, s_max);
        
        maxima.Append(max_a);
        minima.Append(min_a);
        
        for (uint32_t index = 0; index < (unsigned)argc; ++index)
        {
            double value = GetAFloat(argv[index]);
            data.push_back(value);
        }
        
        detect_minmax(data, maxima_locations, minima_locations);
        populate_locations(data, minima_locations, minima);
        populate_locations(data, maxima_locations, maxima);
        
        ToOutList(0, minima);
        ToOutList(0, maxima);
    }
    
    void ml_minmax::detect_minmax(
                                  const std::vector<double> &data,
                                  std::vector<uint32_t> &maxima_locations,
                                  std::vector<uint32_t> &minima_locations
                                  )
    {
        double  max = DBL_MIN;
        double  min = DBL_MAX;
        uint32_t max_pos = 0;
        uint32_t min_pos = 0;
        bool    is_detecting_max = false;
        
        if (!maxima_locations.empty())
        {
            std::cout << "error: maxima_locations was non-empty" << std::endl;
            maxima_locations.clear();
        }
        
        if (!minima_locations.empty())
        {
            std::cout << "error: minima_locations was non-empty" << std::endl;
            minima_locations.clear();
        }
        
        // Use int64_t because the loop body decrements i
        for(int64_t i = 1; i < data.size(); ++i)
        {
            if(data[i] > max)
            {
                max_pos = i;
                max = data[i];
            }
            if(data[i] < min)
            {
                min_pos = i;
                min = data[i];
            }
            
            if(is_detecting_max &&
               data[i] < max - this->delta)
            {
                maxima_locations.push_back(max_pos);
                
                is_detecting_max = false;
                
                i = max_pos - 1;
                
                min = data[max_pos];
                min_pos = max_pos;
            }
            else if((!is_detecting_max) &&
                    data[i] > min + this->delta)
            {
                minima_locations.push_back(min_pos);
                
                is_detecting_max = true;
                
                i = min_pos - 1;
                
                max = data[min_pos];
                max_pos = min_pos;
            }
        }
    }
    
    void ml_minmax::populate_locations(
                            const std::vector<double> &data,
                            const std::vector<uint32_t> &locations,
                            AtomList &atomList
                            )
    {
        for (uint32_t index = 0; index < locations.size(); ++index)
        {
            t_atom key_a;
            t_atom value_a;
            
            uint32_t key = (double)locations[index];
            double value = data[key];
            
            SetInt(key_a, key);
            SetFloat(value_a, value);
            
            atomList.Append(key_a);
            atomList.Append(value_a);
        }
    }
    
    const std::string ml_minmax::attribute_help = "delta: a float setting the minmax delta. Input values will be considered to be peaks if they are greater than the previous and next value by at least the delta value. (default: 1e-6)";
    
    typedef class ml_minmax ml0x2eminmax;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(ml_object_name.c_str(), ml_minmax);
#else
    FLEXT_NEW(ml_object_name.c_str(), ml0x2eminmax);
#endif
    
    
} //namespace ml

