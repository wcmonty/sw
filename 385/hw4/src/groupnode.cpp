/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <iostream>
#include "groupnode.h"


GroupNode::GroupNode(EvalNode *left, EvalNode *right)
{
    this->left = left;
    this->right = right;
}

