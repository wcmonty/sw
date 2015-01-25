/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file sharedmemory.h
 * \brief Defines the SharedMemory interface
 */

#ifndef SHAREDMEMORY_H
#define SHAREDMEMORY_H

/*!
 * \brief The SharedMemory class Encapsulates the shared memory functions.
 */
class SharedMemory {
    private:
        int id;
        int nBuffers;
        void *voidAddress;
        int *address;
    public:
        SharedMemory(const int);
        ~SharedMemory();
        SharedMemory* get(bool);
        SharedMemory* attach();
        SharedMemory* detach();
        SharedMemory* remove();
        SharedMemory* setID(int id);
        SharedMemory* clear();
        int getID();
        int* getAddress();

        SharedMemory* writeValue(int, int);
        int readValue(int);
};

#endif // SHAREDMEMORY_H
