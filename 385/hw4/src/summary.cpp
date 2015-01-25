/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <iostream>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include "summary.h"

Summary::Summary()
{
    //S_ISREG(m) is it a regular file?
    regCount = 0;
    regSize = 0;

    //S_ISDIR(m) directory?
    dirCount = 0;
    dirSize = 0;

    //S_ISCHR(m) character device?
    charCount = 0;
    charSize = 0;

    //S_ISBLK(m) block device?
    blockCount = 0;
    blockSize = 0;

    //S_ISFIFO(m) fifo?
    fifoCount = 0;
    fifoSize = 0; Summary* getSummary();


    //S_ISLNK(m) symbolic link? (Not in POSIX.1-1996.)
    linkCount = 0;
    linkSize = 0;

    //S_ISSOCK(m) socket? (Not in POSIX.1-1996.)
    socketCount = 0;
    socketSize = 0;
}

Summary::~Summary()
{
}

void Summary::printNode()
{
    cout << "########## SUMMARY ##########" << endl;
    printf("%20s %12s %12s\n", "File Type", "Count", "Total Size");
    printf("%20s %12ld %12ld\n", "Regular File", regCount, regSize);
    printf("%20s %12ld %12ld\n", "Directory", dirCount, dirSize);
    printf("%20s %12ld %12ld\n", "Block Device", blockCount, blockSize);
    printf("%20s %12ld %12ld\n", "Character Device", charCount, charSize);
    printf("%20s %12ld %12ld\n", "FIFO", fifoCount, fifoSize);
    printf("%20s %12ld %12ld\n", "Symbolic Link", linkCount, linkSize);
    printf("%20s %12ld %12ld\n", "Socket", socketCount, socketSize);
    cout << "######## END SUMMARY ########" << endl;
}

bool Summary::eval(const char*, struct stat *buffer, int)
{
    //    is it a regular file?
    if (S_ISREG(buffer->st_mode)){
        regSize += buffer->st_size;
        regCount++;
    }

    //    directory?
    if (S_ISDIR(buffer->st_mode)){
        dirSize += buffer->st_size;
        dirCount++;
    }

    //    character device?
    if (S_ISCHR(buffer->st_mode)){
        charSize += buffer->st_size;
        charCount++;
    }

    //    block device?
    if (S_ISBLK(buffer->st_mode)){
        blockSize += buffer->st_size;
        blockCount++;
    }

    //    fifo?
    if (S_ISFIFO(buffer->st_mode)){
        fifoSize += buffer->st_size;
        fifoCount++;
    }

    //    symbolic link? (Not in POSIX.1-1996.)
    if (S_ISLNK(buffer->st_mode)){
        linkSize += buffer->st_size;
        linkCount++;
    }

    //    socket? (Not in POSIX.1-1996.)
    if (S_ISSOCK(buffer->st_mode)){
        socketSize += buffer->st_size;
        socketCount++;
    }

    return true;
}
