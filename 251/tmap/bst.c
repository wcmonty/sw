#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "project.h"
#include "bst.h"

#define TRUE 1
#define FALSE 0

#define MAX(x, y) (((x) > (y)) ? (x) : (y))
#define MIN(x, y) (((x) < (y)) ? (x) : (y))

//########################################################
// Struct and typedef declarations
//########################################################
struct bst_node {
	ELEMTYPE val;
	struct bst_node *left;
	struct bst_node *right;

	size_t	size;
	size_t	height;
};

typedef struct bst_node NODE;

struct bst {
	NODE *root;

	size_t rebalancing_operations;
	size_t work_done;
};

//########################################################
// Exposed functions
//########################################################
BST_PTR bst_create() {
	BST_PTR	t = malloc(sizeof(struct bst));
	t->root = NULL;
	t->rebalancing_operations = 0;
	t->work_done = 0;
	return t;
}

static NODE* from_arr(NODE **a, int n) {
	int m;
	NODE *p;

	if (n == 0) return NULL;
	
	m = n / 2;
	p = a[m];
	p->left = from_arr(a, m);
	p->right = from_arr(&(a[m + 1]), n - (m + 1));
	p->size = n;
	p->height = log2(n) / 1;
	return p;
}

BST_PTR bst_from_sorted_arr (NODE **a, int n) {
	BST_PTR t = bst_create();
	t->root = from_arr(a, n);
	return t;
}


static NODE* from_elem_arr(ELEMTYPE *a, int n) {
	int m;
	NODE *p;

	if (n == 0) return NULL;
	
	m = n / 2;
	p = malloc(sizeof(NODE));
	p->val = a[m];
	p->left = from_elem_arr(a, m);
	p->right = from_elem_arr(&(a[m + 1]), n - (m + 1));
	p->size = n;
	p->height = log2(n) / 1;
	return p;
}

BST_PTR bst_from_sorted_elems (ELEMTYPE *a, int n) {
	BST_PTR t = bst_create();
	t->root = from_elem_arr(a, n);
	return t;
}

static void free_node (NODE *r, void (*free_element)(const void *)) {
	if (r == NULL) return;
	free_element(r->val);
	free(r);	
}

static void free_r (NODE *r, void (*free_element)(const void *)) {
	if (r == NULL) return;
	free_r(r->left, free_element);
	free_r(r->right, free_element);
	free_node(r, free_element);
}

void bst_free (BST_PTR t, void (*free_element)(const void *)) {
	free_r(t->root, free_element);
	free(t);
}

static int get_height (NODE *r) {
	if (r == NULL) return -1;

	int left = -1, right = -1;
	if (r->left != NULL) left = r->left->height;
	if (r->right != NULL) right = r->right->height;

	return left > right ? left + 1 : right + 1;
}

static void sorted_array_from_bst_r (NODE *r, int *position, NODE **array) {
	if (r == NULL) return;

 	sorted_array_from_bst_r(r->left, position, array);
 	array[*position] = r;
	(*position)++;
 	sorted_array_from_bst_r(r->right, position, array);

}

static NODE** sorted_array_from_bst (NODE* r, int n) {
	if (r == NULL) return NULL;
	
	int position = 0;
	NODE **array;
	array = malloc(n * sizeof(NODE*));
	sorted_array_from_bst_r(r, &position, array);
	return array;
}

static NODE* rebalance (NODE *r){
	if (r == NULL) return NULL;
	int n = r->size;
	NODE **array;
	NODE *return_val;
	array = sorted_array_from_bst(r, n);
	return_val = from_arr(array, n);
	free(array);
	return return_val;
}

static int balanced (NODE *r) {
	if (r == NULL) return 1; // Is this right?  Should probably never call it on a NULL

	int left = 0;
	int right = 0;
	if (r->left != NULL) left = r->left->size;
	if (r->right != NULL) right = r->right->size;

	if (left > ((2 * right) + 1) || right > ((2 * left) + 1)) {
		return FALSE;
	}
	return TRUE;
}


static NODE* insert (BST_PTR t, NODE *r, ELEMTYPE x, int (*cmp)(const void *, const void *)) {
	NODE *leaf;

	if (r == NULL) {
		leaf = malloc(sizeof(NODE));
		leaf->left = NULL;
		leaf->right = NULL;
		leaf->val = x;
		leaf->size = 1;
		leaf->height = 0;
		return leaf;
	}
	
	if (cmp(r->val, x) > 0) {
		r->left = insert(t, r->left, x, cmp);
		if (balanced(r) && !balanced(r->left)) {
			r->left = rebalance(r->left);
			(t->rebalancing_operations)++;
			(t->work_done) += r->left->size;
		}
	} else if (cmp(r->val, x) < 0) {
		r->right = insert(t, r->right, x, cmp);
		if (balanced(r) && !balanced(r->right)) {
			r->right = rebalance(r->right);
			(t->rebalancing_operations)++;
			(t->work_done) += r->right->size;
		}

	}
	r->size++;
	r->height = get_height(r);

	return r;
}

