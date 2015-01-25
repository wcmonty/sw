#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ht.h"

#define TRUE 1
#define FALSE 0
#define HASH_CONSTANT 23
#define INIT_SIZE 100
#define MAX_FILLED 75

//########################################################
// Struct and typedef declarations
//########################################################
struct ht_node_struct {
	char *key;
	unsigned hash_value;
	
	ELEMTYPE value;
	struct ht_node_struct *next;
};

struct ht_header_struct {
	int list_length;
	struct ht_node_struct *head;
};

struct ht_struct {
	unsigned size;
	int elements;
	int longest_list;
	unsigned (*hash_function)(char*);

	struct ht_header_struct *headers;
};

typedef struct ht_node_struct *HT_NODE;
typedef struct ht_header_struct *HEADER;

//########################################################
// Function prototypes
//########################################################

// Utility functions
static void ht_resize(HT ht);
static int pow_i(int x, int n);
static unsigned easy_hash (char *word);
static unsigned better_hash (char *word);

//########################################################
// Visible functions
//########################################################
HT ht_new (int hash_function_number) {
	int i;
	HT ht;
	
	// Initialize the table
	ht = malloc(sizeof(struct ht_struct));
	ht->size = INIT_SIZE;
	ht->elements = 0;
	ht->longest_list = 0;

	// Set up function pointers
	if (hash_function_number){
		ht->hash_function = &better_hash;
	}
	else {
		ht->hash_function = &easy_hash;
	}

	// Initialize the headers
	ht->headers = malloc(INIT_SIZE * sizeof(struct ht_header_struct));
	for (i = 0; i < INIT_SIZE; i++){
		ht->headers[i].list_length = 0;
		ht->headers[i].head = NULL;
	}

	return ht;
}


/* Returns a created key or creates a new key */
ELEMTYPE* ht_get_key(HT ht, char *key) {
	HT_NODE temp;
	
	// Resize if threshhold has been reached
	if((ht->elements * 100 / ht->size) > MAX_FILLED){
		ht_resize(ht);
	}

	// Run the hash and figure out the bucket
	unsigned hash = (ht->hash_function)(key);
	unsigned bucket = hash % ht->size;
	temp = ht->headers[bucket].head;

	// Search the linked list for a matching hash value and key
	while (temp) {
		if (temp->hash_value == hash && !(strcmp(temp->key, key))) {
			break;
		}
		else {
			temp = temp->next;
		}
	}

	// If no matching key is found create a new key
	if (temp == NULL) {
		temp = malloc(sizeof(struct ht_node_struct));
		temp->next = ht->headers[bucket].head;
		ht->headers[bucket].head = temp;
		ht->headers[bucket].list_length++;

		if (ht->longest_list < ht->headers[bucket].list_length){
			ht->longest_list = ht->headers[bucket].list_length;
		}

		temp->key = key;
		temp->hash_value = hash;
		temp->value = NULL;

		ht->elements++;
	}
	// Otherwise, the key exists, so we don't need it anymore
	else {
		free(key);
	}

	// Return a pointer to the ELEMTYPE
	return &(temp->value);
}

// Prints out the hash table --- for debugging
void ht_print(HT ht, void (*print_function)(const void *)){
	int i;
	HT_NODE temp;

	// For each bucket, print the contents of the bucker
	for (i = 0; i < ht->size; i++){
		temp = ht->headers[i].head;
		printf("#######################################\n");
		printf("Bucket %d\n", i);
		
		// Here we use a function pointer to print out the values
		// Used so that we can set ELEMTYPE to any kind of struct	
		while (temp != NULL){
			printf("%s (%u) => ( ", temp->key, temp->hash_value);
			print_function(temp->value);
			printf(")\n");
			temp = temp->next;
		}
	}
}

// Returns the size of the table
int ht_table_size (HT ht){
	return (ht->size);
}

// Returns the load factor as a percent
int ht_load_factor (HT ht){
	return ((ht->elements * 100) / ht->size);
}

// Returns the number of empty buckets 
int ht_num_empty_buckets (HT ht){
	int i;
	int counter = 0;

	// If the bucket is empty, increment the counter
	for (i = 0; i < ht->size; i++){
		if (ht->headers[i].head == NULL){
			counter++;
		}
	}
	return counter;
}

// Returns the length of the longest list
int ht_longest_list (HT ht) {
	return ht->longest_list;
}

// Returns the average length of the non-empty lists
float ht_avg_list_length (HT ht){
	int i;
	int sum = 0;
	int counter = 0;

	// If the list is non-empty, increment the counter
	// and add the length to sum
	for (i = 0; i < ht->size; i++){
		if (ht->headers[i].head != NULL){
			sum += ht->headers[i].list_length;
			counter++;
		}
	}

	// Return the average
	return (float)sum / (float)counter;
}

// Free the struct and any sub-structs
void ht_free(HT ht, void (*free_elem)(const void *)){
	int i;
	HT_NODE temp;
	HT_NODE head;

	// For each bucket, free the elements
	for (i = 0; i < ht->size; i++){
		head = ht->headers[i].head;
		while(head != NULL){
			temp = head;
			head = head->next;
			// Here we use a function pointer
			// to free the values
			free_elem(temp->value);
			free(temp->key);
			free(temp);
		}
	}

	// Free the headers and the struct itself
	free (ht->headers);
	free (ht);
}

//########################################################
// Utility functions
//########################################################
static void ht_resize (HT ht){
	int i, new_i;
	int size = ht->size;
	int new_size = 2 * size;
	HT_NODE temp, new_head;

	ht->longest_list = 0;
	
	// Create and initialize the new headers
	HEADER new_headers = malloc(new_size * sizeof(struct ht_header_struct));
	for (i = 0; i < new_size; i++){
		new_headers[i].list_length = 0;
		new_headers[i].head = NULL;
	}

	// Move the old elements to the new headers
	for (i = 0; i < size; i++){
		temp = ht->headers[i].head;
		while (temp != NULL) {
			// Remove from the old list
			ht->headers[i].head = temp->next;
			
			// Add to the new list
			new_i = temp->hash_value % new_size;
			temp->next = new_headers[new_i].head;
			new_headers[new_i].head = temp;
			new_headers[new_i].list_length++;

			// Reset temp to the new head of the old bucket
			temp = ht->headers[i].head;

			if (ht->longest_list < new_headers[new_i].list_length){
				ht->longest_list = new_headers[new_i].list_length;
			}
		}
	}

	// Free the old headers and set the hash table to use the new headers
	free(ht->headers);
	ht->headers = new_headers;
	ht->size = new_size;
}

// Sums up the ASCII values of a word
static unsigned easy_hash (char *word){
	int i;
	unsigned hash_val = 0;
	int length = strlen(word);

	if (length <= 0) return -1;

	for (i = 0; i < length; i++){
		hash_val += word[i];
	}
	return hash_val;
}

// Returns x^n
// Warning!!! This function will overflow easily!
// This is acceptable for hashes, but use caution otherwise.
static int pow_i(int x, int n){
	int i;
	int value = 1;
	for (i = 0; i < n; i++){
		value *= x;
	}
	return value;
}

// Returns the sum of C^(n-i-1) * word[i] over the length of the word
static unsigned better_hash (char *word){
	int i;
	unsigned hash_val = 0;
	int length = strlen(word);

	if (length <= 0) return -1;

	for (i = 0; i < length; i++){
		hash_val += pow_i(HASH_CONSTANT, length - i - 1) * word[i];
	}
	return hash_val;
}

