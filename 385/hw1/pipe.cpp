/*
 * William Montgomery
 * wmontg2@uic.edu
 * ACCC account - wmontgom
 * CS 385 - Fall 2013
 * Homework 1 - statsh
 *
 */
#include "pipe.h"

/*!
 * \brief Pipe::Pipe Constructor
 * \param outNumber The file descriptor of the out side of the pipe
 * \param inNumber  The file descriptor of the in side of the pipe
 */
Pipe::Pipe(int outNumber, int inNumber)
{
    in = inNumber;
    out = outNumber;
}
