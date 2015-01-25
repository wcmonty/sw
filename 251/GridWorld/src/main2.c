/*
 * main.c
 *
 *  Created on: Mar 4, 2013
 *      Author: wmontgom
 */

#include <stdlib.h>
#include <stdio.h>
#include "gw.h"


#define TRUE 1
#define FALSE 0
#define ROWS 100
#define COLS 200
#define POP_INIT 100

#define POP_MAX 200000

void print_district_population(GW world) {
	int i, j, k, n;
	int *array;
	for (i = 0; i < ROWS; i++) {
		for (j = 0; j < COLS; j++) {
			printf("There are %d people in Row %d, Col %d\n",
					gw_district_pop(world, i, j), i, j);
			array = gw_members(world, i, j, &n);
			if (n != 0) {
				printf("The people are: ");
				for (k = 0; k < n; k++) {
					printf("%d ", array[k]);
				}
				printf("\n\n");
			}
			free(array);
		}
	}
}

void find_all_people(GW world, int pop) {
	int i;
	int row, col;

	for (i = 0; i < pop; i++) {
		if (gw_find(world, i, &row, &col)) {
			printf("Person with id %d is in Row %d, Col %d\n", i, row, col);
		} else {
			printf("Person %d was not found\n", i);
		}
	}
}


int main (void){
	int i, j, k;
	int pop = POP_INIT;

	GW world;
	world = gw_build(ROWS, COLS, pop, TRUE);

//	print_district_population(world);
	gw_check(world);
//	find_all_people(world, pop);

	for (i = 0; i < pop; i++){
		gw_kill(world, i);
		gw_check(world);
	}

//	print_district_population(world);
//	find_all_people(world, pop);

	pop = POP_MAX;
	for (i = 0; i < pop; i++){
		gw_create(world, 0, 0);
	}
//	print_district_population(world);
//	find_all_people(world, pop);
//	gw_check(world);

	for(i = 0; i < POP_MAX; i++){
		j = rand() % ROWS;
		k = rand() % COLS;
		gw_move(world, i, j, k);
	}
//	print_district_population(world);
//	find_all_people(world, pop);
	gw_check(world);

	for(i = 0; i < POP_MAX /10; i++){
		j = rand() % POP_MAX;
		gw_kill(world, POP_MAX);
	}
	gw_check(world);

	gw_free(world);

	return 0;
}
