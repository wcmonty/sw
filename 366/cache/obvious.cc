#include "inst_compact.h"
#include "size.h"
#include <iostream>
using namespace std;

const int matrixSize = 100;
const int blockingFactor = 20;

int a[matrixSize][matrixSize];
int b[matrixSize][matrixSize];
int c[matrixSize][matrixSize];
int main() {
	int i, j, k, r;
	// Initialise the matrices arbitrarily
	for (i=0; i < matrixSize; i++)
	for (j=0; j < matrixSize; j++) {
		b[i][j] = i + j; c[i][j] = i - j; a[i][j] = 0;
	}

	// Work out a = b * c, using a blocking algorithm
	for (i = 0; i < matrixSize; i++){
		for (j=0; j < matrixSize; j++){
			for (k = 0; k < matrixSize; k++){
				INST_R(a[i][j]);
				INST_R(b[i][k]);
				INST_R(c[k][j]);
				INST_W(a[i][j]);
				a[i][j] = a[i][j] + b[i][k] * c[k][j];
			}
		}
	}
	// Display the product
	//for (i=0; i < matrixSize; i++) {
	//	for (j=0; j < matrixSize; j++) cerr << a[i][j] << ' ';
	//		cerr << endl;
	//}
}

