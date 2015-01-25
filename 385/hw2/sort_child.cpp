/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file sort_child.cpp
 * \brief Defines the SortChild class
 */

#include <sys/wait.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <iostream>
#include "sort_child.h"

using namespace std;

/*!
 * \brief SortChild::SortChild Spawns sort to sort the strings
 * \param outFromParent Pipe fd from the parent
 * \param inToChild     Pipe fd to the child
 * \param outFromChild  Pipe fd from the child
 * \param inToParent    Pipe fd to the parent
 * \param buffer        The buffer to sort
 * \param bufferSize    The size of the buffer
 * \param sortedBuffer  The buffer to store the result
 */
SortChild::SortChild (int outFromParent, int inToChild,
              int outFromChild, int inToParent,
              const char *buffer, unsigned int bufferSize,
              char *sortedBuffer){

    // Initialize instance variables
    this->inToChild = inToChild;
    this->outFromChild = outFromChild;
    this->inToParent = inToParent;
    this->outFromParent = outFromParent;
    this->buffer = buffer;
    this->bufferSize = bufferSize;
    this->sortedBuffer = sortedBuffer;
    pid = -1;
 }

/*!
 * \brief Destructor
 *
 */
SortChild::~SortChild () {
}


/*!
 *  \brief Child::createFork Creates a fork for the given command.
 *
 */
int SortChild::createFork () {
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
        doParent();
	}
	return pid;
}

/*!
 * \brief Child::doChild performs the actions as a child, including exec'ing
 */
void SortChild::doChild(){

    // Dup the file descriptors
    if (inToChild > 0){
        dup2(inToChild, STDIN_FILENO);
        close(inToChild);
    }
    if (outFromChild > 0){
        dup2(outFromChild, STDOUT_FILENO);
        close(outFromChild);
    }

    // Close unused file descriptors
    if (inToParent > 0) { close (inToParent); }
    if (outFromParent > 0) { close (outFromParent); }

    // Exec the command
    if (execlp("sort", "sort", "-nr", NULL) < 0) {
        perror("Could not execute command");
    }
    _exit(-1);
}

/*!
 * \brief Child::doParent performs the actions as a parent, including waiting for the process to end
 */
void SortChild::doParent(){
    // Dup used file descriptors
    if (outFromParent > 0) {
        write(outFromParent, buffer, bufferSize);
        close(outFromParent);
    }

    if (inToParent > 0) {
        int readSize;
        readSize = read(inToParent, sortedBuffer, bufferSize);
        sortedBuffer[readSize] = '\0';
        close(inToParent);
    }

    // Close unused file descriptors
    if (inToChild > 0) { close (inToChild); }
    if (outFromChild > 0) { close (outFromChild); }

    // Wait for the process to come back
    wait4(pid, &exit_status, 0, NULL);


    // There was some error
    if (!WIFEXITED(exit_status)) { // Error happened
        cout << file << " exited with error code: " << exit_status << endl;
    }
}
