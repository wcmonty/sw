/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include "print.h"


Print::~Print()
{

}

void Print::printNode()
{
}

bool Print::eval(const char *filename, struct stat*, int)
{
    cout << filename << endl;
    return true;
}

