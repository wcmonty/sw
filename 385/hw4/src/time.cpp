/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include "time.h"

Time::Time(char *input)
{
    greater = false;
    less = false;

    if (input[0] == '+'){
        greater = true;
        value = atoi(input + 1);
    }
    else if (input[0] == '-'){
        less = true;
        value = atoi(input + 1);
    }
    else {
        value = atoi(input);
    }
}

Time::~Time()
{

}


