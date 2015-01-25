/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <stdlib.h>
#include <iostream>
#include <string.h>
#include <limits.h>
#include <unistd.h>

#include "runner.h"
#include "evalnode.h"
#include "access.h"
#include "amin.h"
#include "andnode.h"
#include "atime.h"
#include "cmin.h"
#include "ctime.h"
#include "gid.h"
#include "groupnode.h"
#include "largest.h"
#include "links.h"
#include "mmin.h"
#include "mtime.h"
#include "notnode.h"
#include "ornode.h"
#include "print.h"
#include "size.h"
#include "smallest.h"
#include "sparse.h"
#include "time.h"
#include "treedir.h"
#include "type.h"
#include "uid.h"

#include "filesearch.h"
#include "directoryfirstfilesearch.h"
#include "contentfirstfilesearch.h"
#include "summary.h"

bool Runner::isSet = false;
Runner* Runner::runner = NULL;

Runner::Runner(int argc, char **argv)
{
    this->root = NULL;
    this->argc = argc;
    this->argv = argv;
    this->depth = false;
    this->help = false;
    this->maxDepth = INT_MAX;

}

Runner* Runner::getRunner()
{
    return runner;
}

Runner* Runner::getRunner(int argc, char **argv)
{
    if (isSet){
        return runner;
    }

    isSet = true;
    runner = new Runner(argc, argv);
    return runner;
}

Runner::~Runner()
{
    if (root != NULL){
        delete (root);
    }

}

Runner* Runner::run()
{
    FileSearch *fs;
    parseArgs();

    if (help){
        displayHelp();
        return this;
    }

    if (depth){
        fs = new DirectoryFirstFileSearch();
    }
    else {
        fs = new ContentFirstFileSearch();
    }

    if (paths.size() == 0){
        fs->run(string("."), root);
    }
    else {
        for (unsigned int i = 0; i < paths.size(); i++){
            fs->run(string(paths.at(i)), root);
        }
    }
    delete fs;

    root->printNode();
    return this;
}

void Runner::printCommand()
{
    for(int i = 0; i < argc; i++){
        cout << argv[i] << " " ;
    }
    cout << endl;
}

int Runner::extractPaths()
{
    int position = 1; // Start at the first position
    while(position < argc && argv[position][0] != '-'){
        paths.push_back(argv[position]);
        position++;
    }

    return position;
}

void Runner::printNodes()
{
    root->printNode();
    cout << endl;
}

Runner* Runner::parseArgs()
{
    preparseParams();

    if (!help){
        // Figure out the paths to process
        extractPaths();

        // Create the evaluation tree
        if (!tests.size()){
            root = new Print();
        }
        else {
            root = parseTests(0, tests.size() - 1);
        }
    }
    return this;
}

Runner* Runner::preparseParams()
{
    /// @todo This breaks if one of the args is 2>
    int found = false;
    for (int i = 0; i < argc; i ++){
        if (strcmp(argv[i], "-depth") == 0) depth = true;
        else if (strcmp(argv[i], "-help") == 0) help = true;
        else if (strcmp(argv[i], "-maxdepth") == 0){
            maxDepth = atoi(argv[scanFor(0, argc - 1, "-maxdepth") + 1]);
            i++;
        }
        else if (found){
            tests.push_back(argv[i]);
        }
        else if (argv[i][0] == '-'){
            found = true;
            tests.push_back(argv[i]);
        }
    }
    return this;
}

