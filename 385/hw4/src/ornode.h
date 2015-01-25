#ifndef OrNode_h
#define OrNode_h

#include "groupnode.h"

using namespace std;

class OrNode : public GroupNode
{

 public:
    OrNode (EvalNode *left, EvalNode *right) : GroupNode(left, right){};
    ~OrNode();
    virtual bool eval(const char*, struct stat*, int);
    void printNode();
};

#endif // OrNode_h
