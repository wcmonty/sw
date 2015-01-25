/*
 * main.c
 *
 *  Created on: Mar 4, 2013
 *      Author: wmontgom
 */
#include <stdio.h>
#include <stdlib.h>

#define COUNT 25000


void bubble_a(int *data, int count);
void bubble_p(int *data, int count);
void print_array(int *array, int count);

int main (void){

	int array_a[COUNT];
	int array_b[COUNT];

	int i, n;
	for(i = 0; i < COUNT; i++){
		n = rand();
		array_a[i] = n;
		array_b[i] = n;
	}

//	printf("Unsorted:\n");
//	print_array(array_a, COUNT);
//	print_array(array_b, COUNT);

//	printf("\nSorting a:\n");
	bubble_a(array_a, COUNT);

//	printf("\nSorting b:\n");
	bubble_p(array_b, COUNT);

//	printf("\nSorted:\n");
//	print_array(array_a, COUNT);
//	print_array(array_b, COUNT);

	for(i = 0; i < COUNT; i++){
//		printf("%5d %5d\n", array_a[i], array_b[i]);

		if(array_a[i] != array_b[i]){
			printf("The arrays are not equal\n");
			break;
		}
	}

	return 0;
}

/* Bubble sort: Array version */
void bubble_a(int *data, int count){
	int i, last;
	for (last = count -1; last > 0; last--){
		for (i = 0; i < last; i++){
			if (data[i+1] < data[i]){
				/*swap adjacent elements */
				int t = data[i + 1];
				data[i+1] = data[i];
				data[i] = t;
			}
		}
	}
}

/* Bubble sort: pointer version */
void bubble_p(int *data, int count){
	int size = sizeof(int);
	int i, last;
	for (last = count - 1; last > 0; last--){
		for (i = 0; i < last; i++){
			if (*(data + i + 1) < *(data + i)){
				/*swap adjacent elements */
				int t = *(data + i + 1);
				*(data + i + 1) = *(data + i);
				*(data + i) = t;
			}
		}
	}
}

void print_array(int *array, int count){
	int i;
	for (i = 0; i < count; i++){
		printf("%d ", array[i]);
	}
	printf("\n");
}
