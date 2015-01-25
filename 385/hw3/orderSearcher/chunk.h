/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file chunk.h
 * \brief Defines the Chunk interface
 */
#ifndef CHUNK_H
#define CHUNK_H
#include <limits.h>

/*!
 * \brief The Chunk class Encapsulates a chunk of data
 * @todo In an ideal world, I would extract all calculations to
 * another class, so that I could offer different calculations.
 */
class Chunk
{
private:
    char *data; /*!< The data to process */
    int size;   /*!< The size of the data to process */
    int numCoeffs;              /*!< The number of coefficients (should be the order + 1) */

    long double *array;         /*!< The array of bytes converted to long doubles */
    long double sum;            /*!< The sum of the values */
    long double avgDelta;       /*!< The average change between consecutive elements */
    long double stdDevDelta;    /*!< The standard deviation of the change between consecutive elements */
    long double error;          /*!< The RMS error between the calculated polynomial and the data */

    long double **leastSquareCooefs; /*!< Matrix of coefficients for least square calculation */
    long double *coeffs;        /*!< The calculated coefficients */
    long double **ATransposeA;  /*!< The left side of the least square equation */
    long double *ATransposeB;   /*!< The right side of the least square equation */
    int position;               /*!< The position of the chunk */

    Chunk* fillArray();
    Chunk* processBlock();
    Chunk* computeSum();
    Chunk* computeAvgDelta();
    Chunk* computeStdDevDelta();
    Chunk* computeBestFit();
    Chunk* computeError();
    long double** createMatrix(int, int);
    long double evaluatePolynomial(long double);
    Chunk* freeMatrix(long double **, int);
    Chunk* backSubstitution();
    Chunk* gaussianElimination();
    Chunk* computeATransposeA();
    Chunk* computeATransposeB();
public:
    Chunk(int);
    ~Chunk();

    Chunk* process();

    Chunk* setData(char*);
    Chunk* setSize(int);
    Chunk* setPosition(int);

    long double getError();

    Chunk* printBlock();
    Chunk* printData();
};

#endif // CHUNK_H
