#ifndef Links_h
#define Links_h

#include "evalnode.h"


class Links : public EvalNode
{
private:
    unsigned int value;

    bool greater;
    bool less;
public:
    Links(const char*);
    ~Links();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);

};

#endif // Links_h
