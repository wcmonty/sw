/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file sharedmemory.cpp
 * \brief Defines the SharedMemory class
 */

#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include "sharedmemory.h"

using namespace std;

/*!
 * \brief SharedMemory::SharedMemory Constructor
 * \param nBuffers
 */
SharedMemory::SharedMemory(const int nBuffers){
    id = -1;
    voidAddress = NULL;
    address = NULL;
    this->nBuffers = nBuffers;
}

/*!
 * \brief SharedMemory::~SharedMemory Destructor
 */
SharedMemory::~SharedMemory() {

}

/*!
 * \brief SharedMemory::remove Removes the shared memory
 * \return This
 */
SharedMemory* SharedMemory::remove() {
    if (id >= 0){
        shmctl(id, IPC_RMID, NULL);
    }
    return this;
}

/*!
 * \brief SharedMemory::get Makes a syscall to get a shared memory segment.
 * \param initial True if initial allocation
 * \return This
 */
SharedMemory* SharedMemory::get(bool initial){
    key_t key = IPC_PRIVATE;
    int size = nBuffers * sizeof(int);
    int flags = 0;
    if(initial) {
        flags =  IPC_CREAT | IPC_EXCL | 0600;
    }
    id = shmget(key, size, flags);

    if(id < 0){
        perror("shmget");
    }
    return this;
}

/*!
 * \brief SharedMemory::attach Attaches shared memory to the local address space.
 * \return This
 */
SharedMemory* SharedMemory::attach(){
    voidAddress = shmat(id, NULL, 0);
    if (voidAddress < 0){
        perror("shmat");
    }

    address = (int*)voidAddress;
    return this;
}

/*!
 * \brief SharedMemory::detach Detaches shared memory from the local address space.
 * \return This
 */
SharedMemory* SharedMemory::detach(){
    int result = shmdt(voidAddress);
    if (result < 0) {
        perror("shmdt:");
    }
    return this;
}

/*!
 * \brief SharedMemory::clear Clears the contents of the shared memory
 * \return This
 */
SharedMemory* SharedMemory::clear() {
    memset (voidAddress, '\0', nBuffers * sizeof(int));
    return this;
}

/*!
 * \brief SharedMemory::writeValue Writes a value to shared memory
 * \param i The index to write to
 * \param value The value to write
 * \return This
 */
SharedMemory* SharedMemory::writeValue(int i, int value) {
    address[i] = value;

    return this;
}

/*!
 * \brief SharedMemory::readValue Reads a value to shared memory
 * \param i The index to read
 * \return The value at index i
 */
int SharedMemory::readValue(int i) {
    return address[i];
}

/*!
 * \brief SharedMemory::getAddress Getter for the mapped address
 * \return The address
 */
int* SharedMemory::getAddress() {
    return address;
}

/*!
 * \brief SharedMemory::getID Getter for id
 * \return id
 */
int SharedMemory::getID() {
    return id;
}

/*!
 * \brief SharedMemory::setID Setter for id
 * \param id id
 * \return This
 */
SharedMemory* SharedMemory::setID(int id) {
    this->id = id;
    return this;
}
