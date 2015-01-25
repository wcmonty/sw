/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#ifndef PIPE_H
#define PIPE_H

class Pipe
{
public:
    Pipe(int, int);
    int in;     /*!< The in side of the pipe */
    int out;    /*!< The out side of the pipe */
};

#endif // PIPE_H
