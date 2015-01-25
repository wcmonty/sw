#include<stdlib.h>
#include<stdio.h>


typedef struct linkedlist
{
	int data;
	struct linkedlist *next;
}NODE;

NODE* list_create(int n)
{
        NODE *head;
        head=(NODE *)malloc(sizeof(NODE));
        head->data=n;
        head->next=NULL;
        return head;
}

void freelist(NODE *n);

void addtolistend(NODE *head,int data)
{
        NODE *node;
        NODE *last=head;
        while((last->next)!=NULL)
        {
                last=last->next;
        }
                node=(NODE *)malloc(sizeof(NODE));
                last->next=node;
                node->data=data;
                node->next=NULL;
}
void printlist(NODE *head)
{
        NODE *n=head;
        while(n!=NULL)
        {
                printf("%d\t",n->data);
                n=n->next;
        }
        printf("\n");
}

void removedups(NODE **n, int numLists){
	int i, j;
	for(i = 0; i < numLists; i++){
		NODE *start, *temp;
		start = n[i];
		temp = start->next;
		while(start){
			temp = start;
			while(temp->next){
				if (temp->next->data == start->data){
					printf("Removing temp->next->data %d\n", temp->data);
					NODE *temp2 = temp->next;
					if(temp->next != NULL){
						temp->next = temp->next->next;
					}
					free(temp2);
				}
				temp = temp->next;
			}
			start = start->next;
		}
	}
}

void freememory(NODE **n, int numLists)
{
	int i;
	for (i = 0; i < numLists; i++){
		freelist(n[i]);
		n[i] = NULL;
	}
}

void freelist(NODE *n){
	NODE *temp;
	while(n != NULL){
		temp = n->next;
		free(n);
		n = temp;
	}

}

int main()
{
        NODE **n,*p;
        int i,j=0,count;
        printf("You will be working on an array of linked lists\n");
        printf("Enter the number of linkedlists: ");
        scanf("%d",&count);
        n=malloc(sizeof(NODE)*count);
        for(i=0;i<count;i++)
        {
                n[i]=list_create(++j); // creates the head node of the linked list with the value passed in the parameter
                addtolistend(n[i],++j); //adds values to the ending of linkedlist
                addtolistend(n[i],++j);
                addtolistend(n[i],++j);
                printf("List number %d \n",i+1);
                printlist(n[i]);
                printf("\n");
        }
 //       printf("Use Valgrind command as specified in the Lab manual to find out memory leaks\n");
 //       getc(stdin);
 //       printf("If you find any memory leaks, write a function to free the memory\n");
 //       getc(stdin);
 //       freememory(n, count);
 //       printf("Once you are done with the free function, remove comments for PART II \n");
 //       getc(stdin);
        //PART II
 //       for(i=0;i<count;i++)
 //       {
 //       printf("List number is %d \n",i+1);
 //       printlist(n[i]);
 //       printf("\n");
 //       }
        printf("Assuming that you are done with output for earlier code, remove comments for PART III \n");
        // PART III
//        free(n);
        printf("Once you are done with PART III, you must have understood how to free memory and follow your lab manual for part IV\n");
    //PART 1V
    j=0;
    for(i=0;i<count;i++)
    {
        addtolistend(n[i],++j);
        j=j+2;
        addtolistend(n[i],++j);
    }

	for (i = 0; i < count; i++) {
		printf("List number %d \n", i + 1);
		printlist(n[i]);
	}

	removedups(n, count);
	for (i = 0; i < count; i++) {
                 printf("List number %d \n", i + 1);
                 printlist(n[i]);
        }



return 0;

}
