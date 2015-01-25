/*
 * Lab2.c
 *
 *  Created on: Jan 23, 2013
 *      Author: William Montgomery
 */
#include<stdio.h>

int divide_power2(int x, int k);

int main(int Argc, char ** Argv){
	int x = 1;
	int y = 1;
	printf("%d /(2^%d) = %d\n", x, y, divide_power2(x, y));

	x = 2;
	y = 1;
	printf("%d /(2^%d) = %d\n", x, y, divide_power2(x, y));

	x = 4;
	y = 1;
	printf("%d /(2^%d) = %d\n", x, y, divide_power2(x, y));

	x = 4;
	y = 2;
	printf("%d /(2^%d) = %d\n", x, y, divide_power2(x, y));

	x = 8;
	y = 2;
	printf("%d /(2^%d) = %d\n", x, y, divide_power2(x, y));

	return(0);
}

int divide_power2(int x, int k){
	return x>>k;
}
