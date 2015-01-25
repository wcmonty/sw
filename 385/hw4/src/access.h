#ifndef ACCESS_H
#define ACCESS_H

#include"evalnode.h"

class Access : public EvalNode
{
private:
    enum TYPE {READ, WRITE, EXECUTE, ANY};
    int mode;
public:
    Access(const char *);
    ~Access();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // ACCESS_H
