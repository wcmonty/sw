/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file runner.h
 * \brief Defines the Runner interface
 */
#ifndef RUNNER_H
#define RUNNER_H

#include <iostream>
#include <vector>
#include "chunker.h"

using namespace std;

/*!
 * \brief The Runner class Singleton class that controls the flow of the program
 */
class Runner
{
private:
    int argc;               /*!< The argument count */
    char **argv;            /*!< The argument value */
    int nThreads;           /*!< The number of processing threads */
    int chunkSize;          /*!< The size of the chunks */
    int polynomialOrder;    /*!< The order of the polynomial */
    int candidates;         /*!< The number of candidates */

    Chunker *chunker;       /*!< The Chunker */
    Semaphore *semaphore;   /*!< The Semaphore */
    Chunk *bestChunk;       /*!< Pointer to the best chunk found so far */
    bool printed;           /*!< Boolean of whether the best chunk has been printed */
    bool threadsDone;       /*!< Boolean of whether the processing threads have completed */
    static bool isSet;      /*!< True if the runner object has been created. */
    static Runner* runner;  /*!< The Singleton */

    Runner* processArgs();
    Runner* writeAuthorInformation();
    Runner* launchThreads();

    static void* analyze(void*);
    static void* displayResults(void*);
public:
    Runner* run();
    enum semaphores {BESTCHUNK, PRINTED};

    static Runner* getRunner(int, char**);
    static Runner* getRunner();
    Runner(int argc, char **argv);
    ~Runner();

    Runner* setBestChunk(Chunk *chunk);
    Chunk* getBestChunk();

};

#endif // RUNNER_H
