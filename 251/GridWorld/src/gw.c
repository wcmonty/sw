/*
 * gw.c
 *
 *  Created on: Feb 26, 2013
 *  Author: William Montgomery
 *  File: GridWorld in ANSI C
 */

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "gw.h"

#define TRUE 1
#define FALSE 0

// typedefs
typedef struct person_struct {
	int id;
	int row;
	int column;
	struct person_struct *prev;
	struct person_struct *next;
}Person;

typedef struct list_struct {
	Person *head;
	Person *tail;
}List;

typedef struct district_struct {
	int population;
	List *people;
}District;

struct gw_struct {
	int population;
	int max_id;
	int max;
	int rows;
	int columns;
	District **districts;
	Person **people;
	List *graveyard;
};

// Function prototypes
static int compute_max_pop(int population);
static void initialize_district(District *district);
static District** alloc_2d_arr(int nrows, int ncols);
static Person** alloc_1d_arr(int max_pop);
static void free_list(Person *head);
static void grow_population(GW g);
static void remove_person_from_list(Person* person, List* people);
static int invalid_rc(GW g, int i, int j);

// Used for debugging
// To enable, must include the following in gw.h
// extern int gw_check(GW g);
static int gw_pop_check(GW g);
int gw_check(GW g);

/*
 * \brief Builds a GridWorld object
 *
 * \param nrows is the number of rows
 * \param ncols is the number of columns
 * \param pop is the total population to create
 * \param rnd is a boolean flag, 1 indicates that the people should be
 * disbursed randomly
 * \return GW
 *
 */
GW gw_build(int nrows, int ncols, int pop, int rnd){
	GW world = malloc(sizeof(struct gw_struct));
	int row, column;  // iterators

	world->population = 0;
	world->max_id = -1;
	world->max = compute_max_pop(pop);
	world->rows = nrows;
	world->columns = ncols;

	// Allocate and initialize people
	world->people = alloc_1d_arr(world->max);
	for(column = 0; column < world->max; column++){
		world->people[column] = NULL;
	}


	// Allocate and initialize districts
	world->districts = alloc_2d_arr(nrows, ncols);
	for(row = 0; row < nrows; row++){
		for(column = 0; column < ncols; column++){
			 initialize_district(&(world->districts[row][column]));
		}
	}

	// Allocate and initialize graveyard
	world->graveyard = malloc(sizeof(List));
	world->graveyard->head = NULL;
	world->graveyard->tail = NULL;

	// Distribute people
	row = 0;
	column = 0;
	while(pop){
		if (rnd){
			row = rand() % nrows;
			column = rand() % ncols;
		}
		gw_create(world, row, column);
		pop--;
	}

	return world;
}

/*
 * \brief Helper function to generate the next biggest power of 2 from a number
 * or INT_MAX
 *
 * \param population is the initial population
 * \return The next biggest power of two or INT_MAX
 *
 */
static int compute_max_pop(int population){
	// Here, I compute the next power of two greater than the population.
	// This is to create space to add more population without immediately
	// having to allocate more memory to the array and copy the original array
	// over.  If the population is already a power of two, then it allocates the
	// next power of two.
	unsigned n = population;
	n = n | (n >> 1);
	n = n | (n >> 2);
	n = n | (n >> 4);
	n = n | (n >> 8);
	n = n | (n >> 16);
	n = n | (n >> (sizeof(int) / 2)); // This should take care of 32 and 64 integers.
	int returnVal = (int)(n + 1);
	return  returnVal < 0 ? INT_MAX : returnVal;  // Add some logic here to figure out if the exp is > maxint
}

/*
 * \brief Initializes a district, including allocating a List
 *
 * \return
 *
 */
static void initialize_district(District *district){
	district->population = 0;
	district->people = malloc(sizeof(List));
	district->people->head = NULL;
	district->people->tail = NULL;
}

/*
 * \brief Allocates a 2d array of District*'s
 *
 * \param nrows is the number of rows
 * \param ncols is the number of columns
 * \return A pointer to the District
 *
 */
static District** alloc_2d_arr(int nrows, int ncols){
	District **arr_ptr;
	int i;

	arr_ptr = malloc(nrows * sizeof(District*));
	for(i = 0; i < nrows; i++){
		arr_ptr[i] = malloc(ncols * sizeof(District));
	}
	return arr_ptr;
}

