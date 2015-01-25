#ifndef CONTENTFIRSTFILESEARCH_H
#define CONTENTFIRSTFILESEARCH_H
#include "filesearch.h"

class ContentFirstFileSearch : public FileSearch
{
public:
    void processDirectory(const char*, EvalNode*, int, struct subdirstats*);

};

#endif // CONTENTFIRSTFILESEARCH_H
