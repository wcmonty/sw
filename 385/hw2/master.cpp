/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file master.cpp
 * \brief Defines the Master class
 */

#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include "master.h"
#include "sort_child.h"
#include "messagestruct.h"

using namespace std;

/*!
 * \brief Master::Master Constructor for Master
 * \param a int representing the number of args passed
 * \param b char** representing argv
 * \param c char** representing envp
 */
Master::Master(int a, char **b, char **c) {
	argc = a;
	argv = b;
    envp = c;
    randSeed = 0;
    lock = false;

    toSort = new Pipe;
    fromSort = new Pipe;

}

/*!
 * \brief Master::~Master Destructor for Master
 */
Master::~Master() {
    // Free the message queue
    if (queue != NULL) {
        queue->remove();
    }
    delete (queue);

    // Free the shared memory
    if (memory != NULL) {
        memory->detach()->remove();
    }
    delete (memory);

    // Free the semaphore group
    if (semaphore != NULL){
        semaphore->remove();
    }
    delete (semaphore);

    // Free the pipes
    delete (toSort);
    delete (fromSort);

    // Free the buffers
    free (randBuffer);
    free (sortedBuffer);
}

/*!
 * \brief Master::writeAuthorInformation Writes the author information to stdout
 */
Master* Master::writeAuthorInformation(){
    cout << "IPC & Synchronization by William Montgomery (wmontg2)" << endl;
    cout << endl;
    return this;
}

/*!
 * \brief Master::run Runs the master
 */
Master* Master::run() {
    writeAuthorInformation();
    parseArgs();
    srand(randSeed);

    queue = new MessageQueue(true);
    queue->get();

    memory = new SharedMemory(numBuffers);
    memory->get(true)->attach()->clear();

    if (lock) {
        semaphore = new Semaphore(numBuffers);
        semaphore->get()->set(1);
    }
    else {
        semaphore = NULL;
    }

    writeRandomsToBuffer()->openPipes()->sort()->tokenizeSortedBuffer();

    spawnWorkers()->waitForWorkers();

    receiveMessages();

    return this;
}

/*!
 * \brief Master::readMemory Reads from the shared memory and displays the results.
 * \return The number of errors found.
 */
int Master::readMemory() {
    int numErrors = 0;

    for(unsigned int i = 0; i < numBuffers; i++) {
        if ( memory->readValue(i) != (1 << nWorkers) - 1) {
            cout << "Error in buffer " << i + 1 << ". Value was " << memory->readValue(i) << ".  ";
            cout << "Bad bits = ";
            printBadWrites(memory->readValue(i));
            cout << endl;
            numErrors++;
        }
    }
    return numErrors;
}

/*!
 * \brief Master::printBadWrites Prints out the problem bits that were found in a shared memory location.
 * \param value
 * \return This
 */
Master* Master::printBadWrites (int value){
    int correctValue = (1 << nWorkers) - 1;
    int bitMask = 1;

    value = value ^ correctValue;
    for (unsigned int i = 0; i < nWorkers; i++){
        if ((value >> i) & bitMask) {
            cout << i + 1 << " ";
        }
    }

    return this;
}

/*!
 * \brief Master::receiveMessages Receives messages in queue
 * \return This
 */
Master* Master::receiveMessages() {
    int readErrors = 0;

    while (queue->receive(READ_ERROR_MESSAGE_TYPE) >= 0){
        readErrors++;
    }

    cout << endl;
    int writeErrors = readMemory();
    cout << endl << readErrors << " read errors and " << writeErrors << " write errors encountered." << endl;
    return this;
}

/*!
 * \brief Master::spawnWorkers Spawns nWorkers workers
 * \return This
 */
Master* Master::spawnWorkers() {
    WorkerChild *worker;
    int semaphore_id = -1;
    if (semaphore != NULL){
        semaphore_id = semaphore->getID();
    }

    for (unsigned int i = 0; i < nWorkers; i++){
        worker = new WorkerChild(i + 1, this->numBuffers,
                                 times[i], queue->getID(), memory->getID(), semaphore_id);
        worker->createFork();
        workers.push_back(worker);
    }

    return this;
}

/*!
 * \brief Master::waitForWorkers Wait for workers to finish
 * \return This
 */
Master* Master::waitForWorkers() {
    for (unsigned int i = 0; i < nWorkers; i++){
        workers.back()->doParent();
        delete (workers.back());
        workers.pop_back();
    }

    return this;
}

/*!
 * \brief Master::openPipes Opens two pipes
 * \return This
 */
Master* Master::openPipes() {
    toSort->open();
    fromSort->open();
    return this;
}

/*!
 * \brief Master::sort Forks sort and writes results to sortedBuffer
 * \return This
 */
Master* Master::sort() {
    sortedBuffer = (char *) malloc(BUFFER_SIZE);

    SortChild *sortChild;
    sortChild = new SortChild(
                          toSort->getOut(), toSort->getIn(),
                          fromSort->getOut(), fromSort->getIn(),
                          randBuffer, strlen(randBuffer), sortedBuffer);
    sortChild->createFork();

    delete (sortChild);
    return this;
}

/*!
 * \brief Master::writeRandomsToBuffer Writes nWorkers floats
 *        to a buffer.  Floats are between sleepMin and sleepMax
 */
Master* Master::writeRandomsToBuffer() {
    randBuffer = (char *) malloc(BUFFER_SIZE);
    float random;

    random = randomFloat();
    sprintf(randBuffer, "%f\n", random);

    for (unsigned int i = 1; i < nWorkers; i++){
        random = randomFloat();
        sprintf(randBuffer + strlen(randBuffer), "%f\n", random);
    }
    return this;
}

/*!
 * \brief Master::parseArgs Parses command line arguments
 * \return this
 */
Master* Master::parseArgs() {
    if (argc < 4) {
        cout << "Usage: "
             << argv[0]
             << " nBuffers nWorkers sleepMin sleepMax [ randSeed ] [ -lock | -nolock ]"
             << endl;
        exit(-1);
    }

    numBuffers = atoi(argv[1]);
    nWorkers = atoi(argv[2]);
    sleepMin = atof(argv[3]);
    sleepMax = atof(argv[4]);
    randSeed = time(NULL);

    setLock();
    setRandSeed();

    return this;
}

/*!
 * \brief Master::setLock Sets lock based on args
 * \return This
 */
Master* Master::setLock(){
    if (argc > 5) {
        if ((strncmp(argv[5], "-lock", 5) == 0) ||
                (argc > 6 && (strncmp(argv[6], "-lock", 5) == 0 ))) {
            lock = true;
        }
    }
    return this;
}

/*!
 * \brief Master::setRandSeed Sets randSeed based on args
 * \return This
 */
Master* Master::setRandSeed() {
    if ((unsigned)argc > NUM_MANDATORY_ARGS) {
        if (strncmp(argv[4], "-", 1) != 0) {
            randSeed = atoi(argv[4]);
        }
    }

    return this;
}

/*!
 * \brief Master::tokenizeSortedBuffer Tokenizes the sorted buffer
 * \return This
 */
Master* Master::tokenizeSortedBuffer(){
    times[0] = strtok(sortedBuffer, "\n");
    unsigned int current = 0;
    while (times[current] != NULL) {
        current++;
        times[current] = strtok(NULL, "\n");
    }
    return this;
}

/*!
 * \brief Master::randomFloat
 * \return A random float between sleepMin and sleepMax
 */
float Master::randomFloat() {
    float random = ((float) rand()) / (float) RAND_MAX;
    float diff = sleepMax - sleepMin;
    float r = random * diff;
    return sleepMin + r;
}
