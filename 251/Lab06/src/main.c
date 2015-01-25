/*
 * main.c
 *
 *  Created on: Feb 28, 2013
 *      Author: William Montgomery
 */
#include <stdio.h>
#include <stdlib.h>

typedef struct node_struct {
        int data;
        struct node_struct *next;
} NODE;


// takes pointer to node in a linked list and
//   prints contents from the given node onward.
void print_lst(NODE *p) {
	// added temp variable
	NODE *temp = p;
     printf("[ ");
     while(temp != NULL) {
         printf("%d ", temp->data);
         temp = temp->next;
     }
     printf(" ]\n");
}


// walks along list and increments all data elements
void increment_elems(NODE *p) {
	NODE *temp = p;
	while(temp){
		temp->data++;
		temp = temp->next;
	}

}

// creates a list with values 0..n-1 and returns pointer
// to first element.
NODE * create(int n) {
	NODE *head = NULL;
	NODE *temp;
	int i;

	for(i = n - 1 ; i >= 0; i--){
		temp = malloc(sizeof(NODE));
		temp->data = i;
		temp->next = head;
		head = temp;
	}

	return head;
}

// builds a reversed version of  the list starting at p and returns
// pointer to first element of the reversed list.
// It is not a "destructive" function -- new nodes are created and the
//   forward list remains intact.
NODE * rev(NODE *p) {
	NODE *walker  = p;
	NODE *new_head = NULL;
	NODE *temp;

	while(walker){
		temp = malloc(sizeof(NODE));
		temp->data = walker->data;
		temp->next = new_head;
		new_head = temp;
		walker = walker->next;
	}
	return new_head;
}

// builds a reversed version of the list recursively
NODE * rev_R(NODE *p){
	NODE *head = NULL;
	NODE *temp;
	if(!p){
		return NULL;
	}

	temp = rev_R(p->next);
	head = malloc(sizeof(NODE));
	head->data = p->data;
	head->next = NULL;
	head->next = temp;

	return head;
}


int main(int argc, char *argv[])
{
NODE *p1, *p2, *p3, *p4, *p5, *p52, *p6;

  /* Part I:  start by completing the increment_elems function above */
  p1 = malloc(sizeof(NODE));
  p2 = malloc(sizeof(NODE));
  p3 = malloc(sizeof(NODE));
  p4 = malloc(sizeof(NODE));

  // let's build a linked list of length 4 by brute force.
  p1->data = 2;  p1->next = p2;
  p2->data = 4;  p2->next = p3;
  p3->data = 6;  p3->next = p4;
  p4->data = 8;  p4->next = NULL;

  // let's see if everything is ok
  print_lst(p1);
  // let's try incrementing the elements.
  increment_elems(p1);
  printf("after incrementing: ");
  print_lst(p1);

  printf("after reversing: ");
  p5 = rev(p1);
  print_lst(p5);

//  printf("after reversing recursively: ");
//  p52 = rev_R(p1);
//  print_lst(p52);


  printf("a new list of 10 elements: ");
  p6 = create(10);
  print_lst(p6);

  printf("Part I Question:  Does your increment_elems() function seem to work?\n");
  getchar();

  // PART II:  now let's scramble things up!

  p2->next = p3;
  p1->next = p2->next;

  /** draw a diagram showing the 4 nodes and how there are linked together **/
  printf("(Part II, Question 1) BEFORE GOING ON, DRAW A DIAGRAM OF THE DATA AT THIS POINT IN THE CODE\n");
  getchar();
  printf("print(p1) : ");
  print_lst(p1);
  printf("print(p2) : ");
  print_lst(p2);
  printf("print(p3) : ");
  print_lst(p3);
  printf("print(p4) : ");
  print_lst(p4);

  printf("(PART II, Question 2)  DOES YOUR DIAGRAM MATCH THE OUTPUT OF THE PRINT OPERATIONS?\n");
  printf("     If not, draw a correct diagram.  Leave the first diagram -- no penalty\n");
  getchar();
  increment_elems(p1);
  increment_elems(p2);

  printf("(Part II, Question 3) NOW REDRAW THE DIAGRAM AFTER THE CALLS TO increment_elems\n");
  getchar();
  printf("print(p1) : ");
  print_lst(p1);
  printf("print(p2) : ");
  print_lst(p2);

  printf("(Part II, Question 4) WAS YOUR DIAGRAM FROM II.3 CORRECT (INCLUDING DATA VALUES!)?\n");
  printf("   If not, correct it and explain what you had wrong\n");
  printf("   Call over a TA if you are confused!\n");
  getchar();

  /* PART III */

  // let's scramble some more.

  p3->next->next = p1->next;

  // Draw the figure after this assignment statement.

  printf("(Part III, Question 1) WE'VE SCRAMBLED AGAIN.  DRAW A FIGURE FOR THE CURRENT DATA?\n");

  getchar();

  printf("(Part III, Question 2) WE'RE GOING TO TRY TO PRINT FROM p2.\n");
  printf("   something strange will happen.  Can you figure out what it is?  Explain\n");


  printf("print(p2) : ");
  print_lst(p2);

  getchar();
  return 0;
}
