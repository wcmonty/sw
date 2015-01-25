/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <stdio.h>

#include "uid.h"


UID::UID(char *uid)
{
    this->uid = atoi(uid);
}

UID::~UID()
{

}

void UID::printNode()
{
}

bool UID::eval(const char *, struct stat *buffer, int)
{

    return (this->uid == buffer->st_uid);
}
