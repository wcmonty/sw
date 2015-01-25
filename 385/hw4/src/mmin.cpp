/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdio.h>
#include <string.h>
#include "mmin.h"

MMin::MMin(char *input) : Time(input)
{
}

MMin::~MMin()
{

}

void MMin::printNode()
{
}

bool MMin::eval(const char *, struct stat *buffer, int)
{
    time_t compareTime = time(NULL) - (60 * this->value);

    if (greater){
        return compareTime / 60  > buffer->st_mtim.tv_sec / 60;
    }
    else if (less){
        return compareTime  / 60 < buffer->st_mtim.tv_sec / 60;
    }
    else {
        return compareTime  / 60 == buffer->st_mtim.tv_sec / 60;
    }
}
