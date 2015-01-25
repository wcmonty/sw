#ifndef MMIN_H
#define MMIN_H

#include "time.h"

class MMin : public Time
{
public:
    MMin(char*);
    ~MMin();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // MMIN_H
