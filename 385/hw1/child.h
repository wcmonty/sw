/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#ifndef CHILD_H_INCLUDED
#define CHILD_H_INCLUDED
#include <sys/time.h>  /* needed on some linux systems */
#include <sys/resource.h>
#include <unistd.h>  /* needed on some linux systems */
#include <sys/types.h>
#include "pipe.h"

class Child {
	private:
        char *file;             /*!< The file to be executed */
        char* args[1024];       /*!< An array holding the arguments */
        int numberArgs;         /*!< Counter for the number of arguments. */
        bool completed;         /*!< True if child has completed. */
        int exit_status;        /*!< Status returned from the forked command. */
        int in;                 /*!< Input pipe file descriptor. */
        int out;                /*!< Output pipe file descriptor. */
        int next;               /*!< Next pipe file descriptor. */
        char *inputFile;        /*!< Input file name. */
        char *outputFile;       /*!< Output file name. */
        bool background;        /*!< True if child should be run in the backgound. */
        pid_t pid;              /*!< Process id of the child */
        bool usageValid;        /*!< True if the child has completed and the rusage struct has been assigned */
        struct rusage usage;    /*!< rusage struct holding the usage for the child. */

        void tokenizeArgs();
        void parseArgs();
        float userTime();
        float systemTime();
        unsigned long volContextSwitches();
        unsigned long involContextSwitches();
        unsigned long swaps();
        unsigned long pageFaults();
        void doChild();
    public:
        Child(char*);
        Child(char*, int, int, int, bool);
		~Child();

		int createFork();
        void printStats();
        void updateUsage();
        bool isComplete();
        void print();
        void doParent();
};
#endif
