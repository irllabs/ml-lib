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

namespace ml
{
    const std::string object_name = ML_NAME_PREFIX "peak";
    
    class peak : base
    {
        FLEXT_HEADER_S(peak, base, setup);
        
    public:
        peak()
        {
            post("Peak Detection based on the GRT library version " + GRT::GRTBase::getGRTRevison());
            FLEXT_ADDMETHOD(0, update);
            FLEXT_ADDMETHOD(0, peaks);
        }
        
    protected:
        static void setup(t_classid c)
        {
            FLEXT_CADDATTR_SET(c, "search_window_size", set_search_window_size);
            
            FLEXT_CADDMETHOD_(c, 0, "reset", reset);
            FLEXT_CADDMETHOD_(c, 0, "timeout", timeout);
            
            DefineHelp(c, object_name.c_str());
        }
        
        // Methods
        void update(float f);
        void peaks(int argc, t_atom *argv);
        void reset();
        void timeout();
        void usage();
  
        // Flext attribute setters
        void set_search_window_size(int search_window_size);

        
        // Flext attribute getters
        
    private:
        
        // Flext method wrappers
        FLEXT_CALLBACK_F(update);
        FLEXT_CALLBACK_V(peaks);
        FLEXT_CALLBACK(reset);
        FLEXT_CALLBACK(timeout);
        
        // Flext attribute wrappers
        FLEXT_CALLSET_I(set_search_window_size);

        // Virtual method override
        virtual const std::string get_object_name(void) const { return object_name; };
        
        GRT::PeakDetection peakDetection;
    };
    
    void peak::set_search_window_size(int search_window_size)
    {
        bool success = peakDetection.setSearchWindowSize(search_window_size);

        if (!success)
        {
            error("unable to set search window size");
        }
    }

    
    // Flext attribute getters
    
    // Methods
    void peak::peaks(int argc, t_atom *argv)
    {
        AtomList peaks;
        bool peakFound = false;
        
        
        // TODO: update this when we the GRT code is complete
        error("peak detection currently not fully implemented in GRT");
        return;
        
        
        for (uint32_t index = 0; index < (unsigned)argc; ++index)
        {
            float value = GetAFloat(argv[index]);
        
            peakFound = peakDetection.update(value);

            if (peakFound)
            {
                t_atom location_a;
                t_atom value_a;
                
                uint32_t rel_index = 0; // peakDetection.getPeakLocation();
                uint32_t abs_index = index - rel_index;
                
                if (rel_index > index)
                {
                    error("peak reported is in previous block");
                    continue;
                }
                
                SetInt(location_a, abs_index);
                SetFloat(value_a, GetAFloat(argv[abs_index]));
                
                peaks.Append(location_a);
                peaks.Append(value_a);
            }
        }
        
        if (peakFound)
        {
            ToOutList(0, peaks);
        }
    }
    
    void peak::update(float f)
    {
        // TODO: update this when we the GRT code is complete
//        error("peak detection currently not fully implemented in GRT");
//        return;
//        
        
        bool peakFound = peakDetection.update(f);
//        float derivative = peakDetection.getDerivative();

//        ToOutFloat(1, derivative);
        
        if (peakFound)
        {
            ToOutBang(0);
        }
    }
    
    void peak::reset()
    {
        bool success = peakDetection.reset();
        
        if (!success)
        {
            error("unable to reset peak detector");
        }
    }
    
    void peak::timeout()
    {
        // TODO: update this when we the GRT code is complete
        error("peak detection currently not fully implemented in GRT");
        return;

        
        bool success = true;// peakDetection.triggerGateTimeout();
        
        if (!success)
        {
            error("unable to trigger gate timeout");
        }
    }

       typedef class peak ml0x2epeak;
    
#ifdef BUILD_AS_LIBRARY
    FLEXT_LIB(object_name.c_str(), peak);
#else
    FLEXT_NEW(object_name.c_str(), ml0x2epeak);
#endif
    
} //namespace ml

