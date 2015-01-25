/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdio.h>
#include <string.h>
#include "cmin.h"

CMin::CMin(char *input) : Time(input)
{
}

CMin::~CMin()
{

}

void CMin::printNode()
{
}

bool CMin::eval(const char *, struct stat *buffer, int)
{
    time_t compareTime = time(NULL) - (60 * this->value);

    if (greater){
        return compareTime / 60  > buffer->st_ctim.tv_sec / 60;
    }
    else if (less){
        return compareTime  / 60 < buffer->st_ctim.tv_sec / 60;
    }
    else {
        return compareTime  / 60 == buffer->st_ctim.tv_sec / 60;
    }
}
