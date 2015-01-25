/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <iostream>
#include "notnode.h"

NotNode::~NotNode()
{
    delete (left);
}

bool NotNode::eval(const char* filename, struct stat *buffer, int depth)
{
    bool evaluation = left->eval(filename, buffer, depth);
    return !evaluation;
}

void NotNode::printNode()
{
    if (left != NULL) left->printNode();
}
