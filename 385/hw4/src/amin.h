#ifndef AMIN_H
#define AMIN_H

#include "time.h"

class AMin : public Time
{
public:
    AMin(char*);
    ~AMin();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // AMIN_H
