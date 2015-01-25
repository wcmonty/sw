/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file worker_child.cpp
 * \brief Defines the WorkerChild class
 */
#include <sys/wait.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <iostream>
#include "worker_child.h"

using namespace std;

/*!
 * \brief WorkerChild::WorkerChild Constructor
 * \param workerID  The id for this worker
 * \param nBuffers  The number of buffers in shared memory
 * \param sleepTime The time to sleep
 * \param msgID     The id of the message queue
 * \param shmID     The id of the shared memory
 * \param semID     The id of the semaphore group
 */
WorkerChild::WorkerChild (const int workerID, const int nBuffers, char *sleepTime,
                          const int msgID, const int shmID, const int semID){

    // Initialize instance variables
    this->sleepTime = sleepTime;
    snprintf(this->workerID, MAX_INTEGER_TO_STRING_LENGTH, "%d", workerID);
    snprintf(this->nBuffers, MAX_INTEGER_TO_STRING_LENGTH, "%d", nBuffers);
    snprintf(this->msgID, MAX_INTEGER_TO_STRING_LENGTH, "%d", msgID);
    snprintf(this->shmID, MAX_INTEGER_TO_STRING_LENGTH, "%d", shmID);
    snprintf(this->semID, MAX_INTEGER_TO_STRING_LENGTH, "%d", semID);
    pid = -1;
 }

/*!
 * \brief Destructor
 *
 */
WorkerChild::~WorkerChild () {
}

/*!
 *  \brief Child::createFork Creates a fork for the given command.
 *
 */
int WorkerChild::createFork () {
    /* fork a child process */
	pid = fork();

	if (pid < 0) { /* error occurred */
		fprintf(stderr, "Fork Failed");
		return 1;
	}
	else if (pid == 0) { /* child process */
        doChild();
	}
	else { /* parent process */
//        doParent();
//      call this explicitly
	}
	return pid;
}

/*!
 * \brief Child::doChild performs the actions as a child, including exec'ing
 */
void WorkerChild::doChild(){
    // Exec the command
    if (execlp("./worker", "./worker",
               this->workerID, this->nBuffers,
               this->sleepTime, this->msgID,
               this->shmID, this->semID , NULL) < 0) {
        perror("Could not execute command");
    }
    _exit(-1);
}

/*!
 * \brief Child::doParent performs the actions as a parent, including waiting for the process to end
 */
void WorkerChild::doParent(){
    // Wait for the process to come back
    wait4(pid, &exit_status, 0, NULL);

    // There was some error
    if (!WIFEXITED(exit_status)) { // Error happened
        cout << file << " exited with error code: " << exit_status << endl;
    }
}
