#ifndef Smallest_h
#define Smallest_h

#include "evalnode.h"


class Smallest : public EvalNode
{
private:
    enum TYPE {FILES, DIRS};
    int type;

    char *filename;
    long int size;
public:
    Smallest(const char *);
    ~Smallest();
    virtual void printNode();
    virtual bool eval(const char*, struct stat*, int);

};

#endif // Smallest_h
