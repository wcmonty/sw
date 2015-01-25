typedef struct bst *BST_PTR;

extern BST_PTR bst_create();
extern void bst_free(BST_PTR t, void (*free_element)(const void *));
extern void bst_insert(BST_PTR t, ELEMTYPE x, int (*cmp)(const void *, const void *));
extern int bst_remove (BST_PTR t, ELEMTYPE x, int (*cmp)(const void *, const void *), void (*free_element)(const void *));
extern ELEMTYPE bst_contains(BST_PTR t, ELEMTYPE x);
extern int bst_size(BST_PTR t);
extern int bst_height(BST_PTR t);
extern int bst_rebalancing_operations(BST_PTR t);
extern int bst_work_done (BST_PTR t);
extern ELEMTYPE bst_min(BST_PTR t);
extern ELEMTYPE bst_max(BST_PTR t);
extern int bst_range_size (BST_PTR t, double min, double max, 
						   int (*cmp)(const void *, const void *));
extern ELEMTYPE* bst_extract_range (BST_PTR t, double min, double max, int *num,
                           int (*cmp)(const void *, const void *));
extern void bst_inorder (BST_PTR t, void (*print_value)(const void *));
extern void bst_preorder(BST_PTR t, void (*print_value)(const void *));
extern void bst_postorder(BST_PTR t, void (*print_value)(const void *));
extern ELEMTYPE bst_get_ith (BST_PTR t, size_t i);
extern BST_PTR bst_from_sorted_elems (ELEMTYPE *a, int n);