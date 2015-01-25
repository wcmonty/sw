/*!
 * \author William Montgomery (wmontg2@uic.edu)
 *
 */
#include <iostream>
#include "runner.h"
using namespace std;

int main(int argc, char **argv)
{
    Runner *runner = Runner::getRunner(argc, argv);
    runner->run();
    delete(runner);

    return 0;
}

