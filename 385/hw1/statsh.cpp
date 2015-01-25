/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#include <iostream>
#include "runner.h"

using namespace std;

/*!
 * \brief main Main
 * \param argc Argument count
 * \param argv Argument variables
 * \param envp Environment variables
 * \return 0 if no errors
 */
int main (int argc, char **argv, char **envp) {
	Runner *runner = new Runner(argc, argv, envp);

	int returnVal =  runner->run();
	delete (runner);
	
	return returnVal;
}
