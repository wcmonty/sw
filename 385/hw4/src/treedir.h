#ifndef TreeDir_h
#define TreeDir_h

#include "evalnode.h"

class TreeDir : public EvalNode
{
private:
    void printDepth(int);
public:
    TreeDir();
    ~TreeDir();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);

};

#endif // TreeDir_h
