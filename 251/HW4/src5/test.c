/*
 * test.c
 * William Montgomery
 * CS 251 - HW 4
 * Problem 5
 * Spring 2013
 */
#include <stdio.h>
#include <stdlib.h>
#define NUMTHINGS 20000

typedef struct big_struct {
   double  gpa;
   int ssn;
   int age;
   double log_data[100];
}BIG_THING;

void print_int_arrays(int *ary, int number){
	int i = 0;
	for(; i < number; i++){
		printf("%d ", ary[i]);
	}
	puts("\n");
	return;
}

int compare_vals(const void *thing1, const void *thing2){
	BIG_THING *t1 = (BIG_THING *)thing1;
	BIG_THING *t2 = (BIG_THING *)thing2;

	return t1->gpa < t2->gpa ? 1 : -1;
}

int compare_pointers(const void *thing1, const void *thing2){
	BIG_THING **t1 = (BIG_THING **)thing1;
	BIG_THING **t2 = (BIG_THING **)thing2;

	return (*t1)->gpa < (*t2)->gpa ? 1 : -1;
}

void print_array(BIG_THING a[], int n){
	int i;
	for(i = 0; i < n; i++){
		printf("%3d %10d %1.2f\n", a[i].age, a[i].ssn, a[i].gpa);
	}
}

void print_array_ptr(BIG_THING *a[], int n){
	int i;
	for(i = 0; i < n; i++){
		printf("%3d %10d %1.2f\n", a[i]->age, a[i]->ssn, a[i]->gpa);
	}
}

int main()
{
	BIG_THING a[NUMTHINGS];
    BIG_THING *b[NUMTHINGS];
    int i, age, ssn;
    double gpa;

    for (i = 0; i < NUMTHINGS; i++){
    	age = rand() % 110;
    	ssn = rand() % 999999999;
    	gpa = (double)rand() / (double)(RAND_MAX / 4.0);
    	a[i].age = age;
    	a[i].ssn = ssn;
    	a[i].gpa = gpa;
    	b[i] = (BIG_THING*)malloc(sizeof(BIG_THING));
    	b[i]->age = age;
    	b[i]->ssn = ssn;
    	b[i]->gpa = gpa;
    }

    if(NUMTHINGS < 25){
        printf("Unsorted array\n");
        print_array(a, NUMTHINGS);
        printf("Unsorted array\n");
        print_array_ptr(b, NUMTHINGS);
    }

    printf("Quick sorting array by value of GPA\n");
    qsort(a, NUMTHINGS, sizeof(BIG_THING), compare_vals);
    if(NUMTHINGS < 25){
    	print_array(a, NUMTHINGS);
    }
	printf("Quick sorting array by value of GPA by pointer\n");
	qsort(b, NUMTHINGS, sizeof(BIG_THING*), compare_pointers);
    if(NUMTHINGS < 25){
    	print_array_ptr(b, NUMTHINGS);
    }

    for (i = 0; i < NUMTHINGS; i++){
    	free(b[i]);
    }

    exit(1);

}
