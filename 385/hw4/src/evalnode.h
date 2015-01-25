#ifndef EvalNode_h
#define EvalNode_h
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <iostream>
#include <limits.h>
#include <unistd.h>

using namespace std;

class EvalNode
{
 public:
    virtual ~EvalNode();
    virtual void printNode() = 0;
    virtual bool eval(const char *, struct stat *, int)  = 0;
};

#endif // EvalNode_h
