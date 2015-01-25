/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file runner.cpp
 * \brief Defines the implementation of the Runner class
 */
#include <stdlib.h>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/resource.h>
#include "runner.h"

using namespace std;

static const int SLEEPTIME = 1;

/*!
 * \brief Struct used to pass information specific to a single thread.
 * Currently is passed, but is ignrored.
 */
typedef struct str_thdata
{
    int thread_no;
} thdata;


bool Runner::isSet = false;
Runner* Runner::runner = NULL;

/*!
 * \brief Runner::Runner Constructor for Runner
 * \param argc  The argument count
 * \param argv  The argument values
 */
Runner::Runner(int argc, char **argv)
{
    this->argc = argc;
    this->argv = argv;
    this->semaphore = new Semaphore(2);
    this->semaphore->get()->set(1);
    this->bestChunk = NULL;
    this->printed = true;
    this->threadsDone = false;
    this->candidates = 0;
}

/*!
 * \brief Runner::~Runner Destructor
 */
Runner::~Runner(){
    delete chunker;

    delete bestChunk;
    delete semaphore;
    isSet = false;
}

/*!
 * \brief Runner::getRunner Gets the Singleton (or creates if not created)
 * \param argc  The argument count
 * \param argv  The argument values
 * \return The Singleton instance
 */
Runner* Runner::getRunner(int argc, char **argv)
{
    if(!isSet){
        runner = new Runner(argc, argv);
        isSet = true;
    }

    return runner;
}

/*!
 * \brief Runner::getRunner Gets the Singleton
 * \return The Singleton instance
 */
Runner* Runner::getRunner()
{
    if(!isSet){
        return NULL;
    }

    return runner;
}

/*!
 * \brief Runner::run Runs the runner
 * \return this
 */
Runner* Runner::run() {
    struct rusage usage;
    processArgs();
    writeAuthorInformation();
    launchThreads();

    // Print out the results
    this->bestChunk->printData();
    this->bestChunk->printBlock();

    getrusage(RUSAGE_SELF, &usage);
    /*! @todo
     * When the program finishes it should report final statistics, such as the
     * number of threads used, the number of candidates found, the time it took,
     * and also report the best candidates found, with their criteria and plots.
     */
    cout << "################################################################################" << endl;
    cout << "Processing completed for " << argv[1] << endl;
    cout << "User time: " << usage.ru_utime.tv_sec << "." << usage.ru_utime.tv_usec << endl;
    cout << "System time: " << usage.ru_stime.tv_sec << "." << usage.ru_stime.tv_usec << endl;
    cout << "Processing used " << nThreads << " processing threads and 1 printing thread." << endl;
    cout << this->candidates << " candidates were found." << endl;
    cout << "The best candidate is plotted above." << endl;
    cout << "################################################################################" << endl;
    return this;
}

/*!
 * \brief Runner::launchThreads  Launches the threads to process the input file.
 * If n threads are called from the command line, the program launches n + 1 threads.
 * n threads are used for processing, and one is used for displaying the results.
 * \return this
 */
Runner* Runner::launchThreads()
{
    pthread_t *threads;
    thdata *threadData;

    // Create arrays for threads
    int total = this->nThreads + 1;
    int last = this->nThreads;
    threads = (pthread_t*) calloc(sizeof(pthread_t),  sizeof(pthread_t) * total);
    threadData = (thdata*) calloc(sizeof(thdata), sizeof(thdata) * total);

    // Launch processing threads
    for (int i = 0; i < nThreads; i++){
        threadData[i].thread_no = i;
        if( pthread_create (&threads[i], NULL, &Runner::analyze, (void*) &threadData[i]) < 0){
            perror("Error creating threads:");
        }
    }

    // Launch printing thread
    threadData[last].thread_no = last;
    if( pthread_create (&threads[last], NULL, &Runner::displayResults, (void*) &threadData[last]) < 0){
        perror("Error creating threads:");
    }

    // Join the processing threads
    for (int i = 0; i < nThreads; i++){
        pthread_join(threads[i], NULL);
    }

    // Signal that the processing threads are done and join the printing thread
    this->threadsDone = true;
    pthread_join(threads[last], NULL);

    // Clean up
    free(threads);
    free(threadData);

    return this;
}

/*!
 * \brief Runner::displayResults Static method used for the displaying of results
 * \param input A pointer to a struct. Currently just stubbed out for future development.
 * \return 0 if success
 */
void* Runner::displayResults(void *input){
    (void) input; /*!< input is not used, because we can get the object with Runner::getRunner() */

    Runner *self = Runner::getRunner();

    // While the processing threads are still working print the best chunk so far
    while (!self->threadsDone) {
        self->semaphore->wait(BESTCHUNK);
        if (!self->printed) {
            self->bestChunk->printData();
            self->bestChunk->printBlock();
            self->candidates += 1;
        }
        self->printed = true;
        self->semaphore->signal(BESTCHUNK);
    }
    pthread_exit(0);
}

/*!
 * \brief Runner::analyze Static method used for the processing of chunks of data
 * \param input A pointer to a struct. Currently just stubbed out for future development.
 * \return 0 if success
 */
void* Runner::analyze(void *input){
    (void) input; /*< input is not used, because we can get the object with Runner::getRunner() */

    Runner *self = Runner::getRunner();
    Chunk *chunk;

    // While there are more chunks, get one and process it
    chunk = self->chunker->getChunk();
    while (chunk != NULL){
        chunk->process();
        chunk = self->chunker->getChunk();
    };
    delete chunk; // Delete the last NULL chunk

    pthread_exit(0);
}

/*!
 * \brief Runner::processArgs Processes the command line arguments
 * \return this
 * @todo Need to get the order for the polynomial
 */
Runner* Runner::processArgs() {
    if (argc != 5){
        cout << "Usage: " << argv[0] << " inputDataFile chunkSize nThreads polynomialOrder" << endl;
        exit (-1);
    }

    // argv[0] is name of executable
    // argv[1] is filename
    // argv[2] is chunk size
    // argv[3] is the number of processing threads
    // argv[4] is the order of the polynomial
    chunker = new Chunker(argv[1], atoi(argv[2]), atoi(argv[4]));
    this->nThreads = atoi(argv[3]);

    if (this->nThreads <= 0){
        this->nThreads = 1;
    }

    return this;
}

/*!
 * \brief Runner::setBestChunk Tries to set a chunk as the best chunk
 * \param chunk The chunk to be set
 * \return this
 */
Runner* Runner::setBestChunk(Chunk *chunk) {

    // Wait for the current best chunk to be printed
    semaphore->wait(PRINTED);
    while (!printed) {
        semaphore->signal(PRINTED);
        usleep(1);
        semaphore->wait(PRINTED);
    }

    // If this chunk is still the best chunk, delete the last chunk and set this on
    semaphore->wait(BESTCHUNK);
    if (this->bestChunk == NULL || this->bestChunk->getError() > chunk->getError()){
        delete this->bestChunk;
        this->bestChunk = chunk;
        this->printed = false;
    }
    // Otherwise, there is a new better, discard this one
    else {
        delete chunk;
    }
    semaphore->signal(BESTCHUNK);
    semaphore->signal(PRINTED);
    return this;
}

/*!
 * \brief Runner::getBestChunk Getter for bestChunk
 * \return This
 */
Chunk* Runner::getBestChunk() {
    return bestChunk;
}

/*!
 * \brief Master::writeAuthorInformation Writes the author information to stdout
 */
Runner* Runner::writeAuthorInformation(){
    cout << argv[0] << " by William Montgomery (wmontg2)" << endl;
    cout << endl;
    return this;
}
