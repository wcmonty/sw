/*
* William Montgomery
* wmontg2@uic.edu
* ACCC account - wmontg2
* CS 385 - Fall 2013
* Homework 3 - Searching for order in datafiles
*/

/*!
 * \file chunk.cpp
 * \brief Defines the Chunk class
 */
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <cmath>
#include <limits.h>
#include "chunk.h"
#include "runner.h"
using namespace std;

/*!
 * \brief Chunk::Chunk Constructor
 */
Chunk::Chunk(int polynomialOrder)
{
    this->numCoeffs = polynomialOrder + 1;
    this->size = 0;
    this->position = 0;
    this->sum = 0.0;
    this->avgDelta = 0.0;
    this->coeffs = (long double*) malloc (this->numCoeffs * sizeof(long double));
    for (int i = 0; i < this->numCoeffs; i++){
        this->coeffs[i] = 0.0;
    }
}

/*!
 * \brief Chunk::~Chunk Destructor
 */
Chunk::~Chunk() {
    free (coeffs);
    free (array);
}

/*!
 * \brief Chunk::process Process this chunk
 * \return this
 */
Chunk* Chunk::process() {
    processBlock();

    // Compare against the best chunk so far
    // If better set this one as the best
    Chunk *best = Runner::getRunner()->getBestChunk();
    if (best == NULL || this->error <= best->getError()) {
        Runner::getRunner()->setBestChunk(this);
    }
    else {
        delete this;
        return NULL;
    }

    return this;
}

/*!
 * \brief Chunk::fillArray Convert the bytes to an array of long doubles
 * \return this
 */
Chunk* Chunk::fillArray(){
    double number = 0;
    for (int i = 0; i < size; i++){
        number = double(*(data + i) & 0xff);
        array[i] = number;
    }

    return this;
}

/*!
 * \brief Chunk::processBlock Process the block
 * \return this
 */
Chunk* Chunk::processBlock(){
//    computeSum();
//    computeAvgDelta();
//    computeStdDevDelta();
    if (size >= numCoeffs){
        fillArray();
        computeBestFit();
        computeError();
    }
    else {
        printf ("Block is less than number of coefficients!\n");
        error = double(INT_MAX);
    }

    return this;
}

/*!
 * \brief Chunk::computeError Compute the difference between the best fit polynomial
 * and the actual values
 * \return this
 */
Chunk* Chunk::computeError(){
    long double sum = 0;
    long double value = 0;
    for (int i = 0; i < this->size; i++){
        value = evaluatePolynomial(double(i));
        sum += (value - this->array[i]) * (value - this->array[i]);
    }

    this->error = sqrt(sum / this->size);
    return this;
}

/*!
 * \brief Chunk::backSubstitution Perform the back substitution to solve a set of linear
 * equations
 * \return this
 */
Chunk* Chunk::backSubstitution()
{
    for (int i = this->numCoeffs - 1; i >= 0; i--){
        for (int j = i + 1; j < this->numCoeffs; j++){
            ATransposeB[i] = ATransposeB[i] - ATransposeA[i][j] * this->coeffs[j];
        }
        this->coeffs[i] = ATransposeB[i] / ATransposeA[i][i];
    }
    return this;
}

/*!
 * \brief Chunk::gaussianElimination Perform the Gaussian elimination step of solving the
 * linear equations.  This method introduces rounding error that might lead to
 * a loss of significance, but is easiest to implement.
 * \return this
 */
Chunk* Chunk::gaussianElimination()
{
    long double mult = 0;
    for (int j = 0; j < this->numCoeffs - 1; j++){
        if (abs(ATransposeA[j][j]) < pow(2.0, -32.0)){  // Zero pivot encoutered
            for (int i = j + 1; j < this->numCoeffs; j++){
                mult = ATransposeA[i][j] / ATransposeA[j][j];
                for (int k = j + 1; j < this->numCoeffs; k++){
                    ATransposeA[i][k] = ATransposeA[i][k] - (mult *  ATransposeA[j][k]);
                }
                ATransposeB[i] = ATransposeB[i] - (mult * ATransposeB[j]);
            }
        }
    }

    return this;
}

/*!
 * \brief Chunk::computeATransposeA Computes the left side of the equation A(T) * A
 * \return this
 */
Chunk* Chunk::computeATransposeA()
{
    ATransposeA = createMatrix(this->numCoeffs, this->numCoeffs);

    long double sum = 0;
    for (int i = 0; i < this->numCoeffs; ++i) {
        for (int j = 0 ; j < this->numCoeffs; j++) {
            for(int k = 0; k < this->size; k++){
                sum = sum + this->leastSquareCooefs[k][i]*this->leastSquareCooefs[k][j];
            }
            ATransposeA[i][j] = sum;
            sum = 0;
        }
    }

    return this;
}

/*!
 * \brief Chunk::computeATransposeB Computes the right side of the equation A(T) * b
 * \return this
 */
Chunk* Chunk::computeATransposeB()
{
    ATransposeB = (long double*)malloc(this->numCoeffs * sizeof(long double));

    for (int i = 0; i < this->numCoeffs; ++i) {
        for(int k = 0; k < this->size; k++){
            sum = sum + this->leastSquareCooefs[k][i]*this->array[k];
        }
       ATransposeB[i] = sum;
        sum = 0;
    }
    return this;
}

long double Chunk::evaluatePolynomial(long double time) {
    long double sum = this->coeffs[0];
    for (int i = 1; i < this->numCoeffs; i++){
        sum += this->coeffs[i] + time * sum;
    }
    return sum;
}

