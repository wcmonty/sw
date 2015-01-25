#ifndef Sparse_h
#define Sparse_h

#include "evalnode.h"

static const int BLOCKSIZE = 4096;

class Sparse : public EvalNode
{

public:
    ~Sparse();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // Sparse_h