/*
 * \brief Allocates a 1d array of Persons
 *
 * \param max_pop is the maximum population
 * \return A pointer to the array
 *
 */
static Person** alloc_1d_arr(int max_pop){
	Person **arr_ptr;
	arr_ptr = malloc(max_pop * sizeof(Person*));
	return arr_ptr;
}

/*
 * \brief Returns the total number of alive persons in the GridWorld
 *
 * \param g is a pointer to the GridWorld object
 * \return total population
 *
 */
int gw_total_pop(GW g){
	return g->population;
}

/*
 * \brief Returns the total number of alive persons in a specific district
 *
 * \param g is a pointer to the GridWorld object
 * \param i is the row
 * \param j is the column
 * \return
 *
 */
int gw_district_pop(GW g, int i, int j){
	if(invalid_rc(g, i, j)){
		return -1;
	}
	return g->districts[i][j].population;
}


/*
 * \brief Finds a person in the GridWorld
 *
 * \param g is a pointer to the GridWorld object
 * \param x is the persons_id
 * \param *r sets the row of the person
 * \param *c sets the column of the person
 * \return Returns 1 if the person is alive and 0 if not
 *
 */
int gw_find(GW g, int x, int *r, int *c){
	// If x is bigger than the maximum population
	if (x > g->max) { return 0;}

	Person *person = g->people[x];

	// If the person is not in the index
	if (!person) { return 0; }

	// Set the row and column
	*r = person->row;
	*c = person->column;
	return 1;
}

/*
 * \brief Checks a row or column to see if it is invalid
 *
 * \param g is a pointer to the GridWorld object
 * \param i is the desired row
 * \param j is the desired column
 * \return Returns 1 if the row or column is invalid, 0 if valid
 *
 */
static int invalid_rc(GW g, int i, int j){
	if (i < 0 || j < 0 || i >= g->rows || j >= g->columns) {
		return FALSE;
	}

	return FALSE;
}

/*
 * \brief Moves a person to a specific district
 *
 * \param g is a pointer to the GridWorld object
 * \param x is the persons_id
 * \param i is the desired row
 * \param j is the desired column
 * \return Returns 1 if the person is alive and 0 if not
 *
 */
int gw_move(GW g, int x, int i, int j){
	// If x is bigger than the maximum population
	if (x > g->max) { return 0;}

	// If i or j is out of bounds
	if (invalid_rc(g, i, j)){ return 0;}

	Person *person = g->people[x];

	// If the person is not in the index
	if (!person){ return 0;}

	// Remove the person from the old district
	List *people = g->districts[person->row][person->column].people;
	remove_person_from_list(person, people);
	g->districts[person->row][person->column].population--;

	// Add the person to the new district
	// Could probably encapsulate this into a push operation
	people = g->districts[i][j].people;
	g->districts[i][j].population++;
	person->row = i;
	person->column = j;
	person->prev = NULL;
	person->next = people->head;
	people->head = person;
	if (person->next != NULL){
		person->next->prev = person;
	}

	return 1;
}

/*
 * \brief Gets all of the people from a specific district
 *
 * \param g is a pointer to the GridWorld object
 * \param i is the desired row
 * \param j is the desired column
 * \param *n is the total number returned
 * \return Returns a pointer to an array containing the ids
 * of the people
 *
 */
int * gw_members(GW g, int i, int j, int *n){
	int k = 0;

	// If i or j is out of bounds
	if (invalid_rc(g, i, j)){
		return NULL;
	}

	District district = g->districts[i][j];
	Person *temp = (district.people)->head;

	// If there are no members
	if(temp == NULL){
		*n = 0;
		return NULL;
	}

	// Allocate a new array and set *n
	int *array = malloc(sizeof(int) * district.population);
	*n = district.population;

	// Add the people to the array
	while(temp){
		array[k] = temp->id;
		temp = temp->next;
		k++;
	}
	return array;
}

/*
 * \brief Creates a new person in the GridWorld in a specific
 * row and column
 *
 * \param g is a pointer to the GridWorld object
 * \param i is the desired row
 * \param j is the desired column
 * \return The id of the person, or -1 if it fails
 *
 */
