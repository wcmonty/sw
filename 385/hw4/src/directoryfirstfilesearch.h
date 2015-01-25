#ifndef DIRECTORYFIRSTFILESEARCH_H
#define DIRECTORYFIRSTFILESEARCH_H

#include "filesearch.h"
class DirectoryFirstFileSearch : public FileSearch
{
public:
    ~DirectoryFirstFileSearch();
    virtual void processDirectory(const char *, EvalNode *, int, struct subdirstats*);
};

#endif // DIRECTORYFIRSTFILESEARCH_H
