/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file sort_child.h
 * \brief Defines the SortChild interface
 */

#ifndef SORTCHILD_H_INCLUDED
#define SORTCHILD_H_INCLUDED
#include <sys/time.h>  /* needed on some linux systems */
#include <sys/resource.h>
#include <unistd.h>  /* needed on some linux systems */
#include <sys/types.h>
#include "pipe.h"

/*!
 * \brief The SortChild class Spawns a sort child to sort a buffer.
 */
class SortChild {
	private:
        char *file;             /*!< The file to be executed */
        char* args[1024];       /*!< An array holding the arguments */
        int inToChild;          /*!< Input pipe to child file descriptor. */
        int outFromChild;       /*!< Output pipe from child file descriptor. */
        int inToParent;         /*!< Input pipe to parent file descriptor. */
        int outFromParent;      /*!< Output pipe from parent file descriptor. */
        pid_t pid;              /*!< Process id of the child */
        int exit_status;        /*!< The exit status of the child. */
        const char *buffer;     /*!< The buffer to read from. */
        unsigned int bufferSize;/*!< The size of the buffer to read from. */
        char *sortedBuffer;     /*!< The buffer to store the sorted value. */


        void tokenizeArgs();
        void parseArgs();
        void doChild();
        void doParent();
    public:
        SortChild(int, int, int, int, const char *, unsigned int, char *);
        ~SortChild();

		int createFork();
};
#endif