int gw_create(GW g, int i, int j){
	// If the row or column is out of bounds
	if (invalid_rc(g, i, j)){
			return -1;
	}

	Person *temp;
	int id;

	// If there are people in the graveyard get the id from there.
	// We use a FIFO strategy so that we do not immediately reuse
	// an id.
	if (g->graveyard->tail){
		temp = g->graveyard->tail;
		g->graveyard->tail = temp->prev;
		if (g->graveyard->tail == NULL){
			g->graveyard->head = NULL;
		}
		else {
			g->graveyard->tail->next = NULL;
		}
		id = temp->id;
	}
	// If not, we just get an unused id and increment the max_id.
	// We also have to allocate a new Person
	else {
		g->max_id++;
		id = g->max_id;
		temp = malloc(sizeof(Person));
	}

	// Grow the population index if needed.
	if(g->population >= g->max){
		grow_population(g);
	}

	// Add the person to the new district.
	District *district = &(g->districts[i][j]);
	temp->id = id;
	temp->row = i;
	temp->column = j;
	temp->next = district->people->head;
	temp->prev = NULL;

	if (temp->next != NULL){
		temp->next->prev = temp;
	}
	district->people->head = temp;
	if (district->people->tail == NULL){
		district->people->tail = temp;
	}

	// Add the person to the People index
	g->people[id] = temp;

	// Increase the population counts
	district->population++;
	g->population++;

	return id;
}

/*
 * \brief Utility function that dynamically grows the
 * People index array and copies over the old array.
 *
 * \param g is a pointer to the GridWorld object
 * \return
 *
 */
static void grow_population(GW g){
	int new_pop, i;

	// Calculate the new size of the array.  It should
	// be the smaller of twice the size of the original
	// array or INT_MAX
	new_pop = 2 * g->max < 0 ? INT_MAX : 2 * g->max;

	// Allocate the array
	Person **temp = malloc(new_pop * sizeof(Person*));

	// Copy the people
	for(i = 0; i < g->max; i++){
		temp[i] = g->people[i];
	}

	// Set the remaining people
	for(i = g->max; i < new_pop; i++){
		temp[i] = NULL;
	}

	// Free the old array
	free(g->people);

	// Set the max and people arrays
	g->people = temp;
	g->max = new_pop;

}

/*
 * \brief Utility function that removes a Person from a List
 *
 * \param person is a pointer to a Person
 * \param people is a pointer to a List of people
 * \return
 *
 */
static void remove_person_from_list(Person* person, List* people) {
	// If the list only has one element.
	if (person->prev == NULL && person->next == NULL) {
		people->head = NULL;
		people->tail = NULL;
	}
	// If this is the current head of the list
	else if (person->prev == NULL) {
		people->head = person->next;
		people->head->prev = NULL;
	}

	// If this is the current tail of the list
	else if (person->next == NULL) {
		people->tail = person->prev;
		people->tail->next = NULL;
	}

	// This is the middle of the list
	else {
		person->prev->next = person->next;
		person->next->prev = person->prev;
	}
}

/*
 * \brief Removes a specific Person from the world
 *
 * \param g is a pointer to the GridWorld
 * \param x is the id of the person
 * \return 1 if successful, 0 if fail
 *
 */
int gw_kill(GW g, int x){
	// If the id is out of range
	if (x >= g->max){ return 0;}

	Person *person = g->people[x];
	// If the person doesn't exist
	if (person == NULL){ return 0;}

	// Remove the person from the District list
	List *people = g->districts[person->row][person->column].people;
	remove_person_from_list(person, people);

	// Set the People index to NULL
	g->people[x] = NULL;

	// Decrement the populations
	g->districts[person->row][person->column].population--;
	g->population--;

	// Add the person to the graveyard
	person->prev = NULL;
	person->next = g->graveyard->head;
	if (person->next != NULL){
		person->next->prev = person;
	}
	g->graveyard->head = person;
	if (g->graveyard->tail == NULL){
		g->graveyard->tail = person;
	}

	return 1;
}

/*
 * \brief Frees all allocated GridWorld memory
 *
 * \param g is a pointer to the GridWorld
 * \return
 *
 */
void gw_free(GW g){
	int row, column;

	// Free People index
	free(g->people);

	// Free graveyard
	free_list(g->graveyard->head);
	free(g->graveyard);

	// Free Districts
	for(row = 0; row < g->rows; row++){
		for(column = 0; column < g->columns; column++){
			free_list(g->districts[row][column].people->head);
			free(g->districts[row][column].people);
		}
		free(g->districts[row]);
	}
	free(g->districts);

	// Free the GridWorld object
	free(g);
}

