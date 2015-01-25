#ifndef CTIME_H
#define CTIME_H

#include "time.h"

class CTime : public Time
{
public:
    CTime(char*);
    ~CTime();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};


#endif // CTIME_H
