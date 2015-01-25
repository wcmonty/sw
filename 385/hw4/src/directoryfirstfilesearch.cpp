/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <sys/stat.h>
#include <stdio.h>
#include "directoryfirstfilesearch.h"
#include "runner.h"

DirectoryFirstFileSearch::~DirectoryFirstFileSearch()
{
}

void DirectoryFirstFileSearch::processDirectory(const char *dirName, EvalNode *root, int depth, struct subdirstats*)
{
    depth++;
    if (depth > Runner::getRunner()->getMaxDepth()){
        return;
    }

    processDirectories(dirName, root, depth, NULL);
    processFiles(dirName, root, depth, NULL);
}
