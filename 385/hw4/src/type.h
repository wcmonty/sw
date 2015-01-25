#ifndef TYPE_H
#define TYPE_H

#include "evalnode.h"

class Type : public EvalNode
{
private:
    enum TYPE {BLOCK, CHAR, DIR, FIFO, FILE, LINK, SOCKET};
    int type;

public:
    Type(const char*);
    ~Type();

    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);
};

#endif // TYPE_H
