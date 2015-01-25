/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <iostream>
#include "andnode.h"

AndNode::~AndNode()
{
    delete (left);
    delete (right);
}


bool AndNode::eval(const char* filename, struct stat *buffer, int depth)
{
    return left->eval(filename, buffer, depth) &&
            right->eval(filename, buffer, depth);
}

void AndNode::printNode()
{
    if (left != NULL) left->printNode();
    if (right != NULL) right->printNode();
}

