
#include "stack.h"
#define TRUE 1
#define FALSE 0
#define EMPTY -1

// Linked list implementation of stack module

struct stack_node {
	struct stack_node *next;
	ElemType item;
};

struct stack_struct {
	struct stack_node *head;
	int size;
};

typedef struct stack_node Node;

Stack stk_create(int cap){
    Stack s = (Stack)malloc(sizeof(struct stack_struct));
    s->head = NULL;
    s->size = EMPTY;
	return s;
}

void stk_free(Stack s) {
	stk_clear(s);
	free(s);
	return;
}

int stk_push(Stack s, ElemType val){
    Node *n = (Node *)malloc(sizeof(Node));
    n->item = val;
    n->next = s->head;
    s->head = n;
    s->size++;
	return TRUE;

}

ElemType stk_pop(Stack s){
    Node *temp = s->head;
    ElemType elem = temp->item;
    if(temp){
        s->head = s->head->next;
        s->size--;
        free(temp);
    }
    else {
    	abort();
    }
	return elem;
}

int stk_is_full(Stack s){
     return FALSE;
}

int stk_is_empty(Stack s){
	return s->size == EMPTY;  // could do !!(s->next)
}

int stk_size(Stack s) {
    return s->size + 1;
}

void stk_clear(Stack s){
    Node *temp = s->head;
    while(temp){
        s->head = s->head->next;
        s->size--;
        free(temp);
        temp = s->head;
    }
    s->size = EMPTY;
    return;
}

void stk_print(Stack s) {
    Node *temp = s->head;
    printf("----TOP-----\n");
    while(temp){
    	printf(FORMAT_STRING, temp->item);
    	temp = temp->next;
    }
    printf("---BOTTOM----\n");
	return;
}

