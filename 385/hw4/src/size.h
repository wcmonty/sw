#ifndef SIZE_H
#define SIZE_H

#include "evalnode.h"

class Size : public EvalNode
{
private:
    int value;
    int sizeDivider;

    bool greater;
    bool less;
public:
    Size(const char *);
    ~Size();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // SIZE_H
