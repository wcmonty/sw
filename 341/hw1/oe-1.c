/*
Using Java, C or C++, write a program that fills an array with 100 integers (random numbers, the values 1..100, whatever you want), and then outputs the sum of these 100 integers. However, write the program such that the main program initializes the array and outputs the result, but the actual sum itself is computed and returned by a function called sum. In C, this function might have the following definition:

int sum(int A[100]) // computes and returns sum:
{
.
.
.
}

Write the function without using any local / global variables, and do not use any built-in functions ― use only language constructs (if, for, …) and functions you write yourself. The functions you write can have parameters, but the challenge is not to use any other variables. Hint: think induction, think recursion. For grading, submit a copy of your sum function, along with any helper functions that it calls.
*/
#include <stdlib.h>
#include <stdio.h>

int sumR (int A[], int index){
	if (index < 0) {
		return 0;
	}
	else if (index == 0) {
		return A[0];
	}
	else {
		return (A[index] + sumR(A, index - 1)); 
	}
}

int sum (int A[100]){
	return sumR (A, 99);
}

int sum_brute (int A[100]){
	int sum = 0;
	int i;

	for (i = 0; i < 100; i++){
		sum += A[i];
	}

	return sum;
}

void check_sums (int A[]){
	if (sum(A) != sum_brute(A)) {
		printf("A does not match!\n");
	}
}

int main () {
	int A[100], B[100];
	int i;
	for (i = 0; i < 100; i++){
		A[i] = i;
		B[i] = rand() % 100;
	}
	
	printf("The sum of A is %d\n", sum(A));
	printf("The sum of B is %d\n", sum(B));
	check_sums (A);	
 	check_sums (B);
	return 0;
}


