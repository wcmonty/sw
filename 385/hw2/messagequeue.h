/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file messagequeue.h
 * \brief Defines the MessageQueue interface
 */

#ifndef MESSAGEQUEUE_H
#define MESSAGEQUEUE_H

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

/*!
 * \brief The MessageQueue class Encapsulates the message queue operations.
 */
class MessageQueue
{
    private:
        key_t key;         /*!< Key to send to msgget() */
        int permissions;   /*!< msgflg to be passed to msgget() */
        int id;      /*!< return value from msgget() */
        bool create;       /*!< Boolean representing whether to actually
                            *   create the message queue or to use one
                            *   that already exists. */

    public:
        MessageQueue(bool);
        ~MessageQueue();
        MessageQueue* get();
        MessageQueue* control();
        MessageQueue* send(const char *, int);
        MessageQueue* setID(const int);
        MessageQueue* remove();
        int receive();
        int receive(int);
        int getID();
};

#endif // MESSAGEQUEUE_H
