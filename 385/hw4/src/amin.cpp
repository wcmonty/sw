/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdio.h>
#include <string.h>
#include "amin.h"

AMin::AMin(char *input) : Time(input)
{
}

AMin::~AMin()
{

}

void AMin::printNode()
{
}

bool AMin::eval(const char *, struct stat *buffer, int)
{
    time_t compareTime = time(NULL) - (60 * this->value);

    if (greater){
        return compareTime / 60  > buffer->st_atim.tv_sec / 60;
    }
    else if (less){
        return compareTime  / 60 < buffer->st_atim.tv_sec / 60;
    }
    else {
        return compareTime  / 60 == buffer->st_atim.tv_sec / 60;
    }
}
