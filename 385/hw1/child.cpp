/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#include <sys/wait.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <iostream>
#include "child.h"

using namespace std;

/*!
 *  \brief Constructor used for commands that are NOT to be piped or redirected.
 *  \param f a char* to a command
 */
Child::Child (char *f){
    // Copy the command so we can initialize
    while (*f == ' '){
        f++;
    }
    file = (char *) malloc(strlen(f) + 1);
    strcpy(file, f);
    tokenizeArgs();

    // Initialize instance variables
    completed = false;
    exit_status = -1;
    in = -1;
    out = -1;
    next = -1;
    inputFile = NULL;
    outputFile = NULL;
    background = false;
    pid = -1;
    usageValid = false;

}

/*!
 *  \brief Constructor used for commands that are to be piped or redirected.
 *  \param f a char* to a command
 *  \param inPipe an int representing the incoming pipe
 *  \param outPipe an int representing the outgoing pipe
 *  \param nextPipe and int representing the next pipe
 *  \param back a boolean representing whether the command is to be run in the background
 */
Child::Child (char *f, int inPipe, int outPipe, int nextPipe, bool back){
    // Copy the file so that we can tokenize
    while (*f == ' '){
        f++;
    }
    file = (char *) malloc(strlen(f) + 1);
    strcpy(file, f);

    // Initialize instance variables
    completed = false;
    exit_status = -1;
    in = inPipe;
    out = outPipe;
    next = nextPipe;
    background = back;
    inputFile = NULL;
    outputFile = NULL;
    pid = -1;
    usageValid = false;

    // Tokenize and parse the command
    tokenizeArgs();
    parseArgs();

}

/*!
 * \brief Destructor
 *
 */
Child::~Child () {
    free (file);
}


/*!
 *  \brief Child::createFork Creates a fork for the given command.
 *
 */
int Child::createFork () {
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
void Child::doChild(){
    if (next > 0) close(next);

    // Open inputFile and outputFile if they exist
    if (inputFile) {
        in = open(inputFile, O_RDONLY);
        if(in == -1) {
            perror("open() failed with error: ");
        }
    }
    if (outputFile) {
        out = open(outputFile, O_WRONLY|O_CREAT, S_IRWXU);
        if(out == -1) {
            perror("open() failed with error: ");
        }
    }

    // Dup the file descriptors
    if (in > 0){
        dup2(in, 0);
        close(in);
    }
    if (out > 0){
        dup2(out, 1);
        close(out);
    }

    // Exec the command
    if (execvp(file, args) < 0) {
        perror("Could not execute command");
    }
    _exit(-1);
}

/*!
 * \brief Child::doParent performs the actions as a parent, including waiting for the process to end
 */
void Child::doParent(){

    // Close unused file descriptors
    if (in > 0) {
        close(in);
        in = -1;
    }
    if (out > 0) {
        close(out);
        out = -1;
    }

    // Wait for the process to come back
    if (background) {
        wait4(pid, &exit_status, WNOHANG, &usage);
    }
    else {
        wait4(pid, &exit_status, 0, &usage);
    }

    // There was some error
    usageValid = true;
    if (!WIFEXITED(exit_status)) { // Error happened
        completed = true;
        cout << file << " exited with error code: " << exit_status << endl;
    }

}

/*!
 * \brief Child::tokenizeArgs Tokenizes the input string
 */
void Child::tokenizeArgs() {
    args[0] = file;
    strtok(file, " ");

    int i = 0;
    do {
        i++;
        args[i] = strtok(NULL, " ");
    } while (args[i]);
    numberArgs = i;
}

/*!
 * \brief Child::parseArgs Parses the arguments array for redirection
 */
void Child::parseArgs() {
    for (int i = 0; i < numberArgs; i++){
        if (*(args[i]) == '<') {
            args[i] = NULL;
            inputFile = args[i + 1];
        }
        else if (*(args[i]) == '>'){
            args[i] = NULL;
            outputFile = args[i + 1];
        }
    }
}

/*!
 * \brief Child::printStats prints relevant stats for the process
 */
void Child::printStats(){
    printf ("  ");
    printf ("%10.6f ", userTime());
    printf ("%10.6f ", systemTime());
    printf ("%8lu ", volContextSwitches());
    printf ("%8lu ", involContextSwitches());
    printf ("%8lu", swaps());
    printf ("%8lu", pageFaults());
    printf ("  %-20s ", file);
    cout << endl;
}

/*!
 * \brief Child::isComplete returns whether the process has completed (only really applicable for
 *        background processes).
 * \return true if the process is complete, false otherwise
 */
bool Child::isComplete(){
	return completed;
}

/*!
 * \brief Child::updateUsage updates the usage for the entire process (should only be used to update the shell process)
 */
void Child::updateUsage(){
    getrusage(RUSAGE_SELF, &usage);

}

/*!
 * \brief Child::userTime parses the user time from the rusage struct
 * \return A float value representing the user time
 */
float Child::userTime() {
    if (usageValid) {
        return (float) (usage.ru_utime.tv_sec + (usage.ru_utime.tv_usec * .000001));
    }
	return 0.0;
}

/*!
 * \brief Child::systeTime parses the system time from the rusage struct
 * \return A float value representing the system time
 */
float Child::systemTime() {
    if (usageValid) {
        return (float) (usage.ru_stime.tv_sec + (usage.ru_stime.tv_usec * .000001));
	}	
	return 0.0;
}

/*!
 * \brief Child::volContextSwitches parses the rusage struct for the voluntary context switches
 * \return The number of context switches incurred
 */
unsigned long Child::volContextSwitches() {
    if (usageValid) {
        return usage.ru_nvcsw;
	}	
	return 0;
}

/*!
 * \brief Child::involContextSwitches parses the rusage struct for the involuntary context switches
 * \return The number of involuntary context switches incurred
 */
unsigned long Child::involContextSwitches() {
    if (usageValid) {
        return usage.ru_nivcsw;
	}	
	return 0;
}

/*!
 * \brief Child::swaps Read the number of swaps from the rusage struct
 * \return The number of swap
 */
unsigned long Child::swaps() {
    if (usageValid) {
        return usage.ru_nswap;
    }
    return 0;
}

/*!
 * \brief Child::pageFaults Read the number of page faults from the rusage struct
 * \return The number of (hard) page faults
 */
unsigned long Child::pageFaults() {
    if (usageValid) {
        return usage.ru_majflt;
    }
    return 0;
}

/*!
 * \brief Child::print Prints a copy of the child to stdout for debugging.
 */
void Child::print(){
    cout << "Child for " << file << endl;
    cout << "in is " << in << endl;
    cout << "out is " << out << endl;
    cout << "next is " << next << endl;
}
