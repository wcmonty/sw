/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file pipe.cpp
 * \brief Defines the Pipe class
 */

#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include "pipe.h"

/*!
 * \brief Pipe::Pipe Constructor
 */
Pipe::Pipe() {
    in = -1;
    out = -1;
}

/*!
 * \brief Pipe::open Opens a new pipe
 * \return This
 */
Pipe* Pipe::open(){
    if (pipe(pipeArray) < 0) {
        perror("Error creating pipe");
        exit(EXIT_FAILURE);
    }
    in = pipeArray[0];
    out = pipeArray[1];

    return this;
}

/*!
 * \brief Pipe::closeIn Closes the Input to the pipe
 * \return This
 */
Pipe* Pipe::closeIn() {
    if (in > 0){
        close(in);
        in = -1;
    }

    return this;
}

/*!
 * \brief Pipe::closeOut Closes the Output to the pipe
 * \return This
 */
Pipe* Pipe::closeOut() {
    if (out > 0) {
        close(out);
        out = -1;
    }

    return this;
}

/*!
 * \brief Pipe::getIn Returns the Input of the pipe
 * \return The fd of the input of the pipe
 */
int Pipe::getIn() {
    return in;
}

/*!
 * \brief Pipe::getOut Returns the Output of the pipe
 * \return The fd of the output of the pipe
 */
int Pipe::getOut(){
    return out;
}

