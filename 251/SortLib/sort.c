#include "sort.h"
#include <stdlib.h>
#include <stdio.h>


void isort(int a[], int n)
{
    int i, j, val;

    for(i=1; i<n; i++)
    {
        j=i-1;
        val = a[i];
        while(j >= 0 && a[j] > val)
        {
            a[j+1] = a[j];
            j--;
        }
        a[j+1] = val;

    }
}

void ssort(int a[], int n)
{
    int i, j, small, temp;

    for (i = 0; i < n-1; i++)
    {
        small = i;
        for (j = i+1; j < n; j++)
            if (a[j] < a[small])
                small = j;
        temp = a[small];
        a[small] = a[i];
        a[i] = temp;
    }
}


void msortR(int a[], int lo, int hi, int scratch[]) {
     int i, j, k, m;

     if(lo >= hi)
       return;
     m = (lo + hi)/2;
     msortR(a, lo, m, scratch);
     msortR(a, m+1, hi, scratch);

     i=lo;  // lhs index
     j=m+1; // rhs index
     k=0;   // index into scratch

     while(i <= m && j <= hi) {
             if(a[i] < a[j]){
               scratch[k] = a[i];
               i++;
             }
             else{
               scratch[k] = a[j];
               j++;
             }
             k++;
     }
     while(i <= m) {
             scratch[k] = a[i];
             i++;
             k++;
     }
     while(j <= hi) {
             scratch[k] = a[j];
             j++;
             k++;
     }
     for(k=0, i=lo; i<=hi; i++, k++) {
              a[i] = scratch[k];
     }



}
void msort(int a[], int n) {
    int *scratch;
    scratch = (int *)malloc(n * sizeof(int));

    msortR(a, 0, n-1, scratch);
    free(scratch);
}


int * gen_int_array(int n, int max_val) {
  int i;
  int *a = malloc(n*sizeof(int));
  for(i=0; i<n; i++){
    a[i] = rand() % max_val;
  }
  return a;
}

int * clone_int_array(int *a, int n){
  int *b = (int *)malloc(n * sizeof(int));
  int i;
  for(i=0; i<n; i++)
    b[i] = a[i];
  return b;
}


void dump_int_array(int *a, int n) {
int i;
     for(i=0; i<n; i++)
              printf("  %d\n", a[i]);
}


