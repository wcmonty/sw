#include "sort.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct PointStruct{
	double x;
	double y;
}Point;

void print_points(Point *pts, int n){
	int i;

	for (i = 0; i < n; i++){
		printf("(%f, %f)\n", pts[i].x, pts[i].y);
	}
}

void print_int_arrays(int *ary, int number){
	int i = 0;
	for(; i < number; i++){
		printf("%d ", ary[i]);
	}
	puts("\n");
	return;
}

int compare_x(const void *point1, const void *point2){
	int returnVal = 0;
	Point *p1 = (Point *)point1;
	Point *p2 = (Point *)point2;

	if (p1->x < p2->x){
		returnVal = -1;
	}
	else if(p1->x > p2->x) {
		returnVal = 1;
	}

	if (!returnVal){
		if (p1->y < p2->y){
			returnVal = -1;
		}
		else if(p1->y > p2->y) {
			returnVal = 1;
		}
	}
	return returnVal;
}

int compare_y(const void *point1, const void *point2){
	int returnVal = 0;
	Point *p1 = (Point *)point1;
	Point *p2 = (Point *)point2;

	if (p1->y < p2->y){
		returnVal = -1;
	}
	else if(p1->y > p2->y) {
		returnVal = 1;
	}

	if (!returnVal){
		if (p1->x < p2->x){
			returnVal = -1;
		}
		else if(p1->x > p2->x) {
			returnVal = 1;
		}
	}

	return returnVal;
}



int compare_vals(const void *int1, const void *int2){
	int returnVal = 0;

	//	printf("Comparing %d and %d\n", *i1, *i2);
	if (*(int *)int1 < *(int *)int2){
		returnVal = -1;
	}
	else if(*(int *)int1 > *(int *)int2) {
		returnVal = 1;
	}
	return returnVal;
}

int main()
{
    int n;
    int i;
    int *a, *b, *c, *d, *e;
	Point p1[] = {{2,3}, {2, -1}, {9, -9}, {-7, 7}, {8, -9}};
	Point p2[] = {{2,3}, {2, -1}, {9, -9}, {-7, 7}, {8, -9}};

    printf("enter n: ");
    if(scanf("%d", &n) != 1 || n < 10)
    {
        fprintf(stderr, "bad input.  goodbye\n");
        abort();
    }

//    printf("sizeof(double) %d\n", (int)sizeof(double) );

    printf("running experiments with n=%d\n", n);

    a = gen_int_array(n, 5000);
    b = clone_int_array(a, n);
    c = clone_int_array(a, n);
    d = clone_int_array(a, n);
    e = clone_int_array(a, n);

    if(n<50) {
        printf("\nUnsorted array\n");
        dump_int_array(d, n);
    }

//    ssort(a, n);
//    isort(b, n);
//    msort_int(c, n);
	printf("Merge sorting array\n");
    msort(d, n, sizeof(int), compare_vals);


	if(n<50) {
	        printf("\nMerge sorted array\n");
	        dump_int_array(d, n);
	}

	printf("Quick sorting array\n");
	qsort(e, n, sizeof(int), compare_vals);

	if(n<50) {
		        printf("\nQuick sorted array\n");
		        dump_int_array(e, n);
	}

	for (i = 0; i < n; i++){
		if(d[i] != e[i]){
			printf("Array is not sorted correctly!\n");
		}
	}

	printf("\nMerge sorting using x:\n");
	msort(p1, 5, sizeof(Point), compare_x);
	print_points(p1, 5);

	printf("\nMerge sorting using y:\n");
	msort(p1, 5, sizeof(Point), compare_y);
	print_points(p1, 5);

	printf("\nQuick sorting using x:\n");
	qsort(p2, 5, sizeof(Point), compare_x);
	print_points(p2, 5);

	printf("\nQuick sorting using y:\n");
	qsort(p2, 5, sizeof(Point), compare_y);
	print_points(p2, 5);

    free(a);
    free(b);
    free(c);
    free(d);
    free(e);


    exit(1);

}