void bst_insert (BST_PTR t, ELEMTYPE x, 
				 int (*cmp)(const void *, const void *)) {
	t->root = insert(t, t->root, x, cmp);
	if (!balanced(t->root)) {
		t->root = rebalance(t->root);
		(t->rebalancing_operations)++;
		(t->work_done) += t->root->size;
	}

}

static ELEMTYPE min_h (NODE *r) {
	if (r == NULL) return NULL;

	while (r->left != NULL) {
		r = r->left;
	}

	return r->val;
}

static ELEMTYPE max_h (NODE * r) {
	if (r == NULL) return NULL;

	while (r->right != NULL) {
		r = r->right;
	}

	return r->val;
}


static void range_size_r (NODE *r, double min, double max, int *size, 
						int (*cmp)(const void *, const void *)){
	if (r == NULL) return;

	if (cmp(r->val, &min) >= 0 && cmp(r->val, &max) <= 0){
		range_size_r(r->left, min, max, size, cmp);
		range_size_r(r->right, min, max, size, cmp);
		(*size)++;
	}
	else if (cmp(r->val, &min) >= 0) {
		range_size_r(r->left, min, max, size, cmp);
	}	
	else if (cmp(r->val, &max) <= 0) {
		range_size_r(r->right, min, max, size, cmp);
	}	

}

static int smaller_size_r(NODE *r, double min, 
						  int (*cmp)(const void *, const void *)) {
	if(r == NULL) return 0;

	int other_size = 0;

	// If this node is more than the min
	if(cmp(r->val, &min) >= 0) {
		if (r->right != NULL){
			other_size = r->right->size;
		}
		return smaller_size_r(r->left, min, cmp) + other_size + 1;
	}
	// If this node is less than the min
	return smaller_size_r(r->right, min, cmp);
}

static int bigger_size_r(NODE *r, double max, 
						  int (*cmp)(const void *, const void *)) {
	if(r == NULL) return 0;

	int other_size = 0;

	// If this node is less than the max
	if(cmp(r->val, &max) <= 0) {
		if (r->left != NULL){
			other_size = r->left->size;
		}
		return bigger_size_r(r->right, max, cmp) + other_size + 1;
	}
	// If this node is more than the max
	return bigger_size_r(r->left, max, cmp);
}

static int subtree_size_r (NODE *r, double min, double max,  
						int (*cmp)(const void *, const void *)){
	if (r == NULL) {
		return 0;
	}
	int smaller = 0;
	int bigger = 0;

	if (cmp(r->val, &min) >= 0 && cmp(r->val, &max) <= 0){
		smaller = smaller_size_r(r->left, min, cmp);
		bigger = bigger_size_r(r->right, max, cmp);
		return smaller + bigger + 1;
	}
	else if (cmp(r->val, &min) >= 0) {
		return subtree_size_r(r->left, min, max, cmp);
	}	
	else if (cmp(r->val, &max) <= 0) {
		return subtree_size_r(r->right, min, max, cmp);
	}

}

int bst_range_size (BST_PTR t, double min, double max,
					int (*cmp)(const void *, const void *)) {
	if (t == NULL || t->root == NULL) return 0;
	
	int subtree_size = 0;
	subtree_size = subtree_size_r (t->root, min, max, cmp);
	return subtree_size;
}

void extract_range_r (NODE *r, double min, double max, int *position,
						   ELEMTYPE *element_array,
                           int (*cmp)(const void *, const void *)) {
	if (r == NULL) return;

	if (cmp(r->val, &min) >= 0 && cmp(r->val, &max) <= 0){
		extract_range_r(r->left, min, max, position, element_array, cmp);
		element_array[*position] = r->val;
		(*position)++;
		extract_range_r(r->right, min, max, position, element_array, cmp);
	}
	else if (cmp(r->val, &min) >= 0) {
		extract_range_r(r->left, min, max, position, element_array, cmp);
	}
	else if (cmp(r->val, &max) <= 0) {
		extract_range_r(r->right, min, max, position, element_array, cmp);
	}
}

