#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define SIZE 10
#define MAXSIZE 100

#define LEFT(x) ((x) * 2)
#define RIGHT(x) (((x) * 2) + 1)
#define PARENT(x) ((x) / 2)

// Task:  complete hsort -- heapsort for soring arrays of integers.
//
// Rules:  you should write your own code, but can consult with your neighbors
//         DO NOT google for "C implementation of heap sort" (or similar).
//         This is an exercise in translating the conceptual behavior of heaps
//             which you already understand into a C implementation.
//
// Details:
//
//         you'll want to use a max-heap
//         remember that we are working with entries 1..n in each array
//         testing code provided:  it calls your hsort on the array and
//             the library qsort on a copy of the initial array anc compares
//             the results.
//         left(i) = 2*i
//         right(i) = 2*i+1
//         parent(i) = i/2
//         root = 1
//         max at root; all descendants <= root; all subtrees also heaps

void print_array(int *a, int n){
  int i;

  for (i = 1; i < n; i++){
    printf("%d ", a[i]);
  }
  printf("\n");
}

// populates a[1..] with random values
void pop_array(int *a, int n){
  int i;

  for(i=1; i<=n; i++){
      a[i] = rand() % MAXSIZE;
  }
}

void copy_array(int *src, int *dst, int n){
  int i;

  for(i=1; i<=n; i++){
      dst[i] = src[i];
  }
}

int arrays_equal(int *a, int *b, int n){
  int i;

  for(i=1; i<=n; i++){
  if(a[i] != b[i])
      return 0;
  }
  return 1;
}


void percolate_down(int a[], int i, int n){
  int root = i;
  int value = a[root];
 
//  printf("\nEntering percolate down\n"); 
  while (RIGHT(root) < n){
//    printf("Percolating down.  root is %d right is %d\n", root, RIGHT(root));
//    printf("Value is %d left is %d right is %d\n", value, a[LEFT(root)], a[RIGHT(root)]);
    if (value < a[LEFT(root)] || value < a[RIGHT(root)]) {
	if (a[LEFT(root)] > a[RIGHT(root)]) {
//		printf("Swapping %d and %d\n", a[root], a[LEFT(root)]);
		a[root] = a[LEFT(root)];
		root = LEFT(root);
	}
	else {
//		printf("Swapping %d and %d\n", a[root], a[RIGHT(root)]);
		a[root] = a[RIGHT(root)];
		root = RIGHT(root);
	}
    }
    else {
//      printf("Breaking\n");
      break;
    }
  }
  a[root] = value;

}

void percolate_up(int a[], int i){
  int value = a[i];
  
  while (i > 0 && a[PARENT(i)] > a[i]){
    a[i] = a[PARENT(i)];
    i = PARENT(i);
  }
  a[i] = value;
}

int delete_max(int a[], int n){
  int temp = a[1];
  a[1] = a[n - 1];
  a[n - 1] = temp;
  percolate_down(a, 1, n - 1);
}

void heapify (int *a, int n){
	int start;
	
	for (start = n/2; start > 0; start--){
		percolate_down(a, start, n);
//		printf("Percolated  array is: ");
//		print_array(a, SIZE);
	} 
}

// sorts elements in a[1..n];
void hsort(int *a, int n){
  int x = n;
  heapify(a, n);
  printf("\nHeapified array is:\n");
  print_array(a, SIZE);

  for (; n > 1; n--) {
    delete_max(a, n);
    print_array(a, x);
  }
}

int cmp(const void  *x, const void *y){
  return (*((int *)x) - *((int *)y));
}


void test(){
  int a[SIZE + 1];
  int b[SIZE + 1];
  int trial;
  int good, bad;

  good = 0;
  bad = 0;

  for(trial = 0; trial < 10; trial++){
    pop_array(a, SIZE);
    copy_array(a, b, SIZE);

    printf("\nOriginal array is:\n");
    print_array(a, SIZE);

    hsort(a, SIZE);
    printf("\nHeap sorted array is:\n");
    print_array(a, SIZE);
    qsort(b+1, SIZE, sizeof(int), cmp);
    printf("\nQuick sorted array is:\n");
    print_array(b, SIZE);
 
    if(!arrays_equal(a,b,SIZE)){
        bad++;
        printf("Uh Oh -- qsort and hsort don't match?\n");
    }
    else
        good++;
  }
  printf("Test results:  #passes: %d; #failures: %d\n", good, bad);
}

int main()
{
   //srand(time(NULL));
   test();
   return 0;
}
