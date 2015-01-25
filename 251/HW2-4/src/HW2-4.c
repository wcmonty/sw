/*
 ============================================================================
 Name        : HW2-4.c
 Author      : William Montgomery
 Description : Recursive max in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define MAXNUMS 20

int max_val(int array[], int i, int j){
	if (i == j){
		return array[i];
	}

	int middle = (i + j) / 2;
	int left = max_val(array, i, middle);
	int right = max_val(array, middle + 1, j);

	if (left >= right) {
		return left;
	}
	else {
		return right;
	}
}

void print_array(int array[], int num){
	int i;
	for (i = 0; i < num; i++){
		printf("%d ", array[i]);
	}
	puts("\n");
}


int main(void) {
	int array[MAXNUMS];
	int i;

	for (i = 0; i < MAXNUMS; i++){
		array[i] = (rand() % 100);
	}

	print_array(array, MAXNUMS);
	printf("The max value is %d\n", max_val(array, 0, MAXNUMS - 1));

	return EXIT_SUCCESS;
}
