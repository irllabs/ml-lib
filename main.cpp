#include <flext.h>

class svm
    : public flext_base
{
    FLEXT_HEADER_S(svm,flext_base,setup);
    
public:
    svm(int argc,t_atom *argv)
    {
        post("creating svm object");

        // initialization stuff...
    }
    
    ~svm()
    {
        post("destroying svm object");

        // destruction stuff...
    }

protected:
    static void setup(t_classid c)
    {
        post("setting up svm class");

        // add methods here...
        FLEXT_CADDBANG(c,0,m_bang);
    }

    void m_bang()
    {
        post("BANG!");
    }

    FLEXT_CALLBACK(m_bang)
};

FLEXT_NEW_V("svm",svm)
