#ifndef UID_H
#define UID_H

#include <sys/types.h>
#include <sys/stat.h>
#include "evalnode.h"

using namespace std;

class UID : public EvalNode
{
private:
    uid_t uid;
public:
    UID(char*);
    ~UID();
    void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // UID_H
