/*
 * main.c
 *
 *  Created on: Mar 7, 2013
 *      Author: William Montgomery
 */

#include <stdlib.h>
#include <stdio.h>
#include <limits.h>

#define TRUE 1
#define FALSE 0

#define NUMVALUES 20
#define MAXVALUE 99
#define START 3
#define END 17

typedef struct node_struct *NODE;
typedef struct list_struct *LIST;

struct node_struct{
	int value;
	NODE prev;
	NODE next;
};

struct list_struct{
	struct node_struct head;  // DUMMY head
	struct node_struct tail;  // DUMMY tail
};

void push (LIST l, int value){
	NODE temp;

	temp = malloc(sizeof(struct node_struct));
	temp->value = value;
	temp->prev = NULL;
	temp->next = l->head;
	l->head = temp;

	if (l->tail == NULL){
		l->tail = temp;
	}
	else {
		temp->next->prev = temp;
	}
}

void print_list (LIST l){
	if(l == NULL){
		return;
	}
	NODE temp = l->head;
	while(temp != NULL){
		printf("%d ", temp->value);
		temp = temp->next;
	}
	printf("\n");
}

LIST shallow_copy(LIST l, int start, int end){
	LIST copy;
	int number = 0;
	int destroy;

	copy = malloc(sizeof(LIST*));

	NODE temp = l->head;
	NODE temp2;

	while (temp){
		destroy = FALSE;
		if (number == start){
			copy->head = temp;
			temp->prev = NULL;
		}
		else if (number == end){
			copy->tail = temp;
			temp->next = NULL;
		}
		if (number > end || number <start){
			temp2 = temp;
			destroy = TRUE;
		}

		number++;
		temp = temp->next;
		if (destroy){
			free(temp2);
		}
	}

	return number >= end ? copy : NULL;
}

LIST deep_copy(LIST l, int start, int end){
	LIST copy;
	copy = init_list();

	NODE new_node;
	NODE temp = l->tail;

	while(temp != NULL){
		push(copy, temp->value);
		temp = temp->prev;
	}

	return copy;
}

LIST init_list(){
	LIST l;
	l = malloc(sizeof(struct list_struct));
	l->head->prev = NULL;
	l->head->next = NULL;
	l->tail->prev = NULL;
	l->tail->next = NULL;

	return l;
}


int main (void){
	int i;
	LIST list, shallow, deep;

	list = init_list();

	for(i = 0; i < NUMVALUES; i++){
		int n = (rand() & MAXVALUE) + 1;
//		printf("Adding %d to list\n", n);
		push(list, n);
	}
	printf("\nORIGINAL LIST ########################\n");
	print_list(list);

	deep = deep_copy(list, START, END);
	printf("\nDEEP COPY LIST ########################\n");
	print_list(deep);

	shallow = shallow_copy(list, START, END);
	printf("\nSHALLOW COPY LIST ########################\n");
	print_list(shallow);

}