/*
 * \brief Utility function to free a list
 *
 * \param *head is a pointer to the head of a list
 * \return
 *
 */
static void free_list(Person *head){
	Person *temp;
	while(head != NULL){
		temp = head;
		head = head->next;
		free(temp);
	}
}

/*
 ****************************************************************
 *   The following functions are used in debugging only.  It
 *   should be safe to delete them.  They perform internal
 *   consistency checking.
 ****************************************************************
 */
static int gw_pop_check(GW g){
	int i, j;
	int array_count = 0;
	int district_count_from_pop = 0;
	int district_count_from_list = 0;
	int graveyard_count = 0;

	// Check the array versus the population
	for(i = 0; i < g->max; i++){
		array_count += !!(g->people[i]);
	}

	if (array_count != g->population){
		printf("###############################################\n");
		printf("WARNING = POPULATION SIZES DON'T MATCH\n");
		printf("World Pop is %d\n", g->population);
		printf("Districts Pop is %d\n", array_count);
		printf("###############################################\n");
		return FALSE;
	}

	// Check the districts population versus the total population
	for (i = 0; i < g->rows; i++) {
		for (j = 0; j < g->columns; j++) {
			district_count_from_pop += g->districts[i][j].population;
		}
	}
	if (g->population != district_count_from_pop) {
		printf("###############################################\n");
		printf("WARNING = POPULATION SIZES DON'T MATCH\n");
		printf("World Pop is %d\n", g->population);
		printf("Districts Pop is %d\n", district_count_from_pop);
		printf("###############################################\n");
		return FALSE;
	}

	// Check the districts population by adding up the linked lists
	// versus the total population
	Person *temp;
	for (i = 0; i < g->rows; i++) {
		for (j = 0; j < g->columns; j++) {
			temp = g->districts[i][j].people->head;
			while(temp){
				district_count_from_list++;
				temp = temp->next;
			}
		}
	}
	if (g->population != district_count_from_pop) {
		printf("###############################################\n");
		printf("WARNING = POPULATION SIZES DON'T MATCH\n");
		printf("World Pop is %d\n", g->population);
		printf("Districts Pop is %d\n", district_count_from_pop);
		printf("###############################################\n");
		return FALSE;
	}

	// Check the graveyard to make sure it has population - maxid
	// persons
	temp = g->graveyard->head;
	while (temp){
		graveyard_count++;
		temp = temp->next;
	}
	if ((g->max_id - g->population + 1) != graveyard_count) {
		printf("###############################################\n");
		printf("WARNING = GRAVEYARD DOESN'T MATCH\n");
		printf("max_id is %d, population is %d\n", g->max_id, g->population);
		printf("Graveyard count is %d\n", graveyard_count);
		printf("###############################################\n");
		return FALSE;
	}

	// Check to make sure that no person is in the graveyard and in the
	// People index array
	temp = g->graveyard->head;
	while (temp){
		if (g->people[temp->id] != NULL ) {
			printf("###############################################\n");
			printf("WARNING = PERSON IS IN GRAVEYARD AND IN INDEX\n");
			printf("id is %d\n", temp->id);
			printf("###############################################\n");
		}
		temp = temp->next;
		return FALSE;
	}

	// Check to make sure that no person is in the graveyard and in
	// a district
	temp = g->graveyard->head;
	while (temp){
		for (i = 0; i < g->rows; i++) {
			for (j = 0; j < g->columns; j++) {
				Person *person = g->districts[i][j].people->head;
				while(person){
					if (temp->id == person->id) {
						printf("###############################################\n");
						printf("WARNING = PERSON IS IN GRAVEYARD AND IN DISTRICT\n");
						printf("id is %d\n", temp->id);
						printf("Person is in row %d column %d\n", person->row, person->column);
						printf("###############################################\n");
						return FALSE;
					}
					person = person->next;
				}
			}
		}
		temp = temp->next;
	}

	return TRUE;
}

int gw_check(GW g){
	int returnVal = TRUE;

	returnVal = gw_pop_check(g) ? TRUE : FALSE;

	return returnVal;
}
