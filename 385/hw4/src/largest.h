#ifndef Largest_h
#define Largest_h

#include "evalnode.h"


class Largest : public EvalNode
{
private:
    enum TYPE {FILES, DIRS};
    int type;

    char *filename;
    long int size;
public:
    Largest(const char*);
    ~Largest();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);

};

#endif // Largest_h
