/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <stdio.h>

#include "gid.h"


GID::GID(char *gid)
{
    this->gid = atoi(gid);
}

GID::~GID()
{

}

void GID::printNode()
{
}

bool GID::eval(const char *, struct stat *buffer, int)
{

    return (this->gid == buffer->st_gid);
}
