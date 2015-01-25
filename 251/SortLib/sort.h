#ifndef SORT_H_INCLUDED
#define SORT_H_INCLUDED

extern void isort(int a[], int n);
extern void ssort(int a[], int n);
extern void msort(int a[], int n);
extern int * gen_int_array(int n, int max_val);
extern void dump_int_array(int *a, int n);
extern int * clone_int_array(int *a, int n);

#endif // SORT_H_INCLUDED
