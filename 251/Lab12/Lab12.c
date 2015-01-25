#include<stdlib.h>
#include<stdio.h>

#define FALSE 0
#define TRUE 1

typedef struct linkedlist
{
	int data;
	struct linkedlist *next;
}NODE;

typedef struct tree {
	int data;
	struct tree *left;
	struct tree *right;
} TREENODE;

NODE* list_create(int n) {
	NODE *head;
	head=(NODE *)malloc(sizeof(NODE));
	head->data=n;
	head->next=NULL;
	return head;
}

void addtolistend(NODE *head,int data) {
	NODE *node;
	NODE *last=head;
	while((last->next)!=NULL)
	{
		last=last->next;
	}
	node = (NODE *)malloc(sizeof(NODE));
	last->next=node;
	node->data=data;
	node->next=NULL;
}

void printlist(NODE *head) {
	NODE *n=head;
	while(n != NULL) {
		printf("%d\t",n->data);
		n = n->next;
	}
	printf("\n");
}

void freelist(NODE *n) {
	NODE *p;
	while(n->next!=NULL) {
		p=n->next;
		free(n);
		n=p;
	}
}

int isListSorted(NODE *n) {
	NODE *temp;
	temp = n;

	// Assume list is sorted
	int sorted = TRUE;

	while (temp != NULL){
		if (temp->next == NULL) {
			break;
		}
		else if (temp->data > temp->next->data){
			sorted = FALSE;
			break;
		}
		temp = temp->next;
	}
	return sorted;
}

int contains (NODE *n, int x){
	NODE *temp;
	temp = n;

	while (temp != NULL){
		if (temp->data == x) return TRUE;
		temp = temp->next;
	}

	return FALSE;
}

NODE * intersection(NODE *n, NODE *p) {
	NODE *tempn, *temp;
	NODE *head;

	head = NULL;
	tempn = n;

	while (tempn != NULL){
		if (contains(p, tempn->data)){
			temp = malloc(sizeof(NODE));
			temp->data = tempn->data;
			temp->next = head;
			head = temp;
		}
		tempn = tempn->next;
	}

	return head;
}

int main() {
	NODE *n,*p, *s;
	TREENODE
	int i, j, count;

	n = list_create(-1);
	for(i=0;i<10;i++) {
		addtolistend(n,i);
	}

	p = list_create(8);
	for(j=0;j<10;j=j+2) {
		addtolistend(p,j);
	}

	printf("List n is:\n");
	printlist(n);
	if (isListSorted(n)){
		printf("The list n is sorted.\n");
	}
	else {
		printf("The list n is NOT sorted.\n");
	}

	puts("");

	printf("List p is:\n");
	printlist(p);
	if (isListSorted(p)){
		printf("The list p is sorted.\n");
	}
	else {
		printf("The list p is NOT sorted.\n");
	}

	puts("");

	s = intersection(n, p);
	printf("The intersection of the lists is:\n");
	printlist(s);

	free(n);
	free(p);
}
