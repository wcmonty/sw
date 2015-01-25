/*
 ============================================================================
 Name        : HW4.c
 Author      : 
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#define N 10
#define MAX(a,b) ((a) > (b) ? a : b)
#define MIN(a,b) ((a) < (b) ? a : b)
#define TRUE 1
#define FALSE 0

void gen_2d_int_array(int a[][N]) {
	int i, j;

	int increment;
	for (i = 0; i < N; i++) {
		for(j = 0; j < N; j++){
			increment = rand() % 5;

			if (i && j){
				a[i][j] = MAX(a[i-1][j], a[i][j-1]) + increment;
			}
			else if (i){
				a[i][j] = a[i-1][j] + increment;
			}
			else if (j){
				a[i][j] = a[i][j-1] + increment;
			}
			else {
				a[i][j] = 0;
			}
		}
	}
	return;
}

void print_2d_int_array(int a[][N], int n){
	int i, j;

	for (i = 0; i < N; i++) {
		for(j = 0; j < N; j++){
			printf("%3d ", a[i][j]);
		}
		puts("\n");
	}
}

int brute_force_check(int a[][N], int n){
	int returnVal = FALSE;
	int i, j;

	for (i = 0; i < N; i++) {
		for(j = 0; j < N; j++){
			if (a[i][j] == n){
				return TRUE;
			}
		}
	}

	return returnVal;
}

int quaternion_search(int *a, int n){
	int i, j;

	for(;;){

	}



//	for (i = 0; i < N; i++) {
//		for(j = 0; j < N; j++){
//			printf("Checking %d\n", *(a + ((hi - low + 1) * i + j)));
//			if (*(a + ((hi - low + 1) * i + j)) == n){
//				return TRUE;
//			}
//		}
//	}

	return FALSE;
}


int main(void) {
	int n;
	int a[N][N];
	int result;

	gen_2d_int_array(a);

	if(N <= 25){
		print_2d_int_array(a, n);
	}

   printf("enter n to find: ");
	if(scanf("%d", &n) != 1) {
		fprintf(stderr, "bad input.  goodbye\n");
		abort();
	}

	brute_force_check(a, n) ? printf("n was found by brute force!\n") : printf("n was not found by brute force!\n");
	quaternion_search(*a, 0, N-1, n) ? printf("n was found by brute force!\n") : printf("n was not found by brute force!\n");

	return EXIT_SUCCESS;
}
