/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file semaphore.cpp
 * \brief Defines the Semaphore class
 */

#include <sys/sem.h>
#include <stdio.h>
#include <iostream>
#include "semaphore.h"

using namespace std;

/*!
 * \brief Semaphore::Semaphore Constructor
 * \param numSemaphores The number of semaphores to create in the semaphore group.
 */
Semaphore::Semaphore(int numSemaphores) {
    id = -1;
    this->numSemaphores = numSemaphores;
}

Semaphore::~Semaphore(){
    remove();
}

/*!
 * \brief Semaphore::get Uses a syscall to get a semaphore
 * \return This
 */
Semaphore* Semaphore::get(){
    id = semget(IPC_PRIVATE, numSemaphores, IPC_CREAT | 0600);
    if (id < 0){
        perror("semget");
    }
    return this;
}

/*!
 * \brief Semaphore::set Sets all semaphores to a value
 * \param value The value to set
 * \return This
 */
Semaphore* Semaphore::set(int value){
    int result;
    for (int i = 0; i < numSemaphores; i++){
        result = semctl(id, i, SETVAL, value);
        if (result < 0) {
            perror("semctl");
        }
    }

    return this;
}

/*!
 * \brief Semaphore::wait Waits for a semaphore
 * \param number The number of the semaphore
 * \return This
 */
Semaphore* Semaphore::wait(int number){
    struct sembuf sem_op;
    sem_op.sem_num = number;
    sem_op.sem_op = -1;
    sem_op.sem_flg = 0;

    int result = semop(id, &sem_op, 1);
    if (result < 0){
        perror("semop (wait)");
    }

    return this;
}

/*!
 * \brief Semaphore::signal Signal a semaphore
 * \param number The number of the semaphore
 * \return This
 */
Semaphore* Semaphore::signal(int number){
    struct sembuf sem_op;
    sem_op.sem_num = number;
    sem_op.sem_op = 1;
    sem_op.sem_flg = 0;

    int result = semop(id, &sem_op, 1);
    if (result < 0) {
        perror("semop (signal)");
    }

    return this;
}

/*!
 * \brief Semaphore::remove Removes a semaphore
 * \return This
 */
Semaphore* Semaphore::remove() {
    int result = semctl(id, 0, IPC_RMID, 0);
    if (result < 0){
        perror("semctl (remove)");
    }
    id = -1;

    return this;
}

/*!
 * \brief Semaphore::getID Getter for id
 * \return id
 */
int Semaphore::getID() {
    return id;
}

/*!
 * \brief Semaphore::setID Setter for id
 * \param id id
 * \return This
 */
Semaphore* Semaphore::setID(int id){
    this->id = id;

    return this;
}

