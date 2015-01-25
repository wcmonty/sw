/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file worker_child.h
 * \brief Defines the WorkerChild interface
 */

#ifndef WORKERCHILD_H_INCLUDED
#define WORKERCHILD_H_INCLUDED
#include <sys/time.h>  /* needed on some linux systems */
#include <sys/resource.h>
#include <unistd.h>  /* needed on some linux systems */
#include <sys/types.h>

static const int MAX_INTEGER_TO_STRING_LENGTH = 20;

/*!
 * \brief The WorkerChild class Spawns off a Worker as a child process.
 */
class WorkerChild {
	private:
        char *file;             /*!< The file to be executed */
        char* args[1024];       /*!< An array holding the arguments */
        pid_t pid;              /*!< Process id of the child */
        int exit_status;        /*!< The exit status */

        // sleepTime should be converted prior to sending.
        // Probably not the cleanest way to do this.
        char *sleepTime;        /*!< Buffer to hold the times to sleep */

        // Maximum integer is 2147483647, which is 10 bytes as a char[]
        // So 2 bytes should be plenty
        char workerID[MAX_INTEGER_TO_STRING_LENGTH];
        char nBuffers[MAX_INTEGER_TO_STRING_LENGTH];
        char msgID[MAX_INTEGER_TO_STRING_LENGTH];
        char shmID[MAX_INTEGER_TO_STRING_LENGTH];
        char semID[MAX_INTEGER_TO_STRING_LENGTH];

        void doChild();

    public:
        WorkerChild(const int, const int, char*,
                    const int, const int, const int);
        ~WorkerChild();

        void doParent();
		int createFork();
};
#endif