ELEMTYPE* bst_extract_range (BST_PTR t, double min, double max, int *num,
                           int (*cmp)(const void *, const void *)) {
	if (t == NULL || t->root == NULL) return 0;
	
	*num = bst_range_size(t, min, max, cmp);
		
	ELEMTYPE *element_array;
	element_array = malloc(*num * sizeof(ELEMTYPE*));
	
	int position = 0;
	extract_range_r(t->root, min, max, &position, element_array, cmp);

	return element_array;	

}

static NODE* remove_r (NODE * r, ELEMTYPE x, int *success,
					   int (*cmp)(const void *, const void *),
					   void (*free_element)(const void *)) {
	if (r == NULL) {
		*success = FALSE;
		return NULL;
	}

	NODE *tmp;
	
	if (cmp(r->val, x) == 0) {
		*success = TRUE;

		if (r->left == NULL) {
			tmp = r->right;
			// free_element(r->val);
			free_node(r, free_element);
			return tmp;
		}
		if (r->right == NULL) {
			tmp = r->left;
			free_node(r, free_element);
			return tmp;
		}
		
		//if we get here, r has two children
		free_element(r->val);
		r->val = min_h(r->right);
		r->right = remove_r(r->right, r->val, success, cmp, free_element);
	}

	else if (cmp(r->val, x) > 0) {
		r->left = remove_r(r->left, x, success, cmp, free_element);

	} else {
		r->right = remove_r(r->right, x, success, cmp, free_element);
	}

	r->size--;
	r->height = get_height(r);

	return r;
}

int bst_remove (BST_PTR t, ELEMTYPE x, 
				int (*cmp)(const void *, const void *),
				void (*free_element)(const void *)) {
	int success;
	t->root = remove_r(t->root, x, &success, cmp, free_element);
	return success;
}

int bst_size(BST_PTR t) {
	if (t == NULL || t->root == NULL) return 0;
	return t->root->size;
}

int bst_height (BST_PTR t) {
	if (t == NULL || t->root == NULL) return 0;
	return t->root->height;
}

int bst_rebalancing_operations (BST_PTR t) {
	if (t == NULL) return 0;
	return t->rebalancing_operations;
}

int bst_work_done (BST_PTR t) {
	if (t == NULL) return 0;
	return t->work_done;
}

ELEMTYPE bst_min (BST_PTR t) {
	return min_h(t->root);
}

ELEMTYPE bst_max (BST_PTR t) {
	return max_h(t->root);
}

static ELEMTYPE bst_get_ith_r (NODE *r, size_t i) {
	if (r == NULL || i > r->size) return NULL;

	size_t left = 0;
	size_t right = 0;
	
	if (r->left != NULL) {
		left = r->left->size;
	}
	if (r->right != NULL) {
		right = r->right->size;
	}

	if (i == left + 1){
		return r->val;
	}
	else if (i <= left) {
		return bst_get_ith_r(r->left, i);
	}
	else {
		return bst_get_ith_r(r->right, i - (left + 1));
	}
}

ELEMTYPE bst_get_ith (BST_PTR t, size_t i) {
	if (t == NULL) return NULL;
	return bst_get_ith_r(t->root, i);
}

static void indent (int m) {
	int i;

	for (i = 0; i < m; i++)
		printf("-");
}

static void inorder (NODE *r, void (*print_value)(const void *)) {
	if (r == NULL) return;
	inorder(r->left, print_value);
	print_value(r->val);
	inorder(r->right, print_value);
}

void bst_inorder (BST_PTR t, void (*print_value)(const void *)) {
	printf("========BEGIN INORDER============\n");
	inorder(t->root, print_value);
	printf("=========END INORDER============\n");
}

static void preorder (NODE *r, int margin, void (*print_value)(const void *)) {
	if (r == NULL) return;
	indent(margin);
	print_value(r->val);
	preorder(r->left, margin + 3, print_value);
	preorder(r->right, margin + 3, print_value);
}

void bst_preorder (BST_PTR t, void (*print_value)(const void *)) {
	printf("========BEGIN PREORDER============\n");
	preorder(t->root, 0, print_value);
	printf("=========END PREORDER============\n");
}

static void postorder (NODE * r, int margin, void (*print_value)(const void *)) {
	if (r == NULL) return;
	postorder(r->left, margin + 3, print_value);
	postorder(r->right, margin + 3, print_value);
	indent(margin);
	print_value(r->val);
}

void bst_postorder(BST_PTR t, void (*print_value)(const void *)) {
	printf("========BEGIN POSTORDER============\n");
	postorder(t->root, 0, print_value);
	printf("=========END POSTORDER============\n");
}
