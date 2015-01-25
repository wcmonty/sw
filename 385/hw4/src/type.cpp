/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include "type.h"
#include <stdio.h>

Type::Type(const char *input)
{
    switch(input[0]) {
    // b block (buffered) special
    case 'b':
        type = BLOCK;
        break;

    // c character (unbuffered) special
    case 'c':
        type = CHAR;
        break;

    // d directory
    case 'd':
        type = DIR;
        break;

    // p named pipe (FIFO)
    case 'p':
        type = FIFO;
        break;

    // l symbolic  link
    case 'l':
        type = LINK;
        break;

    // s socket
    case 's':
        type = SOCKET;
        break;

    //    f      regular file
    default:
        type = FILE;
        break;
    }
}

Type::~Type()
{

}

void Type::printNode()
{
}

bool Type::eval(const char *, struct stat *buffer, int)
{
    switch(type){
    // b block (buffered) special
    case BLOCK:
        return S_ISBLK(buffer->st_mode);

    // c character (unbuffered) special
    case CHAR:
        return S_ISCHR(buffer->st_mode);

    // d directory
    case DIR:
        return S_ISDIR(buffer->st_mode);

    // p named pipe (FIFO)
    case FIFO:
        return S_ISFIFO(buffer->st_mode);

    // l symbolic  link
    case LINK:
        return S_ISLNK(buffer->st_mode);

    // s socket
    case SOCKET:
        return S_ISSOCK(buffer->st_mode);

    // f regular file
    default:
        return S_ISREG(buffer->st_mode);
    }
}
