#ifndef FILESEARCH_H
#define FILESEARCH_H
#include <string>
#include "string.h"
#include "evalnode.h"

using namespace std;

struct subdirstats
{
    int fileCount;
    int dirCount;
    int size;
};

class FileSearch
{
public:
    FileSearch();
    virtual ~FileSearch();
    virtual void run(const string, EvalNode *);
    virtual void processDirectory(const char*, EvalNode*, int, struct subdirstats*) = 0;
    virtual void processDirectories(const char*, EvalNode*, int, struct subdirstats*);
    virtual void processFiles(const char*, EvalNode*, int, struct subdirstats*);
    virtual void evaluateIt(const char *, EvalNode *, int, struct stat *);
};

#endif // FILESEARCH_H
