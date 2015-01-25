/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file master_main.cpp
 * \brief Contains main
 */

#include "master.h"

using namespace std;

/*!
 * \brief main Main
 * \param argc Argument count
 * \param argv Argument variables
 * \param envp Environment variables
 * \return 0 if no errors
 */
int main (int argc, char **argv, char **envp) {
	Master *master = new Master (argc, argv, envp);

    master->run();
	delete (master);
	
    return 0;
}
