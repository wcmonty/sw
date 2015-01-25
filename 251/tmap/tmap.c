//########################################################
// William Montgomery
// CS 251
// Spring 2013
// tmap - an implementation of a tree map in c
//########################################################
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "project.h"
#include "tmap.h"
#include "ht.h"
#include "bst.h"

#define HASH_FUNCTION 1
#define MAX_LINE_LENGTH 255

//########################################################
// Struct and typedef declarations
//########################################################
struct tmap_struct {
	BST_PTR tree;
	HT index;

	size_t total_insertions;
	size_t total_deletions;
};

typedef struct node_struct *NODE_PTR;

//########################################################
// Function prototypes
//########################################################
static TMAP_PTR tmap_create_empty();
static void read_file (TMAP_PTR t, char *fname);
static void free_element (const void *element);
static int cmp_val_name (const void *x, const void *y);
static int cmp_val_name_qsort (const void *x, const void *y);
static int cmp_val_double (const void *x, const void *y);

//########################################################
// Exposed functions
//########################################################
/**
* Creates and initializes a tmap.  Returns pointer to
*  created tmap.
* Parameter:  fname gives the name of a file containing
*  name/value pairs, one pair per line.  The tmap is
*  initialized with these values.
*
*  File format example:
*
     bob 2.911
     larry 1.8
     mike 2.9
*
*  If fname is NULL an empty tmap is initialized.
**/
TMAP_PTR tmap_create(char *fname){
	TMAP_PTR t;
	t = tmap_create_empty();
	
	if (fname != NULL) {
		read_file (t, fname);
	}

	return t;
}

/**
* Inserts given name-value pair into tmap.
*
* returns 1 if succeeds; 0 for failure.
*
* For partial credit:  you may assume that every insert
*   is for a name not currently in the tmap.
*
* For full credit:  if there is an entry with the same
*   name already in the tmap you change the associated
*   value to be the parameter val (and modify the tree
*   accordingly).
*
* Runtime O(log n) (ammortized)
**/
int tmap_insert(TMAP_PTR t, char *name, double val){
	if (t == NULL || t->tree == NULL || name == NULL) return 0;
	
	NAME_VAL *nv;
	NAME_VAL **pair;

	// Create a new key to use in the hash table
	char *key = malloc((strlen(name) + 1) * sizeof(char));
	strcpy(key, name);

	// Get whatever is in the hash with this key
	pair = ht_get_key(t->index, key);

	// If there was something there already, remove it
	if (*pair != NULL) {
		bst_remove(t->tree, *pair, cmp_val_name, free_element);
	}

	// Create a new NAME_VAL object
	nv = malloc(sizeof(NAME_VAL));
	nv->name = malloc((strlen(name) + 1) * sizeof(char));
	strcpy(nv->name, name);
	nv->value = val;

	// Insert the object into the tree and the hash
	bst_insert(t->tree, nv, cmp_val_name);
	*pair = nv;
	
	(t->total_insertions)++;
	return 1;
}

/**
* returns the number of name-value pairs in the map
*
* Runtime:  O(1)
*/
int tmap_size(TMAP_PTR t){
	if (t == NULL || t->tree == NULL) return -1; // Error code
	return bst_height(t->tree);
}

/**
* returns the height of the underlying tree
*
* Runtime:  O(1)
*/
int tmap_height(TMAP_PTR t){
	if (t == NULL || t->tree == NULL) return -1; // Error code
	return bst_height(t->tree);
}

/**
* returns pointer to NAME_VAL pair which is the
*   i'th entry in the sorted sequence.
*
* if i=1, you return the min entry
* if i=n, you return the max entry
* if n=n/2 you return the median entry (or close)
* if(i < 1 || i > n) return NULL;
*
* Runtime:  O(log n)
*/
NAME_VAL * tmap_get_ith(TMAP_PTR t, int i){
	if (t == NULL || t->tree == NULL) return NULL;
	return bst_get_ith(t->tree, i);
}

/**
* returns the number of entries in the map with values
*   between min and max inclusive -- i.e., the number of
*   entries where min <= val <= max
*
* Runtime:  O(log n)
*/
int tmap_range_size(TMAP_PTR t, double min, double max){
	if (t == NULL || t->tree == NULL) return 0; 
	return bst_range_size (t->tree, min, max, cmp_val_double);
}

/**
* returns an array populated with all entries in the given range.
*   number of such entries is reported through the integer pointer
*   parameter m (so the caller knows the length of the array).
*
* Runtime requirement is "output dependent" in that it depends on
*   the map size AND the number of elements in the range (m).
*
* Runtime:  O(m + log n)
*/
NAME_VAL* tmap_extract_range(TMAP_PTR t, double min, double max, int *m){
	if (t == NULL || t->tree == NULL) return 0; 
	int i;
	*m = 0;
	
	NAME_VAL **range;
	NAME_VAL *return_val;

	// Since the BST does not know what a NAME_VAL is, it returns an array
	// of pointers to NAME_VALS
	range = bst_extract_range (t->tree, min, max, m, cmp_val_double);

	// Manually walk through the array and copy values into a new array
	return_val = malloc(*m * sizeof(NAME_VAL));
	for (i = 0; i < *m; i++){
		return_val[i].name = malloc((strlen(range[i]->name) + 1) * sizeof(char));
		strcpy(return_val[i].name, range[i]->name);
		return_val[i].value = range[i]->value;
	}

	free(range);
	return return_val;
}

