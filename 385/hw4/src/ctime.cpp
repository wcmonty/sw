/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdio.h>
#include "ctime.h"

CTime::CTime(char *input) : Time(input)
{
}

CTime::~CTime()
{

}

void CTime::printNode()
{
}

bool CTime::eval(const char*, struct stat *buffer, int)
{
    time_t compareTime = time(NULL) - (24 * 60 * 60 * this->value);

    if (greater){
        return compareTime / 3600  > buffer->st_ctim.tv_sec / 3600;
    }
    else if (less){
        return compareTime  / 3600 < buffer->st_ctim.tv_sec / 3600;
    }
    else {
        return compareTime  / 3600 == buffer->st_ctim.tv_sec / 3600;
    }
}
