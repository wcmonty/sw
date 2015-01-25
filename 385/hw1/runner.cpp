/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include "runner.h"
#include "command.h"
using namespace std;

/*!
 * \brief Runner::Runner Constructor for Runner
 * \param a int representing the number of args passed
 * \param b char** representing argv
 * \param c char** representing envp
 */
Runner::Runner(int a, char **b, char **c) {
	argc = a;
	argv = b;
	envp = c;	
    Command *command = new Command(b[0], 0);
    command->setComplete(true);
    commands.push_back(command);
    builtInNumber = 0;
}

/*!
 * \brief Runner::~Runner Destructor for Runner
 */
Runner::~Runner() {
	stats();
    while (commands.size() > 0) {
        delete commands.back();
        commands.pop_back();
	}
}

/*!
 * \brief Runner::run Loop that grabs, parses, and executes input
 * \return 0 if no error, something else otherwise
 */
int Runner::run() {
    writeAuthorInformation();
	do {
        waitForIncompleteProcesses();
		writePrompt();
		readCommand();

        builtInNumber = 0;
        checkForBuiltIn();
        if(builtInNumber) runBuiltIn();
        else doCommand();

    } while (builtInNumber != 1);
	return 0;
}

/*!
 * \brief Runner::writeAuthorInformation Writes the author information to stdout
 */
void Runner::writeAuthorInformation(){
	cout << "statsh by William Montgomery (wmontg2)" << endl;
}

/*!
 * \brief Runner::writePrompt Writes the prompt to stdout
 */
void Runner::writePrompt() {
	char *user = getenv("USER");
	char cwd[1024];
	getcwd (cwd, sizeof(cwd));

	cout << "[0;32m" << cwd << " " << user << ">[0m ";
	return;
}

/*!
 * \brief Runner::readCommand Reads a command from stdin
 */
void Runner::readCommand() {
	fgets(userInput, 1024, stdin);
	userInput[strlen(userInput) - 1] = '\0'; // Chomp the newline char
	return;
}

/*!
 * \brief Runner::doCommand Executes a command (or string of commands)
 */
void Runner::doCommand() {
    if (strlen(userInput) > 0){
        Command *command = new Command(userInput, commands.size());
        command->run();
        commands.push_back(command);
    }
}

/*!
 * \brief Runner::checkForBuiltIn Checks for a builtin command
 * @todo Probably should implment this as type enum
 */
void Runner::checkForBuiltIn() {
    if (strncmp(userInput, "exit", 4) == 0) {
        builtInNumber =  1;
    }
    else if (strncmp(userInput, "stats", 5) == 0) {
        builtInNumber = 2;
    }
    else if (strncmp(userInput, "cd", 2) == 0) {
        builtInNumber = 3;
    }
    else if (strncmp(userInput, "!", 1) == 0){
        builtInNumber = 4;
    }
}

/*!
 * \brief Runner::runBuiltIn Runs a built-in command
 */
void Runner::runBuiltIn(){
    if(builtInNumber == 2) stats();
    if(builtInNumber == 3) cd();
    if(builtInNumber == 4) hist();
}

/*!
 * \brief Runner::stats Writes statistics to stdout
 */
void Runner::stats() {
    (commands.front())->updateUsage();
    vector<Command*>::iterator commandIterator;
    cout << "**** Statistics ****" << endl;
    printf("%12s %10s %8s %8s %8s %8s %-20s\n", "User", "System", "Vol Sw", "Invol Sw", "Swaps", "Pg Fault", "Command");

    for(commandIterator = commands.begin();
        commandIterator != commands.end();
        commandIterator++) {
        (*commandIterator)->printStats();
	}
}

/*!
 * \brief Runner::cd Built in function that implements basic functionality of changing directories.
 */
void Runner::cd() {
    char *dir = (char *)(malloc (strlen(userInput) + 1));
    strcpy(dir, userInput);

    char *secondToken;
    secondToken = strtok(dir, " ");
    secondToken = strtok(NULL, " ");
    strtok(NULL, " ");

    if (secondToken == NULL) {
        cout << "Usage: cd <directory>" << endl;
        free (dir);
        return;
    }
    if (chdir(secondToken) != 0){
        cout << "Could not change to directory: " << secondToken << endl;
    }
    free (dir);
}

/*!
 * \brief Runner::hist A basic version of the ! command used in Bash
 */
void Runner::hist() {
    unsigned int index;
    index = atoi(userInput + 1);
    if (index && index < commands.size()) {
        strcpy(userInput, commands[index]->getUserInput());
        doCommand();
    }
    else if (index) {
        cout << "Could not run command number " << index << "!" << endl;
    }
    else if (*(userInput + 1) == '\0' && commands.size() > 1) {
        strcpy(userInput, commands.back()->getUserInput());
        doCommand();
    }
}

/*!
 * \brief Runner::waitForIncompleteProcesses Issues command to wait for all incomplete processes
 */
void Runner::waitForIncompleteProcesses(){
    for(unsigned i = 0; i < commands.size(); i++){
        commands[i]->waitToComplete();
    }
}
