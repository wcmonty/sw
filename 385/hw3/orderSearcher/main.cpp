/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file main.cpp
 * \brief Main
 */
#include <iostream>
#include "runner.h"

using namespace std;

/*!
 * \brief main
 * \param argc The argument count
 * \param argv The argument values
 * \return 0 if success
 */
int main(int argc, char **argv)
{
    Runner *runner = Runner::getRunner(argc, argv);
    runner->run();
    delete (runner);
    return 0;
}

