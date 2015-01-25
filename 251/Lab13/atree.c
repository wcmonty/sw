#include <stdio.h>
#include <limits.h>

#define LEFT(x) ((x) * 2)
#define RIGHT(x) (((x) * 2) + 1)
#define PARENT(x) ((x) / 2)

void in_order (int *a, int n);
void pre_order (int *a, int n);
void post_order (int *a, int n);

static void in_order_r (int *a, int n, int x);
static void pre_order_r (int *a, int n, int x);
static void post_order_r (int *a, int n, int x);

int main (void ){
	int a[] = {0, 8, 10, 4, 9, 2, 12, 8, 1, 17};

	in_order(a, 9);
	pre_order(a, 9);
	post_order(a, 9);

	return (0);
}

void in_order (int *a, int n){
	in_order_r(a, n, 1);
	printf("\n");
}

static void in_order_r (int *a, int n, int x) {
	if (x > n) return;

	in_order_r (a, n, LEFT(x));
	printf("%d ", a[x]);
	in_order_r (a, n, RIGHT(x));
}

void pre_order (int *a, int n){
	pre_order_r (a, n, 1);
	printf("\n");
}

static void pre_order_r (int *a, int n, int x){
	if (x > n) return;

	printf("%d ", a[x]);
	pre_order_r (a, n, LEFT(x));
	pre_order_r (a, n, RIGHT(x));
}

void post_order (int *a, int n){
	post_order_r (a, n, 1);
	printf("\n");
}

static void post_order_r (int *a, int n, int x) {
	if (x > n) return;
	
	post_order_r (a, n, LEFT(x));
	post_order_r (a, n, RIGHT(x));
	printf("%d ", a[x]);
}
