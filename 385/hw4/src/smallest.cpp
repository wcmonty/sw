/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <string.h>
#include "smallest.h"
#include "summary.h"

Smallest::Smallest(const char *input)
{
    if (strcmp(input, "dir") == 0){
        type = DIRS;
    }
    else {
        type = FILES;
    }

    size = LONG_MAX;
    filename = NULL;
}

Smallest::~Smallest()
{

}

void Smallest::printNode()
{
    cout << "########## SMALLEST ##########" << endl;
    cout << filename << endl;
    cout << "######## END SMALLEST ########" << endl;
}

bool Smallest::eval(const char *filename, struct stat *buffer, int)
{
    if (buffer->st_size < size){
        if ((type == DIRS && S_ISDIR(buffer->st_mode)) ||
                (type == FILES && S_ISREG(buffer->st_mode))
                ){
            size = buffer->st_size;

            if (this->filename != NULL){
                free(this->filename);
            }

            this->filename = (char*)malloc(strlen(filename) + 1);
            strcpy(this->filename, filename);
        }
    }
    return true;
}

