/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <string.h>
#include "sparse.h"

Sparse::~Sparse()
{

}

void Sparse::printNode()
{
}

bool Sparse::eval(const char *, struct stat *buffer, int)
{
    if (buffer->st_size == 0){
        return false;
    }
    float calculatedSize = float(buffer->st_blksize) * float(buffer->st_blocks);
    return  calculatedSize < float(buffer->st_size)  && calculatedSize > 0;
}

