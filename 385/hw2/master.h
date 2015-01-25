/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file master.h
 * \brief Defines the interface to Master
 */

#ifndef MASTER_H_INCLUDED
#define MASTER_H_INCLUDED
#include <stdlib.h>
#include <vector>
#include <string>
#include "pipe.h"
#include "messagequeue.h"
#include "sharedmemory.h"
#include "semaphore.h"
#include "worker_child.h"


using namespace std;

static const unsigned int NUM_MANDATORY_ARGS = 5;

/*! Maximum number of children is 31 */
static const unsigned int MAX_CHILDREN = 31;

/*! Maximum size of float display is 16 + 1 for newline.  Add one just for fun. */
static const unsigned int BUFFER_SIZE = MAX_CHILDREN * 18;

/*!
 * \brief The Master class Coordinates all other actions and outputs results.
 */
class Master {
	private:
        int argc;               /*!< Number of args. */
        char **argv;            /*!< Pointer to the arg array. */
        char **envp;            /*!< Pointer to the environment array. */
        unsigned int numBuffers;  /*!< The number of buffers. */
        unsigned int nWorkers;  /*!< The number of workers to fork. */
        double sleepMin;         /*!< The minimum time to sleep. */
        double sleepMax;         /*!< The maximum time to sleep. */
        unsigned int randSeed;  /*!< Random seed to srand(). */
        bool lock;              /*!< Set to true is semaphores are to be used. */
        char *randBuffer;       /*!< A buffer holding the random numbers. */
        char *sortedBuffer;     /*!< A buffer holding the sorted numbers. */
        Pipe *toSort;           /*!< The pipe going to the sort function. */
        Pipe *fromSort;         /*!< The pipe coming from the sort function. */
        char* times[MAX_CHILDREN + 1];
                                /*!< Pointers to the sorted, tokenized random
                                 *   number strings. */
        MessageQueue *queue;    /*!< The message queue. */
        SharedMemory *memory;   /*!< The shared memory. */
        Semaphore *semaphore;   /*!< The semaphore group. */

        vector<WorkerChild*> workers;
                                /*!< Vector holding pointers to workers. */

        float randomFloat();
        Master* parseArgs();
        Master* setLock();
        Master* setRandSeed();
        Master* seedRandom();
        Master* writeRandomsToBuffer();
        Master* openPipes();
        Master* sort();
        Master* tokenizeSortedBuffer();
        Master* spawnWorkers();
        Master* waitForWorkers();
        Master* receiveMessages();
        int readMemory();
        Master* printBadWrites(int);

    public:
		Master(int, char**, char**);
		~Master();
        Master* writeAuthorInformation();
        Master* run();
};
#endif
