#ifndef Print_h
#define Print_h

#include <string>
#include "evalnode.h"


class Print : public EvalNode
{

public:
    ~Print();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // Print_h
