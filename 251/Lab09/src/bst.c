#include "bst.h"
#include <stdio.h>
#include <stdlib.h>

struct bst_node {
	int val;
	struct bst_node *left;
	struct bst_node *right;

};
typedef struct bst_node NODE;

struct bst {
	NODE *root;
};

static int min (NODE *t);

BST_PTR bst_create(){
	BST_PTR t = malloc(sizeof(struct bst));
	t->root = NULL;
	return t;
}

static void free_r(NODE *r){
	if (r == NULL) return;
	free_r(r->left);
	free_r(r->right);
	free(r);
}

void bst_free(BST_PTR t){
	free_r(t->root);
	free(t);

}

static NODE * insert(NODE *r, int x){
	NODE *leaf;
	if(r == NULL){
		leaf = malloc(sizeof(NODE));
		leaf->left = NULL;
		leaf->right = NULL;
		leaf->val = x;
		return leaf;
	}
	if(r->val == x)
		return r;
	if(x < r->val){
		r->left = insert(r->left, x);
		return r;
	}
	else {
		r->right = insert(r->right, x);
		return r;
	}
}

static NODE *insert_i(NODE *r, int x){
}


void bst_insert(BST_PTR t, int x){

	t->root = insert(t->root, x);

}

static int contains (NODE *t, int x){
	if (t->val == x) return TRUE;
	if (x < t->val) return contains(t->left, x);
	return contains(t->right, x);
}

int bst_contains(BST_PTR t, int x){
	if (!t) return FALSE;
	return contains(t->root, x);
}

static NODE* delete (NODE *t, int x){
	NODE *temp;
	int closest_value;

	if (t == NULL) return NULL;
	
	//////////////////////////////
	// This is the node
	//////////////////////////////
	// there are no children
	if (t->val == x && t->left == NULL && t->right == NULL) {
		free(t);
		return NULL;
	}

	// There is one child to the left
	if (t->val == x && t->left != NULL && t->right == NULL) {
		temp = t->left;
		free(t);
		return temp;
	}
	
	// There is one child to the rigth
	if (t->val == x && t->left == NULL && t->right != NULL) {
		temp = t->right;
		free(t);
		return temp;
	}

	// This is the node and there are two children
	if (t->val == x){
		closest_value = min(t->right);
		delete(t, closest_value);
		t->val = closest_value;
		return t;
	}

	//////////////////////////////
	// This is the not the node
	//////////////////////////////
	if (t->val > x) {
		t->left = delete(t->left, x);
		return t;
	}

	if (t->val < x) {
		t->right = delete(t->right, x);
		return t;
	}
}

void bst_delete(BST_PTR t, int x){
	t->root = delete(t->root, x);
}


static int size(NODE *r){

	if(r==NULL) return 0;
	return size(r->left) + size(r->right) + 1;
}
int bst_size(BST_PTR t){

	return size(t->root);
}

static int height(NODE *r){
	if (r == NULL) return 0;
	int left = height(r->left);
	int right = height(r->right);
	return  left > right ? left + 1 : right + 1;
}

int bst_height(BST_PTR t){
	return height(t->root);

}

static int min (NODE *t){
	if (t == NULL ) return INT_MIN;

	if (t->left) {
		return min(t->left);
	}
	return t->val;
}

int bst_min(BST_PTR t){
	return min(t->root);
}

static int max(NODE *t){
	if (t->right){
		return max(t->right);
	}
	return t->val;
}

int bst_max(BST_PTR t){
	return max(t->root);
}

static void indent(int m){
	int i;
	for(i=0; i<m; i++)
		printf("-");
}

static void inorder(NODE *r){
	if(r==NULL) return;
	inorder(r->left);
	printf("[%d]\n", r->val);
	inorder(r->right);

}

void bst_inorder(BST_PTR t){

	printf("========BEGIN INORDER============\n");
	inorder(t->root);
	printf("=========END INORDER============\n");

}

static void preorder(NODE *r, int margin){
	indent(margin);
	if(r==NULL)
		printf(" NULL \n");
	else {
		printf("%d\n", r->val);
		preorder(r->left, margin + 3);
		preorder(r->right, margin+3);
	}
}

void bst_preorder(BST_PTR t){

	printf("========BEGIN PREORDER============\n");
	preorder(t->root, 0);
	printf("=========END PREORDER============\n");

}

static void postorder(NODE *r, int margin){
	indent(margin);
	if(r==NULL)
		printf(" NULL \n");
	else {
		postorder(r->left, margin + 3);
		postorder(r->right, margin + 3);
		indent(margin);
		printf("%d\n", r->val);
	}
}

// indentation is proportional to depth of node being printed
//   depth is #hops from root.
void bst_postorder(BST_PTR t){

	printf("========BEGIN POSTORDER============\n");
	postorder(t->root, 0);
	printf("=========END POSTORDER============\n");

}

