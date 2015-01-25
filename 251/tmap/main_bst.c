#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bst.h"

#define MAXLEN 255
#define NUMINSERTS 10000

typedef struct name_val {
    char *name;
    double value;
} NAME_VAL;

static int cmp_val_name (const void *x, const void *y) {
	NAME_VAL *first = (NAME_VAL*)x;
	NAME_VAL *second = (NAME_VAL*)y;

	if (first->value < second->value){
		return -1;
	} else if (first->value > second->value){
		return 1;
	}
	else {
		return strcmp(first->name, second->name);
	}
}

static int cmp_val_name_qsort (const void *x, const void *y) {
	NAME_VAL **first = (NAME_VAL **)x;
	NAME_VAL **second = (NAME_VAL **)y;
	
	if ((*first)->value < (*second)->value){
		return -1;
	} else if ((*first)->value > (*second)->value){
		return 1;
	}
	else {
		return strcmp((*first)->name, (*second)->name);
	}
}

static int cmp_val_double (const void *x, double second) {
	NAME_VAL *first = (NAME_VAL*)x;

	if (first->value < second) {
		return -1;
	}
	else {
		return 1;
	}
}

static void free_element (const void *x) {
	NAME_VAL *element = (NAME_VAL*)x;
	free(element->name);
	free(element);
}

static void print_value (const void *x) {
	NAME_VAL *element = (NAME_VAL*)x;
	if (element == NULL) {
		printf("Error! No element here!\n");
		return;
	}
	printf("%s -> %f (%g)\n", element->name, element->value, element->value);
}

static void test_single_insertions() {
	int i, j;
	BST_PTR tree;
	tree = bst_create();

	srand(time(NULL));

	NAME_VAL *temp;
	char name[MAXLEN];
	for (i = 0; i < NUMINSERTS; i++){
		if (i % 100 == 0) {
			printf ("Inserting %dth pair\n", i);
		}
		temp = malloc(sizeof(NAME_VAL));
		temp->value = (double)rand();
		temp->name = malloc(MAXLEN * sizeof(char));
		for (j = 0; j < 25; ++j) {
			name[j] = ((rand() % 26) + 'a');
		}
		name[j] = '\0';

		strcpy(temp->name, name);
		bst_insert(tree, temp, cmp_val_name);
	}

	for (i = 0; i <= NUMINSERTS + 1; i++){
		print_value(bst_get_ith(tree, i));
	}
	
	printf("The height of the tree is %d.\n", bst_height(tree));
	printf("The size of the tree is %d.\n", bst_size(tree));
	
	bst_free(tree, &free_element);
}

static void test_mass_insertions() {
int i, j;
	BST_PTR tree;
	
	srand(time(NULL));

	NAME_VAL *temp;
	NAME_VAL **temparray;
	int success;

	temparray = malloc(NUMINSERTS * sizeof(NAME_VAL*));
	char name[MAXLEN];
	for (i = 0; i < NUMINSERTS; i++){
		temp = malloc(sizeof(NAME_VAL));
		temp->value = (double)rand();
		temp->name = malloc(MAXLEN * sizeof(char));
		for (j = 0; j < 25; ++j) {
			name[j] = ((rand() % 26) + 'a');
		}
		name[j] = '\0';

		strcpy(temp->name, name);
		temparray[i] = temp;
	}

	qsort(temparray, NUMINSERTS, sizeof(NAME_VAL*), cmp_val_name_qsort);
	
	tree = bst_from_sorted_elems (temparray, NUMINSERTS);
	
	for (i = 0; i <= NUMINSERTS + 1; i++){
		print_value(bst_get_ith(tree, i));
	}
	
	printf("The height of the tree is %d.\n", bst_height(tree));
	printf("The size of the tree is %d.\n", bst_size(tree));
	
	for (i = 0; i < NUMINSERTS; i++) {
		success = bst_remove(tree, temparray[i], cmp_val_name, free_element);
		if (!success) {
			printf("There was an error removing a node!\n");
		}
	}

	success = bst_remove(tree, temparray[0], cmp_val_name, free_element);
	if (!success) {
		printf("There was an expected error removing a node.\n");
	}

	// for (i = 0; i <= NUMINSERTS; i++){
	// 	print_value(bst_get_ith(tree, i));
	// }
	printf("The height of the tree is %d.\n", bst_height(tree));
	printf("The size of the tree is %d.\n", bst_size(tree));
	
	free(temparray);
	bst_free(tree, &free_element);	
}

int main () {
	test_single_insertions();
	test_mass_insertions();
	return 0;
}