/*
 * hw5.c
 *
 *  Created on: Feb 19, 2013
 *  Author: William Montgomery
 */
#include <stdlib.h>
#include <stdio.h>
typedef struct ELE *tree_ptr;

struct ELE {
    long val;
    tree_ptr left;
    tree_ptr right;
};


long traverse (tree_ptr tp);

/*
 * Recursively finds the maximum value in the tree.
 */
long traverse (tree_ptr tp){
	long left, right, max;
	if(tp){
		left = traverse(tp->left);
		right = traverse(tp->right);
		max = left > right ? left : right;
		return (tp->val > max ? tp->val : max);
	}
	return 0;
}

int main(void){
	tree_ptr tp = NULL;
	tp = (tree_ptr)malloc(sizeof(tree_ptr));
	tp->val = 1;

	tp->left = (tree_ptr)malloc(sizeof(tree_ptr));
	tp->left->val = 4;
	tp->left->left = NULL;
	tp->left->right = NULL;

	tp->right = (tree_ptr)malloc(sizeof(tree_ptr));
	tp->right->val = 16;
	tp->right->left = NULL;
	tp->right->right = NULL;

	printf("The greatest number in the tree is %ld\n", traverse(tp));

	free(tp->left);
	free(tp->right);
	free(tp);
	return (0);
}
