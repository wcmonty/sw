/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file chunker.h
 * \brief Defines the Chunker interface
 */
#ifndef CHUNKER_H
#define CHUNKER_H
#include <fstream>
#include "semaphore.h"
#include "chunk.h"
using namespace std;

static const int NUMSEMAPHORES = 1;

/*!
 * \brief The Chunker class Encapsulates the process of breaking down a file into chunks
 */
class Chunker
{
private:
    enum semaphores {READ}; /*!< Enum for the semaphores. */
    char *filename;         /*!< The name of the file. */
    int chunkSize;          /*!< The size of the chunks (should be the same for all except possibly the last chunk). */
    int polynomialOrder;    /*!< The order of the polynomial. */

    long long fileSize;     /*!< The size of the file. */
    long long bytesRead;    /*!< The number of bytes "read" so far. */

    int fd;                 /*!< A file descriptor to the file. */
    char *mappedFile;       /*!< A pointer to the mapped file. */
    char *currentPosition;  /*!< The current position of the file. */

    Semaphore *semaphore;   /*!< A semaphore, so that the same chunk is not given twice */

    Chunker* setFileSize();
    Chunker* openFile();
    Chunker* closeFile();

    bool moreChunks();

public:
    Chunker(char*, int, int);
    ~Chunker();
    Chunker* map();
    Chunker* unmap();
    Chunk* getChunk();
};

#endif // CHUNKER_H
