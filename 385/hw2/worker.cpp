/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file worker.cpp
 * \brief Defines the Worker class
 */

#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "worker.h"
#include "messagestruct.h"

using namespace std;

/*!
 * \brief main  The main function for the worker.  Just creates and calls the Worker object.
 * \param argc  The argument count.
 * \param argv  The argument values.
 * \param envp  The environment variables.
 * \return 0 if successful.
 */
int main(int argc, char **argv, char **envp) {
    Worker *worker = new Worker(argc, argv, envp);
    worker->run();
    delete (worker);
    return 0;
}

/*!
 * \brief Worker::Worker Constructor
 * \param argc Argument count
 * \param argv Argument values
 * \param envp Environment parameters
 */
Worker::Worker(int argc, char **argv, char **envp) {
   this->argc = argc;
   this->argv = argv;
   this->envp = envp;
}

/*!
 * \brief Worker::~Worker Destructor
 */
Worker::~Worker() {
    delete (queue);
}

/*!
 * \brief Worker::run Runner
 * \return This
 */
Worker* Worker::run() {
    parseArgs();
    createQueue();
    createMemory();
    createSemaphore(); /*!< Only creates if semID is sent through argv */
    readWriteLoop();
    return this;
}

/*!
 * \brief Worker::readWriteLoop The main reading and writing loop.
 * \return This
 */
Worker* Worker::readWriteLoop() {
    int buffer = 0;

    for (unsigned int i = 0; i < 3 * numBuffers; i++) {
        buffer = (buffer + id) % numBuffers;
        if ((i % 3) == 2){
            writeToMemory(buffer);
        }
        else {
           readFromMemory(buffer);
        }
    }

    return this;
}

/*!
 * \brief Worker::writeToMemory  Performs the write operation as described in documentation.
 * \param buffer The buffer to write to.
 * \return This
 */
Worker* Worker::writeToMemory(int buffer){
    wait(buffer);
    int first = memory->readValue(buffer);
    usleep(sleepTime);
    memory->writeValue(buffer, first + (1 << (id - 1)));
    signal(buffer);

    return this;
}

/*!
 * \brief Worker::readFromMemory Performs the read operation as described in documentation.
 * \param buffer The buffer to read from.
 * \return This
 */
Worker* Worker::readFromMemory(int buffer){
    char message[100];
    char changedBitsBuffer[20] = "\0";
    wait(buffer);
    int first = memory->readValue(buffer);
    usleep(sleepTime);
    int second = memory->readValue(buffer);
    signal(buffer);
    if (first != second) {
        findChangedBits(first, second, changedBitsBuffer);
        sprintf(message, "Worker number %d reported change from %d to %d in buffer %d. Bad bits:%s",
                id, first, second, buffer, changedBitsBuffer);
        queue->send(message, READ_ERROR_MESSAGE_TYPE);
    }

    return this;
}

/*!
 * \brief Worker::findChangedBits Finds the bits that have changed.
 * \param first The first number
 * \param second The second number
 * \param results The char array containing the results/
 * \return This
 */
Worker* Worker::findChangedBits(int first, int second, char *results){
    unsigned int additionalBits = first ^ (first | second);
    unsigned int missingBits = (first | second) ^ second;
    unsigned int mask = 1;

    int i = 1;
    while(additionalBits){
        if (additionalBits & mask){
            snprintf(results + strlen(results), 3, " %d", i);
        }
        i++;
        additionalBits = additionalBits >> 1;
    }

    i = 1;
    while(missingBits){
        if (missingBits & mask){
            snprintf(results + strlen(results), 4, " -%d", i);
        }
        i++;
        missingBits = missingBits >> 1;
    }

    return this;
}

/*!
 * \brief Worker::wait Wait for the resource to become available.  Only waits if a semID was sent in argv.
 * \param semNumber The semaphore number to wait for.
 * \return This
 */
Worker* Worker::wait(int semNumber) {
    if (semaphore != NULL){
        semaphore->wait(semNumber);
    }
    return this;
}

/*!
 * \brief Worker::signal Signals a semaphore that the operation has completed.  Only signals if a semID was sent in argv.
 * \param semNumber The semaphore number to signal.
 * \return This
 */
Worker* Worker::signal (int semNumber) {
    if (semaphore != NULL){
        semaphore->signal(semNumber);
    }
    return this;
}


/*!
 * \brief Worker::createMemory Gets the memory that was allocated by the master
 * \return This
 */
Worker* Worker::createMemory() {
    memory = new SharedMemory(numBuffers);
    memory->setID(sharedMemoryID)->attach();

    return this;
}

/*!
 * \brief Worker::createQueue Connect to an already created queue
 * \return This
 */
Worker* Worker::createQueue() {
    queue = new MessageQueue(false);
    queue->setID(messageID);
    return this;
}

/*!
 * \brief Worker::createSemaphore Creates a semaphore object if semID was sent in argv.
 * \return This
 */
Worker* Worker::createSemaphore() {
    if (semaphoreID >= 0){
        semaphore = new Semaphore(numBuffers);
        semaphore->setID(semaphoreID);
    }
    else {
        semaphore = NULL;
    }
    return this;
}

/*!
 * \brief Worker::parseArgs Parse the arguments.
 * \return  This
 */
Worker* Worker::parseArgs() {
    if (argc < 4) {
        cout << "Usage: "
             << argv[0]
             << " workerID nBuffers sleepTime msgID shmID [ semID ]"
             << endl;
        exit(-1);
    }

    id = atoi(argv[1]);
    numBuffers = atoi(argv[2]);
    sleepTime = (unsigned int) (atof(argv[3]) * 1000000);
    messageID = atoi(argv[4]);
    sharedMemoryID = atoi(argv[5]);

    if (argc > 4) {
        semaphoreID = atoi(argv[6]);
    }
    return this;
}
