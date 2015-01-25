#ifndef AndNode_h
#define AndNode_h

#include "groupnode.h"
using namespace std;

class AndNode : public GroupNode
{

public:
    AndNode (EvalNode *left, EvalNode *right) : GroupNode(left, right){}
    ~AndNode();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // AndNode_h
