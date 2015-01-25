/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file messagestruct.h
 * \brief Defines the message structure
 */

#ifndef MESSAGESTRUCT_H
#define MESSAGESTRUCT_H


static const unsigned int STARTUP_MESSAGE_TYPE = 1;
static const unsigned int COMPLETION_MESSAGE_TYPE = 2;
static const unsigned int READ_ERROR_MESSAGE_TYPE = 3;
static const unsigned int MAX_MESSAGE_SIZE = 100;

/*!
 * \brief Used to passed memory into the shared messaging queue.
 */
typedef struct {
    long int type;
    char message[MAX_MESSAGE_SIZE];
 } message_buffer;

#endif // MESSAGESTRUCT_H
