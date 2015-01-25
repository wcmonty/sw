#include <assert.h>
#include <stdio.h>
#include "bst.h"

// example of using assertions
void test_insert(BST_PTR t){

  int i, x;

  for(i=0; i<10; i++){
    x = rand() % 100;
    bst_insert(t, x);
    assert(bst_contains(t,x));
  }
}

void test_contains(BST_PTR t){
  bst_insert(t, 1234);

  assert(bst_contains(t, 1234));

}

int main(){
  int i;

  int a[] = {8, 2, 7, 9, 11, 3, 2, 6};


  BST_PTR t = bst_create();

  for(i=0; i<8; i++)
    bst_insert(t, a[i]);

  assert(bst_size(t) == 7);

  printf("Min is %d\n", bst_min(t));
  assert(bst_min(t) == 2);

  printf("Max is %d\n", bst_max(t));
  assert(bst_max(t) == 11);

  printf("Height is %d\n", bst_height(t));
  assert(bst_height(t) == 5);

  test_insert(t);

  test_contains(t);

  bst_inorder(t);

  bst_postorder(t);

  printf("Deleting 72\n");
  bst_delete(t, 72);

  bst_inorder(t);

  printf("Deleting 8\n");
  bst_delete(t, 8);

  bst_inorder(t);

  printf("Deleting 2\n");
  bst_delete(t, 2);

  bst_inorder(t);

  printf("Deleting 11\n");
  bst_delete(t, 11);

  bst_inorder(t);

  printf("Deleting 5000\n");
  bst_delete(t, 5000);

  bst_inorder(t);

  printf("Deleting everything\n");
  int temp = bst_min(t);
  while(temp != INT_MIN){
    bst_delete(t, temp);
    temp = bst_min(t);
  }
  bst_inorder(t);

  // bst_preorder(t);


  bst_free(t);

  return(0);
}
