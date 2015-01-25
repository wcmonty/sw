/*
 ============================================================================
 Name        : Lab5.c
 Author      : William Montgomery
 Version     :
 Copyright   : 
 Description : 2d arrays in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int** alloc_2d_arr(int nrows, int ncols){
	int **arr_ptr;
	int i;
	arr_ptr = (int**)malloc(nrows * sizeof(int*));
	for(i = 0; i < nrows; i++){
		arr_ptr[i] = (int*)malloc(ncols * sizeof(int));
	}
	return arr_ptr;
}

void free_2d_arr(int **array, int rows){
	int i;
	for(i = 0; i < rows; i++){
		free(array[i]);
	}
	free(array);

}

void print_arr(int *array, int n){
	int i;
	for (i = 0; i < n; i++){
		printf(" %4d", array[i]);
	}
	puts("\n");
}

void print_2d_arr(int **array, int rows, int cols){
	int i;
	for(i = 0; i < rows; i++){
		print_arr(array[i], cols);
	}
}

int main(void) {
	int **a;
	int *temp;
	int rows = 4;
	int columns = 5;

	int i, j;

	a = alloc_2d_arr(rows, columns);
	for (i = 0; i < rows; i++){
		for(j = 0; j < columns; j++){
			a[i][j] = i * columns + j;
		}
	}

	print_2d_arr(a, rows, columns);

	temp = a[0];
	a[0] = a[3];
	a[3] = temp;
	print_2d_arr(a, rows, columns);
	//todo
//free memory
	free_2d_arr(a, rows);
//	printf("%d\n", a[0][0]);

	return EXIT_SUCCESS;
}
