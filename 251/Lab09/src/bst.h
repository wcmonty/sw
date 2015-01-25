#include <limits.h>

#define TRUE 1
#define FALSE 0

// typedef int ELEM_TYPE;

typedef struct bst *BST_PTR;

extern BST_PTR bst_create();


extern void bst_delete(BST_PTR t, int x);
extern void bst_free(BST_PTR t);
extern void bst_insert(BST_PTR t, int x);
extern int bst_contains(BST_PTR t, int x);
extern int bst_size(BST_PTR t);
extern int bst_height(BST_PTR t);
extern int bst_min(BST_PTR t);
extern int bst_max(BST_PTR t);
extern void bst_inorder(BST_PTR t);
extern void bst_preorder(BST_PTR t);
extern void bst_postorder(BST_PTR t);