/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 2 - IPC
 *
 */

/*!
 * \file pipe.h
 * \brief Defines the Pipe interface
 */

#ifndef PIPE_H
#define PIPE_H

/*!
 * \brief The Pipe class Encapsulates pipe operations.
 */
class Pipe
{
    private:
        int in;     /*!< The in side of the pipe */
        int out;    /*!< The out side of the pipe */
        int pipeArray[2]; /*!< Used to hold the results from open. */
    public:
        Pipe();

        Pipe* open();
        Pipe* closeIn();
        Pipe* closeOut();
        int getIn();
        int getOut();
};

#endif // PIPE_H
