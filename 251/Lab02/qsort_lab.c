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

int compare_x(const void *point1, const void *point2){
	int returnVal = 0;
	Point *p1 = (Point *)point1;
	Point *p2 = (Point *)point2;

//	printf("p1 is {%f,%f}\n", p1->x, p1->y);
//	printf("p2 is {%f,%f}\n", p2->x, p2->y);
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

/** 
For reference: the parameter to qsort.

void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *));
**/
int main() {
	Point p[] = {{2,3}, {2, -1}, {9, -9}, {-7, 7}, {8, -9}};

	/** below:
		call qsort to sort by x
		print resulting sequence
		then sort by y
		print resulting sequence
	**/
	qsort(p, 5, sizeof(Point), compare_x);
	printf("Sorting using x:\n");
	print_points(p, 5);

	printf("Sorting using y:\n");
	qsort(p, 5, sizeof(Point), compare_y);
	print_points(p, 5);

	return 1;
}
