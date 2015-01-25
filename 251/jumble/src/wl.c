#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "wl.h"
#include "ht.h"

#define TRUE 1
#define FALSE 0
//########################################################
// Struct and typedef declarations
//########################################################
struct word_node_struct {
	char *word;
	int num_words;
	struct word_node_struct *next;
};

struct wl_struct {
	int total_words;
	int most_matches;
	HT table;
};

typedef struct word_node_struct *WORD_NODE;

//########################################################
// Function prototypes
//########################################################

// Utility functions
static void lowercase(char *string);
static int compare_chars(const void *c1, const void *c2);
static void remove_newline(char *string);
static char* sort_word (char *word);
static void lowercase(char *string);
static boolean validate_word(char *string);
static void free_word_nodes(const void *node);
static void print_word_nodes(const void *node);
//########################################################
// Visible functions
//########################################################
WL wl_build(int function_number) {
	WL wl;

	// Allocated the structs and initialize variables
	wl = malloc(sizeof(struct wl_struct));
	wl->total_words = 0;
	wl->most_matches = 0;
	wl->table = ht_new(function_number);

	return wl;
}

// Adds a word to the word list
boolean wl_add_word(WL wl, char *line){
	int counter = 0;
	char *word;
	WORD_NODE *head;
	WORD_NODE last;

	// In order to save space, we copy the string
	// into a new bufer sized to fit it
	word = malloc(strlen(line) + 1);
	strcpy(word, line);

	// Clean up the string and validate it
	remove_newline(word);
	lowercase(word);
	if (!validate_word(word)) {
		free(word);
		return FALSE;	
	} 

	// Sort the word to use as the key
	char *sorted_word = sort_word(word);
	
	// Get the value from the hash table
	head = ht_get_key(wl->table, sorted_word);
	last = *head;

	// Look for the word in the value
	while (last != NULL && strcmp(word, last->word)){
		counter++;
		last = last->next;
	}

	// If it's not already there, add it
	if (last == NULL){
		last = malloc(sizeof(struct word_node_struct));
		last->next = *head;
		*head = last;
		last->word = word;

		wl->total_words++;
		counter++;
		if (counter > wl->most_matches){
			wl->most_matches = counter;
		}
	}
	// If it already exists, free it.
	else {
		free(word);
	}

	return TRUE;
}

// Print the matches
void wl_print_matches(WL wl, char *word){
	WORD_NODE *head;
	char *temp;
	
	// Clean up the word for use as a key
	temp = malloc(sizeof(char) * (strlen(word) + 1));
	strcpy(temp, word);
	remove_newline(temp);
	lowercase(temp);
	char *sorted_word = sort_word(temp);
	
	// Get the key from the hash table and print it
	head = ht_get_key(wl->table, sorted_word);
	print_word_nodes(*head);

	// Free the temporary key
	free(temp);
}

// Print out the entire hash table
void wl_print (WL wl) {
	ht_print(wl->table, print_word_nodes);
}

// Return the table size of the hash table
int wl_table_size (WL wl) {
	return ht_table_size(wl->table);
}

// Return the load factor
int wl_load_factor (WL wl) {
	return ht_load_factor(wl->table);
}

// Int return the total number of words
int wl_total_words (WL wl) {
	return wl->total_words;
}

// Return the most number of matches
int wl_most_matches (WL wl) {
	return wl->most_matches;
}

// Return the number of empty buckets
int wl_num_empty_buckets (WL wl) {
	return ht_num_empty_buckets (wl->table);
}

// Return the length of the longest list
int wl_longest_list (WL wl) {
	return ht_longest_list (wl->table);
}

// Return the average length of non-empty lists
float wl_avg_list_length (WL wl) {
	return ht_avg_list_length (wl->table);
}

// Free the word list
boolean wl_free(WL wl) {
	ht_free(wl->table, free_word_nodes);
	free(wl);
	return TRUE;
}

//########################################################
// Utility functions
//########################################################
static boolean validate_word (char *string){
	int i;
	int length = strlen(string) - 1;
	if (length == 0) return FALSE;

	return TRUE;
}

// Print the words given a head
static void print_word_nodes(const void *node){
	WORD_NODE w = (WORD_NODE)node;
	while (w != NULL) {
		printf("%s ", w->word);
		w = w->next;
	}
}

// Free the word nodes given a head
static void free_word_nodes(const void *node){
	WORD_NODE head = (WORD_NODE)node;
	WORD_NODE temp;
	while (head != NULL){
		temp = head;
		head = head->next;
		free(temp->word);
		free(temp);
	}
}

// Convert a string to lowercase
static void lowercase(char *string) {
	int i;
	int length = strlen(string);
	for (i = 0; i < length; i++){
		if (string[i] >= 'A' && string[i] <= 'Z') {
			string[i] += 'a' - 'A';
		}
	}
}

// Removes the newline character from the end of a string
static void remove_newline(char *string){
	int i = strlen(string) - 1;
	while (string[i] == '\n' || string[i] == '\r') {
		string[i] = '\0';
		i--;
	}
}

// Compare chars
static int compare_chars(const void *c1, const void *c2){
	return *(char *)c1 > *(char *)c2 ? 1 : -1;
}

// Sort a word.  Returns a pointer to a new string.
static char* sort_word (char *word){
	char *sorted_word;
	int length = strlen(word);

	// Copy the string to a new buffer
	sorted_word = malloc(sizeof(char) * (length + 1));
	strcpy(sorted_word, word); 
	
	// Sort the new buffer
	qsort(sorted_word, length, sizeof(char), compare_chars);
	return sorted_word;
}
