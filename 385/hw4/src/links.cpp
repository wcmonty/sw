/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include "links.h"

Links::Links(const char *input)
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

Links::~Links()
{

}

void Links::printNode()
{
}

bool Links::eval(const char*, struct stat *buffer, int)
{
    if (greater){
        return buffer->st_nlink > value;
    }
    else if (less){
        return buffer->st_nlink < value;
    }
    else {
        return buffer->st_nlink == value;
    }
}

