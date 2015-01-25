/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <string.h>
#include "treedir.h"

TreeDir::TreeDir()
{

}

TreeDir::~TreeDir()
{

}

void TreeDir::printNode()
{
}

bool TreeDir::eval(const char *filename, struct stat*, int depth)
{
    int i;
    for (i = strlen(filename) - 1 ;
         i > 0; i--){
        if (filename[i] == '/'){
            break;
        }
    }

    printDepth(depth);
    cout << filename + i << endl;
    return true;
}

void TreeDir::printDepth(int depth)
{
    for (int i = 1; i < depth; i++){
        cout << "| ";
    }
    cout << "+- ";
}
