/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file semaphore.h
 * \brief Defines the Semaphore interface
 */

#ifndef SEMAPHORE_H
#define SEMAPHORE_H

/*!
 * \brief The Semaphore class Encapsulates the semaphore operations.
 */
class Semaphore {
    private:
        int id;     /*!< The id of the semaphore set */
        int numSemaphores; /*!< The number of semaphores in the set. */

      public:
        Semaphore(int);
        Semaphore* get();
        Semaphore* set(int);
        Semaphore* wait(int);
        Semaphore* signal(int);
        Semaphore* remove();
        int getID();
        Semaphore* setID(int);
};

#endif // SEMAPHORE_H
