#ifndef Time_h
#define Time_h

#include <time.h>
#include "evalnode.h"

class Time : public EvalNode
{
protected:
    int value;
    bool greater;
    bool less;

public:
    Time(char*);
    ~Time();
};

#endif // Time_h