/*!
 * \brief Chunk::computeBestFit Tries to fit a polynomial of arbitrary order to the data.
 * We set x equal to the index of the array, y to the value, and compute the best
 * A and B.
 * \return this
 */
Chunk* Chunk::computeBestFit() {
    // To compute we use a matrix for the coefficients
    this->leastSquareCooefs = createMatrix(this->size, this->numCoeffs);

    // Make the coefficient matrix A
    for (int i = 0; i < size; i++){
        for (int j = 0; j < this->numCoeffs; j++){
            this->leastSquareCooefs[i][j] = 1.0;
            for (int k = j; k < this->numCoeffs - 1; k++){
                this->leastSquareCooefs[i][j] *= double(i);
            }
        }
    }

    // Compute A' * A
    computeATransposeA();

    // Compute A' * b
    computeATransposeB();

    // Gaussian - Elimination
    gaussianElimination();

    // Back - Substitution
    backSubstitution();

    // Clean up
    freeMatrix(ATransposeA, this->numCoeffs);
    free(ATransposeB);
    freeMatrix(leastSquareCooefs, this->size);

    return this;
}

/*!
 * \brief Chunk::createMatrix Creates a 2-dimensional array
 * \param nRows The number of rows
 * \param nCols The number of columns
 * \return Pointer to the start of the array
 */
long double** Chunk::createMatrix(int nRows, int nCols){
    long double **matrix;

    matrix = (long double **) malloc (sizeof(long double*) * nRows);
    for (int i = 0; i < nRows; i++){
        matrix[i] = (long double *) calloc(sizeof(long double), nCols);
    }
    return matrix;
}

/*!
 * \brief Chunk::freeMatrix Frees a matrix
 * \param matrix    A pointer to the start of the matrix
 * \param nRows     The number of rows
 * \return  this
 */
Chunk* Chunk::freeMatrix(long double **matrix, int nRows){
    for (int i = 0; i < nRows; i++){
        free (matrix[i]);
    }
    free (matrix);
    matrix = NULL;
    return this;
}

/*!
 * \brief Chunk::computeSum Computes the sum of an array
 * \return this
 */
Chunk* Chunk::computeSum(){
    this->sum = 0;
    for (int i = 0; i < size; i++){
        this->sum += array[i];
    }

    return this;
}

/*!
 * \brief Chunk::computeAvgDelta Computes the average change between
 * consecutive elements.
 * \return this
 */
Chunk* Chunk::computeAvgDelta(){
    avgDelta = 0;
    double diffSum = 0;

    for (int i = 0; i < size - 1; i++){
        diffSum += array[i + 1] - array[i];
    }

    avgDelta = diffSum / double((size - 1));

    return this;
}

/*!
 * \brief Chunk::computeStdDevDelta Computes the standard deviation of
 * the change between elements.
 * \return this
 */
Chunk* Chunk::computeStdDevDelta(){
    double sum = 0;
    double temp;

    for (int i = 0; i < size - 1; i++){
        temp = (array[i + 1] - array[i]) - avgDelta;
        sum += temp * temp;
    }

    stdDevDelta = sqrt(sum / (double) (size - 1)); // There are n - 1 deltas

    return this;
}

/*!
 * \brief Chunk::setSize Setter for size
 * \param size The size
 * \return this
 */
Chunk* Chunk::setSize(int size) {
    this->size = size;
    array = (long double *) malloc (sizeof(long double) * size);

    return this;
}

/*!
 * \brief Chunk::setData Setter for data
 * \param data  The data
 * \return this
 */
Chunk* Chunk::setData(char *data) {
    this->data = data;

    return this;
}

/*!
 * \brief Chunk::printData Prints out the data
 * \return this
 */
Chunk* Chunk::printData()
{
    double scaleFactor = 4.0;
    const int bufferSize = 68;
    for(int i = 0; i < size; i++){
        printf ("%9d %3d ", i, (int)array[i]);
        char buffer[bufferSize] = "                                                                  ";
        int numStars = (int)(array[i] / scaleFactor);

        for (int j = 0; j < numStars; j++) {
            buffer[j] = '*';
        }

        // Evaluate the function and print it if within the range
        int evaluation = (int) (evaluatePolynomial(double(i)) / scaleFactor);

        if (evaluation < bufferSize && evaluation >= 0){
            buffer[evaluation] = 'O';
        }

        cout << buffer << endl;
    }

    return this;
}

/*!
 * \brief Chunk::printBlock Prints out the block
 * \return this
 */
Chunk* Chunk::printBlock(){
    cout << "################################################################################" << endl;
//    cout << "Sum was " << sum << endl;
//    cout << "Average delta was " << avgDelta << endl;
//    cout << "Standard deviation of delta is " << stdDevDelta << endl;
    cout << "Best polynomial:" << endl;
    cout << "y = ";
    for (int i = 0; i < numCoeffs; i++){
        if (i > 0) {
            cout << "+ ";
        }
        cout << coeffs[i];
        if (i < numCoeffs - 1) {
            cout << " * " << "x^" << numCoeffs - (i + 1) << " ";
        }
    }
    cout << endl << endl;
    cout << "Error: " << error << endl;
    cout << "################################################################################" << endl;

    return this;
}

/*!
 * \brief Chunk::setPosition Setter for position
 * \param position The position
 * \return this
 */
Chunk* Chunk::setPosition(int position){
    this->position = position;
    return this;
}

/*!
 * \brief Chunk::getError Getter for error
 * \return The RMS error in the polynomial
 */
long double Chunk::getError() {
    return this->error;
}


