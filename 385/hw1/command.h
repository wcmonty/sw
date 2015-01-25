/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#ifndef COMMAND_H_INCLUDED
#define COMMAND_H_INCLUDED
#include <stdlib.h>
#include <vector>
#include "child.h"
#include "pipe.h"

class Command {
	private:
        char* userInput;            /*!< Input from user */
        char* currentCommand;       /*!< The current command being processed after userInput is tokenized */
        bool background;            /*!< Boolean representing whether this runs in the background. */
        bool complete;              /*!< Boolean representing whether the command has completed. */
        unsigned int position;      /*!< An integer representing the position of the command. */

        std::vector<char*> pipedCommands;   /*!< Array of commands broken down by '|' symbol. */
        std::vector<Child*> children;       /*!< Array of child processes. */

        Pipe *currentPipe;          /*!< The current pipe */
        Pipe *nextPipe;             /*!< The next pipe */

        void tokenizePipes();
        void issueCommands();
        void issueSingleCommand();
        void createPipe();
        void setBackground();
    public:
        Command(char*);
        Command(char*, unsigned int);
        ~Command();

        void run();
        void printStats();
        void updateUsage();
        void waitToComplete();
        void setComplete(bool);
        char* getUserInput();
};
#endif
