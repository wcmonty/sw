#include "sort.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void isort(int a[], int n) {
	int i, j, val;

	for (i = 1; i < n; i++) {
		j = i - 1;
		val = a[i];
		while (j >= 0 && a[j] > val) {
			a[j + 1] = a[j];
			j--;
		}
		a[j + 1] = val;

	}
}

void ssort(int a[], int n) {
	int i, j, small, temp;

	for (i = 0; i < n - 1; i++) {
		small = i;
		for (j = i + 1; j < n; j++)
			if (a[j] < a[small])
				small = j;
		temp = a[small];
		a[small] = a[i];
		a[i] = temp;
	}
}

void msort_intR(int a[], int lo, int hi, int scratch[]) {
	int i, j, k, m;

	if (lo >= hi)
		return;
	m = (lo + hi) / 2;
	msort_intR(a, lo, m, scratch);
	msort_intR(a, m + 1, hi, scratch);

	i = lo;  // lhs index
	j = m + 1; // rhs index
	k = 0;   // index into scratch

	while (i <= m && j <= hi) {
		if (a[i] < a[j]) {
			scratch[k] = a[i];
			i++;
		} else {
			scratch[k] = a[j];
			j++;
		}
		k++;
	}
	while (i <= m) {
		scratch[k] = a[i];
		i++;
		k++;
	}
	while (j <= hi) {
		scratch[k] = a[j];
		j++;
		k++;
	}
	for (k = 0, i = lo; i <= hi; i++, k++) {
		a[i] = scratch[k];
	}
}

void msort_int(int a[], int n) {
	int *scratch;
	scratch = (int *) malloc(n * sizeof(int));

	msort_intR(a, 0, n - 1, scratch);
	free(scratch);
}

/*
 * \brief Merge sort helper function
 *
 * \param baseLeft is the address of the left array
 * \param n_left is the number of elements in the left array
 * \param baseRight is the address of the right array
 * \param n_right is the number of elements in the right array
 * \param size is the size of each element
 * \param scratch is a temporary array used to store the array while merging
 * \param cmp is a function pointer to the comparison function
 * \return
 *
 */
void msort_merge(void *baseLeft, size_t n_left, void *baseRight,
		size_t n_right, size_t size, void *scratch, int (*cmp)(const void *, const void *)){

	// Save these values so we can use memcpy later
	int number_left = n_left;
	int number_right = n_right;
	void *base = baseLeft;

	// Iterator
	int k = 0;

	// While there are elements to be processed
	while (n_left || n_right){

		// If there are both a left and a right, compare them
		// and add the smaller to the next position
		if (n_left && n_right){
			if (cmp(baseLeft, baseRight) <= 0){
				memcpy ((scratch + (size * k)), baseLeft, size);
				baseLeft += size;
				n_left--;
				k++;
			}
			else {
				memcpy ((scratch + (size * k)), baseRight, size);
				baseRight += size;
				n_right--;
				k++;
			}

		}

		// Copy remaining objects to the scratch array
		else if (n_left){
			memcpy ((scratch + (size * k)), baseLeft, n_left * size);
			n_left = 0;
		}
		else {
			memcpy ((scratch + (size * k)), baseRight, n_right * size);
			n_right = 0;
		}

	}

	// Copy the elements in the scratch array back to the original array
	memcpy(base, scratch, (number_left + number_right) * size);
	return;
}

void msort_R(void *base, size_t n, size_t size, int (*cmp)(const void *, const void *), void *scratch){
	if (n <= 1){
		return;
	}

	// Find the "middle" of the array
	int left = n - (n / 2);
	int right = n - left;

	void *base_right = base + (left * size);

	// Sort the left
	msort_R(base, left, size, cmp, scratch);

	// Sort the right
	msort_R(base_right, right, size, cmp, scratch);

	// Merge the results
	msort_merge(base, left, base_right, right, size, scratch, cmp);

}

/*
 * \brief Implementation of merge sort algorithm for sorting generic
 *     data a la qsort library function.
 *
 * \param base is the base address of the array being sorted
 * \param n is the number of elements in the array
 * \param size is the size of an individual
 * \return
 *
 */
void msort(void *base, size_t n, size_t size, int (*cmp)(const void *, const void *)) {
	void *scratch = (void *)malloc(n * size);
	msort_R(base, n, size, cmp, scratch);
	free (scratch);

	return;
}


int * gen_int_array(int n, int max_val) {
	int i;
	int *a = malloc(n * sizeof(int));
	for (i = 0; i < n; i++) {
		a[i] = rand() % max_val;
	}
	return a;
}

int * clone_int_array(int *a, int n) {
	int *b = (int *) malloc(n * sizeof(int));
	int i;
	for (i = 0; i < n; i++)
		b[i] = a[i];
	return b;
}

void dump_int_array(int *a, int n) {
	int i;
	for (i = 0; i < n; i++)
		printf("  %d\n", a[i]);
}
