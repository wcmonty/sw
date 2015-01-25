#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tmap.h"

#define MAXLEN 255
#define NUMINSERTS 1000000
#define MAXTESTS 200

static void print_value (const void *x) {
	NAME_VAL *element = (NAME_VAL*)x;
	if (element == NULL) {
		printf("Error! No element here!\n");
		return;
	}
	printf("%s -> %f (%g)\n", element->name, element->value, element->value);
}

static void test_extractions(TMAP_PTR tmap){
	int i;
	NAME_VAL *range;
	int extracted_range_size;
		
	double min = 0.0, max = 4.0;
	printf("There are %d elements between %.2f and %.2f\n", 
	tmap_range_size(tmap, min, max), min, max);
	

	min = 0.0; max = 1.0;
	printf("There are %d elements between %.2f and %.2f\n", 
	tmap_range_size(tmap, min, max), min, max);

	min = 1.0; max = 2.0;
	printf("There are %d elements between %.2f and %.2f\n", 
	tmap_range_size(tmap, min, max), min, max);
	
	min = 2.0; max = 3.0;
	printf("There are %d elements between %.2f and %.2f\n", 
	tmap_range_size(tmap, min, max), min, max);
	
	min = 1.0;
	for(max = 1.0; max <= (double)(MAXTESTS); max++) {
		// printf("\n");
		// printf("There are %d elements between %.2f and %.2f\n\n", 
			// tmap_range_size(tmap, min, max), min, max);
		if (((tmap_range_size(tmap, min, max), min, max)) > (int)max){
			printf("There was a problem with maxsize %.2lf.\n", max);
		}
		range = tmap_extract_range(tmap, min, max, &extracted_range_size);
		// printf("The extracted range was size %d\n", extracted_range_size);
		for (i = 0; i < extracted_range_size; i++){
			// print_value(&(range[i]));
			free(range[i].name);
			// printf("\n\n");
		}
		free(range);
	}

	
	printf("\n");
}

static void print_insertions(TMAP_PTR tmap) {
	int i;
	if (NUMINSERTS > 100) return;
	for (i = 0; i <= NUMINSERTS + 5; i++){
		print_value(tmap_get_ith(tmap, i));
	}
}

static void test_single_insertions() {
	int i, j;
	TMAP_PTR tmap;

	tmap = tmap_create(NULL);

	// srand(time(NULL));

	char *name, *name2;
	double value;
	NAME_VAL *nv;
	for (i = 0; i < NUMINSERTS; i++){
		if (i % 100 == 0) {
			// printf ("Inserting %dth pair\n", i);
		}
		value = (double)(rand() % 4) + ((double)(rand() % 1000) / 1000.0);
		name = malloc(MAXLEN * sizeof(char));
		for (j = 0; j < 25; ++j) {
			name[j] = ((rand() % 26) + 'a');
		}
		name[j] = '\0';
		tmap_insert(tmap, name, value);
		free(name);
	}

	name = malloc(MAXLEN * sizeof(char));
	name[0] = 'B';
	name[1] = '\0';
	name2 = malloc(MAXLEN * sizeof(char));
	strcpy(name2, name);
	tmap_insert(tmap, name, 1.0);
	tmap_insert(tmap, name2, 5.0);
	free(name2);
	free(name);

	print_insertions(tmap);
	test_extractions(tmap);

	name = malloc(MAXLEN * sizeof(char));
	name[0] = 'B';
	name[1] = '\0';
	nv = tmap_name2value(tmap, name);
	printf("The nv pair from tmap_name2value is: \n");
	print_value(nv);
	tmap_remove_by_name(tmap, name);
	free(name);
	print_insertions(tmap);

	// printf("The height of the tree is %d.\n", bst_height(tree));
	// printf("The size of the tree is %d.\n", bst_size(tree));
	tmap_stats(tmap);
	tmap_destroy(tmap);
}

static void test_mass_insertions (){
	TMAP_PTR tmap;
	char filename[20] = "test.txt";
	tmap = tmap_create(filename);
	print_insertions(tmap);
	test_extractions(tmap);
	tmap_stats(tmap);
	tmap_destroy(tmap);
}

int main (void) {
	test_single_insertions();
	test_mass_insertions();
	return 0;
}
