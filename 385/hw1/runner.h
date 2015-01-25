/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#ifndef RUNNER_H_INCLUDED
#define RUNNER_H_INCLUDED
#include <stdlib.h>
#include <vector>
#include "command.h"

class Runner {
	private:
        int argc;               /*!< Number of args. */
        char **argv;            /*!< Pointer to the arg array. */
        char **envp;            /*!< Pointer to the environment array. */
        int builtInNumber;      /*!< The number of the built in function */
                                /*!< @todo should probably be enum */

        /*! @todo This could be dynamically allocated */
        char userInput[1024];   /*!< Storage for the user input. */

        std::vector<Command*> commands; /*!< Array for storing history */

		void writeAuthorInformation();
		void writePrompt();
		void readCommand();
        void doCommand();
        void checkForBuiltIn();
        void runBuiltIn();
        void waitForIncompleteProcesses();
	public:
		Runner(int, char**, char**);
		~Runner();
        int run();
		void stats();
        void cd();
        void hist();
};
#endif
