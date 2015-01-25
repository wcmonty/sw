#ifndef SUMMARY_H
#define SUMMARY_H

#include "evalnode.h"

using namespace std;

class Summary : public EvalNode
{
public:
    //S_ISREG(m) is it a regular file?
    unsigned long int regCount;
    unsigned long int regSize;

    //S_ISDIR(m) directory?
    unsigned long int dirCount;
    unsigned long int dirSize;

    //S_ISCHR(m) character device?
    unsigned long int charCount;
    unsigned long int charSize;

    //S_ISBLK(m) block device?
    unsigned long int blockCount;
    unsigned long int blockSize;

    //S_ISFIFO(m) fifo?
    unsigned long int fifoCount;
    unsigned long int fifoSize;

    //S_ISLNK(m) symbolic link? (Not in POSIX.1-1996.)
    unsigned long int linkCount;
    unsigned long int linkSize;

    //S_ISSOCK(m) socket? (Not in POSIX.1-1996.)
    unsigned long int socketCount;
    unsigned long int socketSize;

public:
    Summary();
    ~Summary();

    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // SUMMARY_H
