/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include "string.h"
#include "access.h"

Access::Access(const char *input)
{
    if (strcmp(input, "read") == 0) {
        mode = READ;
    }
    else if (strcmp(input, "write") == 0){
        mode = WRITE;
    }
    else if (strcmp(input, "execute") == 0){
        mode = EXECUTE;
    }
    else {
        mode = ANY;
    }
}


Access::~Access()
{

}

void Access::printNode()
{
}

bool Access::eval(const char*, struct stat *buffer, int)
{

    //S_IRWXU	00700	mask for file owner permissions
    //S_IRUSR	00400	owner has read permission
    //S_IWUSR	00200	owner has write permission
    //S_IXUSR	00100	owner has execute permission
    //S_IRWXG	00070	mask for group permissions
    //S_IRGRP	00040	group has read permission
    //S_IWGRP	00020	group has write permission
    //S_IXGRP	00010	group has execute permission
    //S_IRWXO	00007	mask for permissions for others (not in group)
    //S_IROTH	00004	others have read permission
    //S_IWOTH	00002	others have write permisson
    //S_IXOTH	00001	others have execute permission

    if (geteuid() == buffer->st_uid){
        switch (mode){
        case READ:
            return S_IRUSR & buffer->st_mode;
        case WRITE:
            return S_IWUSR & buffer->st_mode;
        case EXECUTE:
            return S_IXUSR & buffer->st_mode;
        default:
            return S_IRWXU & buffer->st_mode;
        }
    }
    else if (getegid() == buffer->st_gid){
        switch (mode){
        case READ:
            return S_IRGRP & buffer->st_mode;
        case WRITE:
            return S_IWGRP & buffer->st_mode;
        case EXECUTE:
            return S_IXGRP & buffer->st_mode;
        default:
            return S_IRWXG & buffer->st_mode;
        }
    }
    else {
        switch (mode){
        case READ:
            return S_IROTH & buffer->st_mode;
        case WRITE:
            return S_IWOTH & buffer->st_mode;
        case EXECUTE:
            return S_IXOTH & buffer->st_mode;
        default:
            return S_IRWXO & buffer->st_mode;
        }

    }
}
