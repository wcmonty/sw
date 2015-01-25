#ifndef ATIME_H
#define ATIME_H

#include "time.h"

class ATime : public Time
{
public:
    ATime(char*);
    ~ATime();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // ATIME_H
