#ifndef GID_H
#define GID_H

#include <sys/types.h>
#include <sys/stat.h>
#include "evalnode.h"

using namespace std;

class GID : public EvalNode
{
private:
    gid_t gid;
public:
    GID(char*);
    ~GID();
    void printNode();
    bool eval(const char*, struct stat*, int);
};

#endif // GID_H