/**
* Prints the following
*
*   The current size of the map.
*   The current height of the tree.
*   The total number of successful insertions since creation.
*   The total number of successful deletions since creation (if supported)
*   The total number of rebalancing operations performed since creation
*   The total "work" done over all rebalancing operations; an individual
*      rebalancing operation does work equal to the size of the subtree
*      being rebalanced since the operation is linear in the size of the
*      subtree being rebalanced.
*/
void tmap_stats(TMAP_PTR t){
	if (t == NULL || t->tree == NULL) {
		printf("There is a problem with the map!\n");
		printf("Cannot print statistics.\n");
	}
	printf("The current size of the map is %d\n", bst_size(t->tree));
	printf("The current height of the map is %d\n", bst_height(t->tree));
	printf("The total number of successful insertions is %zu\n", t->total_insertions);
	printf("The total number of successful deletions is %zu\n", t->total_deletions);
	printf("The total number of rebalancing operations is %d\n", bst_rebalancing_operations(t->tree));
	printf("The total number of rebalancing work is %d\n", bst_work_done(t->tree));
}


/**
* deallocates all memory associated with the map.
*
*/
void tmap_destroy(TMAP_PTR t){
	if (t == NULL) return;

	if (t->tree != NULL) bst_free(t->tree, free_element);
	if (t->index != NULL) ht_free(t->index, free_element);
	free (t);
}

/**  BONUS FEATURES ****/

/**
* If an entry has the given name, a pointer to that NAME_VAL
*   is returned.
* If no such entry, NULL is returned.
*
* Runtime:  O(1) for full bonus points.
*           O(log n) for partial bonus points
*           Theta(n):  no bonus points, but it might be handy for debugging.
*/
NAME_VAL* tmap_name2value(TMAP_PTR t, char *name){
	NAME_VAL **pair;

	// Create a new key for the hash table
	char *key = malloc((strlen(name) + 1) * sizeof(char));
	strcpy(key, name);

	// Get the value from the hash table and return it
	pair = ht_get_key(t->index, key);
	return *pair;
}


/**
* removes entry corresponding to the given name (if such an entry
*   exists).  On success 1 is returned; if no such entry exists, 0
*   is returned.
*
* Runtime:  O(log n) amortized for bonus credit.
*/
int tmap_remove_by_name(TMAP_PTR t, char *name){
	if (t == NULL || t->tree == NULL) return -1; // Error code

	NAME_VAL *nv;
	int success = 0;
	
	// Get the value from the name
	nv = tmap_name2value(t, name);
	
	// Remove it from the tree
	if (nv != NULL) {
		success = bst_remove(t->tree, nv, cmp_val_name, free_element);
	}
	
	t->total_deletions += success;
	return success;
}

//########################################################
// Utility functions
//########################################################
static TMAP_PTR tmap_create_empty() {
	TMAP_PTR t;
	t = malloc(sizeof(struct tmap_struct));
	t->tree = bst_create();
	t->index = ht_new(HASH_FUNCTION);
	t->total_insertions = 0;
	t->total_deletions = 0;
	return t;
}

/**
* Reads in a file line by line, and tries to add than line
* to the tmap.  This is sparse on error checking as per 
* instructions.
*/
static void read_file (TMAP_PTR t, char *fname){
	FILE *src;
	char line[MAX_LINE_LENGTH];
	char name[MAX_LINE_LENGTH];
	double value;
	
	/* Try to open the input file. */
	if (( src = fopen(fname, "r" )) == NULL ) {
		printf( "Can't open input file: %s\n", fname);
		abort();
	}

	// Get each line and try to add it
	while (fgets(line, MAX_LINE_LENGTH, src) != NULL) {
		name[0] = '\0';
		if (strlen(line) > 0) {
			sscanf(line, "%s %lf", name, &value);
			if (strlen(name) > 1){
				tmap_insert(t, name, value);
			}
			else {
				printf("Warning! Could not add: %s\n", name);
			}
		}
	}
	fclose(src);
}

/**
* Compares two name value pairs, first by the value of the
* double and then by the strings.  If the first is less than
* the second, returns -1.  If the first is greater than the
* second, returns 1.  If they are equal the strings are 
* compared, and the results from that comparison are returned.
*/
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

/**
* Compares a double value against a name value pair.  If name value 
* is less than the double, returns -1.  If the name value is greater
* than the double, returns 1.  If they are equal, returns 0.
*/
static int cmp_val_double (const void *x, const void *y) {
	NAME_VAL *first = (NAME_VAL*)x;
	double *second = (double*)y;

	if (first == NULL) return 0; // Should we error?
	if (first->value < *second){
		return -1;
	} else if (first->value > *second){
		return 1;
	}
	return 0;
}

/**
*	Frees an name value element.
*/
static void free_element (const void *x) {
	if (x == NULL) return;
	NAME_VAL *element = (NAME_VAL*)x;
	free(element->name);
	free(element);
}
