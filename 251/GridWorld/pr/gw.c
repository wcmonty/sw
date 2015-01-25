#include <stdio.h>
#include <stdlib.h>


#define TRUE 1
#define FALSE 0

// third struct:
struct personInfo_struct{
		int id;
		int row;
		int col;
		struct personInfo_struct *prev;
		struct personInfo_struct *next;
	};

typedef struct personInfo_struct personInfo;


// second sturct:
struct district_struct{
		int districtPopulation;
		personInfo *head;
	};

typedef struct district_struct district;


// main struct:
struct gw_struct {
	int worldPopulation;
	personInfo* peopleArray;
	district **grid;
	int id;
	int row;
	int col;

};

//remove before submitting
typedef struct gw_struct *GW;

// build the world
GW gw_build(int nrows, int ncols, int pop, int rnd){
    int i;
    int count = 1;
    srand (time(NULL));

    GW g = malloc (sizeof(struct gw_struct));

    //store the world population of the grid
    g->worldPopulation = pop;

    g->id = pop;
    g->row = nrows;
    g->col = ncols;

    g->grid = (district **)malloc(nrows * (sizeof(district *)));
    for(i=0;i<nrows; i++){
        g->grid[i] = (district *)malloc(ncols*(sizeof(district)));
    }

    g->grid[nrows][ncols].head = NULL;
    g->grid[nrows][ncols].head->id = rand() %10000;
    g->peopleArray = (personInfo *)malloc(pop * (sizeof(personInfo)));

    for(i=0; i<pop; i++){
            g->peopleArray[i].id = count;
            count = count + 1;
    }

    return g;
}

// function to print members of district ij
int * gw_members(GW g, int i, int j, int *n){
    if(g->grid[i][j].head == NULL)
        return NULL;
    else {
        while(g->grid[i][j].head->next != NULL){
            *n = g->grid[i][j].head->id;
            return n;

        }
    }
}

// function to find district populaiton
int gw_district_pop(GW g, int i, int j){
    if(g->grid[i][j].head == NULL)
        return -1;
    else {
        return g->grid[i][j].districtPopulation;

    }

}

// function for the population of the world
int gw_total_pop(GW g){
    return g->worldPopulation;
}

// function to find x in ij
int gw_find(GW g, int x, int *r, int *c){
    if(x > g->worldPopulation)
        return 0;
    else {
        *r = g->peopleArray[x].row;
        *c = g->peopleArray[x].col;
        return 1;
    }

}
// function to kill x
int gw_kill(GW g, int x){
    int r = 0;
    int c = 0;
    int found;
    personInfo *temp1;
    //call function find x,
    found = gw_find(g, x, &r, &c);
    if ( found == 1){
        g->grid[r][c].districtPopulation++;
        temp1 = g->grid[r][c].head;
        temp1->next = g->grid[r][c].head;
        g->grid[r][c].head->prev = temp1;

    }
    else
        return 0;

}

// function to move person to different district
int gw_move(GW g, int x, int i, int j ){
    personInfo *temp = malloc(sizeof(personInfo));
    personInfo *temp1;
    int found;
    temp->col = j;
    temp->row = i;
    temp->id = x;
    temp->next = NULL;
    temp->prev = NULL;

    //call function find x,
    found = gw_find(g, x, &i, &j);
    if ( found == 1){
        g->grid[i][j].districtPopulation++;
        temp1 = temp;
        temp1->next = g->grid[i][j].head;
        g->grid[i][j].head->prev = temp;

        return 1;
    }
    else
        return 0;
}

// function to create a new person
int gw_create(GW g, int i, int j){
    personInfo *newID = malloc(sizeof (personInfo));
    newID = g->worldPopulation + 1;
    g->peopleArray[g->worldPopulation].id = newID;
    g->grid[i][j].head = newID;
}

// quit function
void gw_free (GW g){
    free(g);
}

