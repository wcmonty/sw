#ifndef HT_H_INCLUDED
#define HT_H_INCLUDED

typedef struct ht_struct *HT;

extern HT ht_new(int hash_function_number);
extern ELEMTYPE* ht_get_key(HT ht, char *key);
extern void ht_print(HT ht, void (*print_function)(const void *));
extern int ht_table_size (HT ht);
extern int ht_load_factor (HT ht);
extern int ht_num_empty_buckets (HT ht);
extern int ht_longest_list (HT ht);
extern float ht_avg_list_length (HT ht);
extern void ht_free(HT ht, void (*free_elem)(const void *));

#endif // HT_H_INCLUDED
