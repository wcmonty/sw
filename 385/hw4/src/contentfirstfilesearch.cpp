/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include "contentfirstfilesearch.h"
#include "runner.h"

void ContentFirstFileSearch::processDirectory(const char *dirName, EvalNode *root, int depth, struct subdirstats*)
{
    depth++;
    if (depth > Runner::getRunner()->getMaxDepth()){
        return;
    }

    processFiles(dirName, root, depth, NULL);
    processDirectories(dirName, root, depth, NULL);
}
