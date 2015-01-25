#ifndef CMIN_H
#define CMIN_H

#include "time.h"
class CMin : public Time
{
public:
    CMin(char*);
    ~CMin();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // CMIN_H
