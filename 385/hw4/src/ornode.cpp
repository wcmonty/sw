/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <iostream>
#include "ornode.h"

OrNode::~OrNode()
{
    delete left;
    delete right;
}

void OrNode::printNode()
{
    if (left != NULL) left->printNode();
    if (right != NULL) right->printNode();
}

bool OrNode::eval(const char *filename, struct stat *buffer, int depth)
{
    return left->eval(filename, buffer, depth) || right->eval(filename, buffer, depth);
}
