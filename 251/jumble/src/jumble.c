#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "wl.h"

#define TRUE 1
#define FALSE 0
#define MAX_LINE_LENGTH 50

//########################################################
// Function prototypes
//########################################################
static void validate_input (int argc);
static void add_dictionary (WL wl, char *input_file);
static void print_statistics (WL wl);
static void get_input (WL wl);

//########################################################
// Main
//########################################################
int main(int argc, char **argv){
	WL wl;
	validate_input (argc);

	// Build the word list, add the words, and print
	// out statistics
	wl = wl_build (atoi(argv[2]));
	add_dictionary (wl, argv[1]);
	print_statistics (wl);

	// Interactively get user input
	get_input(wl);

	// Free everything
	if (!(wl_free(wl))) {
		printf ("Freeing failed\n");
	}

	return 0;
}

//########################################################
// Function definitions
//########################################################
// Gets words from STDIN and prints the matches
static void get_input (WL wl){
	char line[MAX_LINE_LENGTH];
	do {
		printf("\n");
		printf("Enter a jumbled word (or \".\" to end): ");
		fgets(line, MAX_LINE_LENGTH, stdin);
		if (strlen(line) > 1) {
			wl_print_matches(wl, line);
		}
	} while (strcmp(line, ".\n"));
}

// Validate the command line args.  If there are not three abort.
static void validate_input (int argc){
	if (argc != 3) {
		fprintf(stderr, "Wrong number of inputs.\n");
       	 	abort();
	}
}

// Add the words in the dictionary
static void add_dictionary (WL wl, char *input_file){
	FILE *src;
	char line[MAX_LINE_LENGTH];

	/* Try to open the input file. */
	if (( src = fopen(input_file, "r" )) == NULL ) {
		printf( "Can't open input file: %s\n", input_file);
		abort();
	}

	// Get each line and try to add it
	// The wordlist removes newlines and checks for empty strings
	// so we can just throw the entire line here.
	while (fgets(line, MAX_LINE_LENGTH, src) != NULL) {
		if (strlen(line) > 0) {
			wl_add_word(wl, line);
		}
	}
}

// Print the statistics
static void print_statistics (WL wl){
	printf("There were %d total words added.\n", wl_total_words(wl));
	printf("The most matches to a single jumble is %d.\n", wl_most_matches (wl));
	printf("The table size is currently %d.\n", wl_table_size (wl));
	printf("The load factor is %d.\n", wl_load_factor (wl));
	printf("There are %d empty buckets.\n", wl_num_empty_buckets (wl));
	printf("The average list length is %.3f.\n", wl_avg_list_length (wl));
	printf("The longest list length is %d.\n", wl_longest_list (wl));
}
