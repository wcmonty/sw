/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <string.h>
#include "largest.h"
#include "summary.h"

Largest::Largest(const char *input)
{
    if (strcmp(input, "dir") == 0){
        type = DIRS;
    }
    else {
        type = FILES;
    }

    size = 0;
    filename = NULL;
}

Largest::~Largest()
{
    if (this->filename != NULL){
        free(this->filename);
    }
}

void Largest::printNode()
{
    cout << "########## LARGEST ##########" << endl;
    cout << filename << endl;
    cout << "######## END LARGEST ########" << endl;
}

bool Largest::eval(const char *filename, struct stat *buffer, int)
{
    if (buffer->st_size > size){
        size = buffer->st_size;

        if (this->filename != NULL){
            free(this->filename);
        }

        this->filename = (char*)malloc(strlen(filename) + 1);
        strcpy(this->filename, filename);
    }
    return true;
}

