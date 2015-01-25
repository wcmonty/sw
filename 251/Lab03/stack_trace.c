#include <stdio.h>
#include <stdlib.h>



void msort_intR(int a[], int lo, int hi, int scratch[]) {
     int i, j, k, m;
                         // "N" = hi-lo+1
     if(lo >= hi)
       return;     // SET BREAKPOINT HERE!!!
     m = (lo + hi)/2;
     msort_intR(a, lo, m, scratch);
     msort_intR(a, m+1, hi, scratch);

     i=lo;  // lhs index
     j=m+1; // rhs index
     k=0;   // index into scratch

     while(i <= m && j <= hi) {
             if(a[i] <= a[j]){
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
void msort_int(int a[], int n) {
    int *scratch;
    scratch = (int *)malloc(n * sizeof(int));

    msort_intR(a, 0, n-1, scratch);
    free(scratch);
}

int is_sorted(int a[], int n){
    int i = 0;
    for (; i < n - 1; i++){
        if (a[i] > a[i+1]){
            return 0;
        }
    }

    return 1;
}

int main() {
  int a[64];
  int i;

  for(i=0; i<64; i++)
    a[i] = rand() %100;

  if(is_sorted(a, 64)){
    printf("Array is sorted.\n");
  }
  else {
    printf("Array is not sorted.\n");
  }

  printf("Sorting array.\n");
  msort_int(a, 64);

  if(is_sorted(a, 64)){
    printf("Array is sorted.\n");
  }
  else {
    printf("Array is not sorted.\n");
  }

  return 0;

}
