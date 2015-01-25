/*
 * main.c
 *
 *  Created on: Mar 9, 2013
 *      Author: williamm
 */
#include <stdio.h>
#include <stdlib.h>
#include "gw.h"

#define TRUE 1
#define FALSE 0
#define MAXINPUT 255

void read_setup(int *rows, int *columns, int *population, int *random) {
	size_t bytes_read;
	size_t num_bytes = MAXINPUT;
	char* input;
	input = malloc(sizeof(char) * (num_bytes + 1));

	//	> number of rows?
	do {
		printf("Number of rows: ");
		bytes_read = getline(&input, &num_bytes, stdin);
		*rows = atoi(input);
	} while (*rows <= 0);

	//	> number of columns?
	do {
		printf("Number of columns: ");
		bytes_read = getline(&input, &num_bytes, stdin);
		*columns = atoi(input);
	} while (*columns <= 0);

	//	> number of people?
	do {
		printf("Number of people: ");
		bytes_read = getline(&input, &num_bytes, stdin);
		*population = atoi(input);
	} while (*population <= 0);

	//	> random (enter ‘y’ or ‘n’).
	do {
		printf("Distribute randomly (y) or (n): ");
		bytes_read = getline(&input, &num_bytes, stdin);
		if (input[0] == 'y') {
			*random = TRUE;
		}
		if (input[0] == 'n') {
			*random = FALSE;
		}
	} while (*random < 0);

	//	random = c == 'y' ? TRUE : FALSE;
	printf("Creating a GridWorld with %d rows and %d columns.\n", *rows,
			*columns);
	if (random) {
		printf("Distributing %d people randomly.\n", *population);
	}
	else {
		printf("Distributing %d people in row 0 and column 0.\n", *population);
	}
	free(input);
}

void do_loop(GW world) {
	int first, second, third;
	int i, n;

	size_t bytes_read;
	size_t num_bytes = MAXINPUT;
	char* input;
	input = malloc(sizeof(char) * (num_bytes + 1));
	do {
		first = -1;
		second = -1;
		third = -1;

		printf("gwsh> ");
		bytes_read = getline(&input, &num_bytes, stdin);

		if (strncmp(input, "members", 7) == 0) {
			sscanf(input + 7, "%d %d", &first, &second);
			if (first >= 0 && second >= 0) {
				int *array;
				array = gw_members(world, first, second, &n);
				if (array != NULL){
					for (i = 0; i < n; i++){
						printf("%d ", array[i]);
					}
				}
				printf("\n");
				free(array);
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "population", 10) == 0) {
			int population;
			sscanf(input + 10, "%d %d", &first, &second);

			// There are two inputs
			if (first >= 0 && second >= 0) {
				population = gw_district_pop(world, first, second);
				if(population >= 0){
					printf("%d\n", population);
				}
				else {
					printf("no such district\n");
				}
			}
			else if (first == -1 && second == -1) {
				population = gw_total_pop(world);
				printf("%d\n", population);
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "move", 4) == 0) {
			sscanf(input + 4, "%d %d %d", &first, &second, &third);
			if (first >= 0 && second >= 0 && third >= 0){
				int result;
				result = gw_move(world, first, second, third);

				if (result){
					printf("Success!\n");
				}
				else {
					printf("Failure!\n");
				}
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "find", 4) == 0) {
			int row, column;
			sscanf(input + 4, "%d", &first);
			if (first >= 0){
				int result;
				result = gw_find(world, first, &row, &column);
				if (result){
					printf("Success!\n");
				}
				else {
					printf("Failure!\n");
				}
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "kill", 4) == 0) {
			sscanf(input + 4, "%d", &first);
			if (first >= 0){
				int result;
				result = gw_kill(world, first);
				if (result){
					printf("Success!\n");
				}
				else {
					printf("Failure!\n");
				}
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "create", 6) == 0) {
			int id;
			sscanf(input + 6, "%d %d", &first, &second);
			if (first >= 0 && second >= 0){
				id = gw_create(world, first, second);
				if (id >= 0){
					printf("%d\n", id);
				}
				else {
					printf("no such district\n");
				}
			}
			else {
				printf("Invalid input!\n");
			}
		} else if (strncmp(input, "quit", 4) == 0) {
			puts("Quitting");
			break;
		} else {
			printf("Invalid input!\n");
		}
	} while (TRUE);

	free(input);
}

int main(void){
	int rows = -1;
	int columns = -1;
	int population = -1;
	int random = -1;
	GW world;

	read_setup(&rows, &columns, &population, &random);
	world = gw_build(rows, columns, population, random);

	do_loop(world);
	gw_free(world);
}
