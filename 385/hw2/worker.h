/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file worker.h
 * \brief Defines the Worker interface
 */

#ifndef WORKER_H
#define WORKER_H
#include "sharedmemory.h"
#include "messagequeue.h"
#include "semaphore.h"

/*!
 * \brief The Worker class Reads and writes to shared memory, sending messages on errors.
 */
class Worker {
    private:
        int argc;       /*!< Argument count. */
        char **argv;    /*!< Argument values. */
        char **envp;    /*!< Environment variables. */

        unsigned int id;            /*!< Id of this worker. */
        unsigned int numBuffers;    /*!< Number of buffers allocated by the parent. */
        unsigned int sleepTime;           /*!< Time to sleep. */
        unsigned int messageID;     /*!< ID of the message struct to use. */
        unsigned int sharedMemoryID;   /*!< ID of the shared memory to use. */
        int semaphoreID;   /*!< ID of the semaphore. */
        MessageQueue *queue;        /*!< Message queue object. */
        SharedMemory *memory;       /*!< Shared memory object. */
        Semaphore *semaphore;       /*!< Semaphore group object. */

        Worker* parseArgs();

        Worker* createQueue();
        Worker* createMemory();
        Worker* createSemaphore();

        Worker* writeToMemory(int);
        Worker* readFromMemory(int);
        Worker* readWriteLoop();
        Worker* wait(int);
        Worker* signal(int);
        Worker* findChangedBits(int, int, char*);


    public:
        Worker(int, char**, char**);
        ~Worker();
        Worker* run();
};

#endif // WORKER_H
