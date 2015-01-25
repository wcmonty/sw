#ifndef GroupNode_h
#define GroupNode_h

#include "evalnode.h"

using namespace std;

class GroupNode : public EvalNode
{
protected:
    EvalNode *left;
    EvalNode *right;

public:
    GroupNode (EvalNode*, EvalNode*);
};

#endif // GroupNode_h
