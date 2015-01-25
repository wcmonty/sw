/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file chunker.cpp
 * \brief Defines the implementation of the Chunker class
 */
#include <iostream>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include "chunker.h"

/*!
 * \brief Chunker::Chunker Constructor
 * \param filename The filename to chunk
 * \param chunkSize The size of the chunk
 * \param polynomialOrder The order of the polynomial to fit
 */
Chunker::Chunker(char *filename, int chunkSize, int polynomialOrder)
{
    this->filename = filename;
    this->chunkSize = chunkSize;
    this->polynomialOrder = polynomialOrder;

    this->bytesRead = 0;
    this->semaphore = new Semaphore(NUMSEMAPHORES);
    this->semaphore->get()->set(1);
    setFileSize();
    map();
}

/*!
 * \brief Chunker::~Chunker Destructor
 */
Chunker::~Chunker(){
    unmap();
    delete semaphore;
}

/*!
 * \brief Chunker::map Map the file to virtual memory
 * \return this
 */
Chunker* Chunker::map(){
    openFile();
    mappedFile = (char*)mmap (0, fileSize, PROT_READ, MAP_SHARED, fd, 0);
    if (mappedFile == (caddr_t) -1){
        perror("Could not map file:");
        exit(-1);
    }
    currentPosition = mappedFile;
    return this;
}

/*!
 * \brief Chunker::unmap Unmaps the file from virtual memory
 * \return this
 */
Chunker* Chunker::unmap(){
    if (munmap(mappedFile, fileSize) < 0){
        perror("Could not unmap file:");
    }
    closeFile();
    return this;
}

/*!
 * \brief Chunker::openFile Opens a file for reading
 * \return this
 */
Chunker* Chunker::openFile(){
    fd = open(filename,  O_RDONLY, (mode_t)0600);
    if (fd <= 0) {
        cout << "The file could not be opened." << endl;
        exit(-1);
    }
    return this;
}

/*!
 * \brief Chunker::closeFile Closes a file
 * \return this
 */
Chunker* Chunker::closeFile(){
    close(fd);
    return this;
}

/*!
 * \brief Chunker::setFileSize Gets the size of the file and sets fileSize
 * \return this
 */
Chunker *Chunker::setFileSize() {
    struct stat results;

    if (stat(filename, &results) == 0) {
        fileSize = results.st_size;
    }
    else {
        perror("Could not determine file size:");
        exit(-1);
    }
    return this;
}

/*!
 * \brief Chunker::moreChunks Boolean of whether there are more chunks to process
 * \return true if more to process, false otherwise
 */
bool Chunker::moreChunks(){
    return (currentPosition < (mappedFile + fileSize));
}

/*!
 * \brief Chunker::getChunk Gets a chunk
 * \return Pointer to new Chunk, or NULL if none left to process
 */
Chunk* Chunker::getChunk(){
    semaphore->wait(READ);
    Chunk *chunk = NULL;
    if (moreChunks()) {
        chunk = new Chunk(this->polynomialOrder);
        chunk->setData(currentPosition);
        chunk->setPosition(bytesRead);

        // Determine the new position
        currentPosition = currentPosition + chunkSize;
        int size = chunkSize;

        // Determine the size of the chunk
        if (!moreChunks()){
            size = fileSize - bytesRead;
        }
        bytesRead += size;
        chunk->setSize(size);
    }
    semaphore->signal(READ);
    return chunk;
}
