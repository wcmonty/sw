#ifndef NotNode_h
#define NotNode_h

#include "groupnode.h"

using namespace std;

class NotNode : public GroupNode
{
public:
    NotNode (EvalNode *left) : GroupNode(left, NULL){}
    ~NotNode();
    virtual bool eval(const char*, struct stat*, int);
    void printNode();

};

#endif // NotNode_h