EvalNode* Runner::parseTests(int start, int end)
{
    EvalNode *node = NULL;
    if (start > end){
        cout << "not enough args" << endl;
        return NULL;
    }

    int orPosition = scanFor(start, end, "-or");
    int paramLength = findLengthOfNextParam(tests[start]);
    string param = string(tests[start]);

    if (orPosition > 0){
        return new OrNode(parseTests(start, orPosition - 1),
                          parseTests(orPosition + 1, end));
    }
    else if (strcmp(tests[start], "-and") == 0){
        return parseTests(start + 1, end);
    }
    else if (strcmp(tests[start], "-not") == 0){
        int nextParamLength  = findLengthOfNextParam(tests[start + 1]);
        if (nextParamLength < (end - start)){
            return new AndNode(parseTests(start, start + nextParamLength),
                               parseTests(start + nextParamLength + 1, end));
        }
        else {
            return new NotNode(parseTests(start + 1, end));
        }
    }
    else if (paramLength < (end - start + 1)) {
        return new AndNode(parseTests(start, start + paramLength - 1),
                           parseTests(start + paramLength, end));
    }
    else if (paramLength > (end - start + 1)) {
        cout << "Error: not enough arguments to parameter " << argv[start] << endl;
        exit (-1);
    }
    /// @todo
    else if (param.compare("-access") == 0) node = new Access(tests[start + 1]);
    else if (param.compare("-amin") == 0) node = new AMin(tests[start + 1]);
    else if (param.compare("-atime") == 0) node = new ATime(tests[start + 1]);
    else if (param.compare("-cmin") == 0) node = new CMin(tests[start + 1]);
    else if (param.compare("-ctime") == 0) node = new CTime(tests[start + 1]);
    else if (param.compare("-gid") == 0) node = new GID(tests[start + 1]);
    else if (param.compare("-largest") == 0) node = new Largest(tests[start] + 1);
    else if (param.compare("-links") == 0) node = new Links(tests[start] + 1);
    else if (param.compare("-mmin") == 0) node = new MMin(tests[start + 1]);
    else if (param.compare("-mtime") == 0) node = new MTime(tests[start + 1]);
    else if (param.compare("-print") == 0) node = new Print();
    else if (param.compare("-size") == 0) node = new Size(tests[start + 1]);
    else if (param.compare("-smallest") == 0) node = new Smallest(tests[start + 1]);
    else if (param.compare("-sparse") == 0) node = new Sparse();
    else if (param.compare("-summarize") == 0) node = new Summary();
    else if (param.compare("-treedir") == 0) node = new TreeDir();
    else if (param.compare("-type") == 0) node = new Type(tests[start + 1]);
    else if (param.compare("-uid") == 0) node = new UID(tests[start + 1]);
    return node;
}

int Runner::scanFor(int start, int end, const char *phrase)
{
    for (int i = start; i < end; i++){
        if (strcmp(argv[i], phrase) == 0){
            return i;
        }
    }
    return -1;
}

int Runner::findLengthOfNextParam(string param)
{
    int length = 1;
    if (param.compare("-access") == 0) length = 2;
    else if (param.compare("-amin") == 0) length = 2;
    else if (param.compare("-atime") == 0) length = 2;
    else if (param.compare("-cmin") == 0) length = 2;
    else if (param.compare("-ctime") == 0) length = 2;
    else if (param.compare("-largest") == 0) length = 2;
    else if (param.compare("-links") == 0) length = 2;
    else if (param.compare("-gid") == 0) length = 2;
    else if (param.compare("-mmin") == 0) length = 2;
    else if (param.compare("-mtime") == 0) length = 2;
    else if (param.compare("-print") == 0) length = 1;
    else if (param.compare("-size") == 0) length = 2;
    else if (param.compare("-smallest") == 0) length = 2;
    else if (param.compare("-sparse") == 0) length = 1;
    else if (param.compare("-summarize") == 0) length = 1;
    else if (param.compare("-treedir") == 0) length = 1;
    else if (param.compare("-type") == 0) length = 2;
    else if (param.compare("-uid") == 0) length = 2;
    return length;
}

int Runner::getMaxDepth()
{
    return maxDepth;
}

void Runner::displayHelp()
{
    cout << "findIt by William Montgomery (wmontg2@uic.edu)" << endl;
    cout << "University of Illinois at Chicago" << endl;
    cout << "CS 385, Fall 2013" << endl;
    cout << "Utililty similar to Linux find - with enhancements" << endl;
    cout << endl;
    cout << "Usage: " << argv[0] << " [PATHS] [expression]" << endl;
    cout << endl;
    cout << "default path is the current directory; default expression is -print" << endl;
    cout << "expression may consist of: operators, options, tests, and actions:" << endl;
    cout << endl;
    cout << "operators (decreasing precedence; -and is implicit where no others are given):" << endl;
    cout << "-not EXPR   EXPR1 -and EXPR2   EXPR1 -or EXPR2" << endl;
    cout << endl;
    cout << "//normal options (always true, specified before other expressions):" << endl;
    cout << "    -depth -help -maxdepth LEVELS" << endl;
    cout << endl;
    cout << "tests (N can be +N or -N or N): -amin N -atime N -cmin N" << endl;
    cout << "-ctime N -gid N -links N -mmin N -mtime N -size N[bcwkMG] -type [bcdpflsD] -uid N" << endl;
    cout << endl;
    cout << "actions: -print -treedir" << endl;

}
