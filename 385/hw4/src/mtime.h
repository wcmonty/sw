#ifndef MTIME_H
#define MTIME_H

#include "time.h"

class MTime : public Time
{
public:
    MTime(char*);
    ~MTime();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // MTIME_H
