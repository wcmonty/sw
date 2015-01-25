#ifndef RUNNER_H
#define RUNNER_H
#include <vector>
#include <string>
#include "evalnode.h"
#include "andnode.h"
#include "ornode.h"
#include "notnode.h"

using namespace std;

class Runner
{
public:
    static Runner* getRunner();
    static Runner* getRunner(int, char**);
    ~Runner();
    Runner* run();

    void printCommand();
    int extractPaths();
    void printNodes();

    int getMaxDepth();
private:
    int argc;
    char **argv;
    static bool isSet;
    static Runner *runner;
    vector<char*> paths;
    vector<char*> tests;

    bool depth;
    bool help;
    bool summarize;
    bool smallest;
    bool largest;
    int maxDepth;

    EvalNode *root;

    Runner(int, char**);
    Runner* parseArgs();
    Runner* preparseParams();
    EvalNode* parseTests(int, int);
    EvalNode* createEvalNode(int, int);
    int scanFor(int, int, const char*);
    int findLengthOfNextParam(string);
    void displayHelp();
};

#endif // RUNNER_H
