/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <iostream>
#include <vector>
#include "command.h"


using namespace std;
/*!
 * \brief Command::Command Constructor
 * \param input char* representing the user input
 * \param pos The position of the command for used in history
 */
Command::Command(char *input, unsigned int pos){
    // Create two copies of the user input
    userInput = (char*) malloc(strlen(input) + 1);
    strcpy(userInput, input);

    currentCommand = (char *) malloc(strlen(userInput) + 1);
    strcpy(currentCommand, userInput);

    // Create a new dummy child if it is the initial
    if (!pos) {
        Child *child = new Child(userInput);
        children.push_back(child);
    }

    // Initialize instance variables
    currentPipe = NULL;
    nextPipe = new Pipe(-1, -1);
    complete = false;
    position = pos;
    setBackground();
}

/*!
 * \brief Command::Command Constructor
 * \param input char* representing the user input
 */
Command::Command(char *input) {
    // Create two copies of the user input
    userInput = (char*) malloc(strlen(input) + 1);
    strcpy(userInput, input);

    currentCommand = (char *) malloc(strlen(userInput) + 1);
    strcpy(currentCommand, userInput);

    // Initialize instance variables
    complete = false;
    position = 0;
    setBackground();
}

/*!
 * \brief Command::~Command Destructor
 */
Command::~Command() {
    free (userInput);
    free (currentCommand);
    delete nextPipe;
    delete currentPipe;
    while (children.size() > 0) {
        delete children.back();
        children.pop_back();
    }
    currentPipe = NULL;
    nextPipe = NULL;

}

/*!
 * \brief Command::run Run the command
 */
void Command::run(){
    tokenizePipes();
    issueCommands();
}

/*!
 * \brief Command::updateUsage Updates the rusage struct for the first child
 */
void Command::updateUsage(){
    children.front()->updateUsage();
}

/*!
 * \brief Command::printStats Prints the statistics for all the children
 */
void Command::printStats(){
    cout << "[" << position << "] " << userInput << endl;
    vector<Child*>::iterator childrenIterator;
    for(childrenIterator = children.begin();
        childrenIterator != children.end();
        childrenIterator++) {

        (*childrenIterator)->printStats();
    }
}

/*!
 * \brief Command::tokenizePipes Creates tokens around the pipe '|' symbol
 */
void Command::tokenizePipes() {
    pipedCommands.push_back(strtok(currentCommand, "|"));
    do {
        pipedCommands.push_back(strtok(NULL, "|"));
    } while (pipedCommands.back() != NULL);

    pipedCommands.pop_back();
}

/*!
 * \brief Command::createPipe Creates a pipe and assigns to currentPipe and nextPipe variables.
 *      Also deletes the currentPipe.
 */
void Command::createPipe(){
    int pipeArray[2];

    if (pipe(pipeArray) < 0) {
        perror("Error creating pipe");
        exit(EXIT_FAILURE);
    }

    Pipe *pipe = new Pipe(pipeArray[0], pipeArray[1]);

    delete currentPipe;
    currentPipe = nextPipe;
    nextPipe = pipe;
}

/*!
 * \brief Command::issueCommands Creates children for each tokenized command and forks the command
 */
void Command::issueCommands() {
    Child *child;

    for (unsigned it = 0; it < pipedCommands.size(); it++){
        if (pipedCommands.size() == 1) { // First and last element
            child = new Child(pipedCommands[it], -1, -1, -1, background);
        }
        else if (it == pipedCommands.size() - 1) { // Last
            child = new Child(pipedCommands[it], nextPipe->out, -1, -1, background);
        }
        else if (it == 0){ // First
            createPipe();
            child = new Child(pipedCommands[it], -1, nextPipe->in, nextPipe->out, background);
        }
        else {
            createPipe();
            child = new Child(pipedCommands[it], currentPipe->out, nextPipe->in, nextPipe->out, background);
        }
        child->createFork();
        children.push_back(child);
    }
    printStats();
}

/*!
 * \brief Command::setBackground Searches the input string for the ampersand cahracter.  If it exists, it sets that position
 *      to '\0' and sets background to true.
 */
void Command::setBackground(){
    char *backgroundPos = strchr(currentCommand, '&');

    if (backgroundPos) {
        background = true;
        *backgroundPos  = '\0';
    }
    else {
        background = false;
    }
}

/*!
 * \brief Command::waitToComplete Waits for all of the children to complete.  To be used before issuing a new prompt to wait for completed children.
 */
void Command::waitToComplete() {
    if (complete) {
        return;
    }
    else {
        bool allDone = true;
        for(unsigned i = 0; i < children.size(); i++) {
            if (!children[i]->isComplete()){
                children[i]->doParent();
                allDone = false;
            }
        }
        complete = allDone;
    }
}

/*!
 * \brief Command::setComplete setter for complete instance variable
 * \param status boolean representing whether the command has completed
 */
void Command::setComplete(bool status) {
    complete = status;
}

/*!
 * \brief getUserInput Getter method for userInput
 * \return userInput
 */
char* Command::getUserInput() {
    return userInput;
}
