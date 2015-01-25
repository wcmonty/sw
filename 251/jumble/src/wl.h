#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef int boolean;

#ifndef WL_H_INCLUDED
#define WL_H_INCLUDED

typedef struct wl_struct *WL;

extern WL wl_build(int function_number);
extern boolean wl_free(WL wl);
extern boolean wl_add_word(WL wl, char *word);
extern int wl_total_words (WL wl);
extern int wl_table_size (WL wl);
extern int wl_num_empty_buckets (WL wl);
extern float wl_avg_list_length (WL wl);
extern int wl_load_factor (WL wl);
extern int wl_most_matches (WL wl);
extern void wl_print_matches(WL wl, char *word);


extern void wl_print(WL wl);
#endif // WL_H_INCLUDED

