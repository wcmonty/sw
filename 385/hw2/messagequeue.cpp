/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file messagequeue.cpp
 * \brief Defines the MessageQueue class
 */

#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <stdio.h>
#include "messagequeue.h"
#include "messagestruct.h"

using namespace std;

/*!
 * \brief MessageQueue::MessageQueue Constructor
 * \param create Set to true if this should actually create if not already created
 */
MessageQueue::MessageQueue(bool create) {
    this->create = create;
    key = IPC_PRIVATE;
    id = -1;
    permissions = 0600;
}

/*!
 * \brief MessageQueue::~MessageQueue Destructor
 */
MessageQueue::~MessageQueue() {

}

/*!
 * \brief MessageQueue::get Gets a message queue
 * \return This
 */
MessageQueue* MessageQueue::get(){
    id = msgget(key, permissions | IPC_CREAT);
    return this;
}

/*!
 * \brief MessageQueue::send Sends a message
 * \param message The message to be send.  Must be less than MAX_MESSAGE_SIZE
 * \param messageType The type of the message.  Must be a value defined in messagestruct.h.
 * \return This
 */
MessageQueue* MessageQueue::send(const char *message, int messageType){
    message_buffer message_buf;
    memset (&message_buf, '\0', sizeof(message_buffer));
    message_buf.type = messageType;
    strncpy(message_buf.message, message, MAX_MESSAGE_SIZE);
    int result = msgsnd(id, &message_buf, sizeof(message_buffer) - sizeof(long int), 0);

    if (result < 0){
        perror("Could not write to queue");
    }
    return this;
}

/*!
 * \brief MessageQueue::receive Receives a message, if one exists
 * \return This
 */
int MessageQueue::receive() {
    message_buffer message;
    int status = msgrcv(id, &message, sizeof(message_buffer) - sizeof(long int),
           0, IPC_NOWAIT);

    if (status >= 0) {
        cout << message.message << endl;
    }

    return status;
}

/*!
 * \brief MessageQueue::receive Receives a message, if one exists
 * \param messageType The type of message to read
 * \return This
 */
int MessageQueue::receive(int messageType) {
    message_buffer message;
    int status = msgrcv(id, &message, sizeof(message_buffer) - sizeof(long int),
           messageType, IPC_NOWAIT);

    if (status >= 0) {
        cout << message.message << endl;
    }

    return status;
}

/*!
 * \brief MessageQueue::remove Removes the message queue
 * \return This
 */
MessageQueue* MessageQueue::remove() {
    if (id >= 0) {
        msgctl(id, IPC_RMID, NULL);
    }

    return this;
}

/*!
 * \brief MessageQueue::setQueueID Setter for id
 * \param queue_id  The queue id to be set
 * \return  This
 */
MessageQueue* MessageQueue::setID(const int queue_id) {
    this->id = queue_id;

    return this;
}

/*!
 * \brief MessageQueue::getQueueID Getter for queue_id
 * \return queueID
 */
int MessageQueue::getID() {
    return id;
}
