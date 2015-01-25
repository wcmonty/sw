/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include "size.h"

Size::Size(const char *input)
{    

    sizeDivider = 1;
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

    //    File uses n units of space.  The following suffixes can be used:
    //    `b'    for 512-byte blocks (this is the default if no suffix is used)
    //    `c'    for bytes
    //    `w'    for two-byte words
    //    `k'    for Kilobytes (units of 1024 bytes)
    //    `M'    for Megabytes (units of 1048576 bytes)
    //    `G'    for Gigabytes (units of 1073741824 bytes)
    switch(input[strlen(input) - 1]){
    case 'b':
        sizeDivider = 512;
        break;
    case 'c':
        // we don't have to multiply by anything for bytes
        break;
    case 'w':
        sizeDivider = 512;
        break;
    case 'k':
        sizeDivider = 1024;
        break;
    case 'M':
        sizeDivider = 1048576;
        break;
    case 'G':
        sizeDivider = 1073741824;
        break;
    default:
        sizeDivider = 512;
        break;
    }


}


Size::~Size()
{

}

void Size::printNode()
{
}

bool Size::eval(const char*, struct stat *buffer, int)
{
    if (greater){
        return (value - 1) < (buffer->st_size / sizeDivider);
    }
    else if (less){
        return (value - 1) > (buffer->st_size / sizeDivider);
    }
    else {
        return (value - 1) == (buffer->st_size / sizeDivider);
    }
}
