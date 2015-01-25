#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

/**
* program implementing the union-find data structure
*
* If you missed lecture, find someone who didn't!
*
* in short the data structure does this:
*
*     - it represents a partition of elements {0..n-1}:  it is
*          broken into non-overlapping subsets
*     - initially the partition has n singletons:  each
*          element is in a set by itself.
*     - each subset is identified by a "leader" which is one
*          of the elements in the set.
*     - if an element is the leader of its set then its parent
*          is itself.
*     - if an element's parent is not equal to itself, we follow
*          our ancestors until we reach the root/leader.  This
*          is what the find operation does.
*       Time permitting, you can do path compression along with each
*          find operation.
*     - the union operation takes two sets and merges them into a single
*          set.  Thus the number of subsets is decreased by one.  The
*          leader of the union is the leader of the larger of the two
*          sets being merged.
*
*     - here is a wikipedia page on the data structure:
*
*               http://en.wikipedia.org/wiki/Disjoint-set_data_structure
*
*
*  LAB tasks:
*
*       read code and understand how the union-find structure woks
*
*       complete the uf_union and uf_find functions
*          if you have time, include path compression in uf_find
*
*       try it out to see how many connected components the given graph has
*          (and double check this by hand)
*
*       create another graph (as an array of edges) and try it too.
*
*
*
*/

struct uf_struct {
    int *parent;
    int *size;
    int num_elems;
    int num_sets;
};

typedef struct uf_struct UF;

struct edge_struct {
    int u, v;
};
typedef struct edge_struct EDGE;

UF * uf_create(int n){
int i;

  UF * ufptr = malloc(sizeof(UF));
  ufptr->parent = malloc(n * sizeof(int));
  ufptr->size = malloc(n*sizeof(int));
  ufptr->num_sets = n;
  ufptr->num_elems = n;

  for(i=0; i<n; i++){
    ufptr->parent[i] = i;  // set leader of singleton sets (self)
    ufptr->size[i] = 1;
  }
  return ufptr;

}

void uf_destroy(UF *ufptr){
    free(ufptr->parent);
    free(ufptr->size);
    free(ufptr);
}

void uf_report(UF *ufptr){
int u;

  for(u=0; u < ufptr->num_elems; u++){
    if(ufptr->parent[u] == u){
        printf("  set leader:  %d ; size : %d\n", u, ufptr->size[u]);
    }
  }

}
/**
* TODO
*
* returns leader of set containing x
*
* if time permits, also perform path compression
*/
int uf_find(UF *ufptr, int x){
  if (ufptr == NULL) return INT_MIN;

  while (x != ufptr->parent[x]){
    printf("The parent of %d is %d\n", x, ufptr->parent[x]);
    ufptr->parent[x] = ufptr->parent[ufptr->parent[x]];
    x = ufptr->parent[x];
  }
  return x;
}

/**
* TODO
*
* the sets containing a and b are merged ("unioned") into
*   a single set.
*
* follows the union-by-size policy:  leader of the larger set
*   becomes the leader of the union.
*/
int uf_union(UF *ufptr, int a, int b){
  if (ufptr == NULL) return INT_MIN;

  while (a != ufptr->parent[a]){
    a = ufptr->parent[a];
  }

  while (b != ufptr->parent[b]){
    b = ufptr->parent[b];
  }

  // The elements are already in the set
  if (a == b) {
    return a;
  }
  if (ufptr->size[a] > ufptr->size[b]){
    ufptr->parent[b] = a;
    ufptr->size[a] += ufptr->size[b];
    (ufptr->num_sets)--;
    return a;
  }
  else {
    ufptr->parent[a] = b;
    ufptr->size[b] += ufptr->size[a];
    (ufptr->num_sets)--;
    return b;
  }
}


UF * connected_components(EDGE *edges, int n, int m){

    int e, u, v;
    UF * ufptr = uf_create(n);

    for(e = 0; e < m; e++){
        u = edges[e].u;
        v = edges[e].v;
        if(uf_find(ufptr, u) != uf_find(ufptr, v)){
            printf("Combining %d and %d\n", u, v);
            uf_union(ufptr, u, v);
        }
    }
    printf("graph has %d connected components\n", ufptr->num_sets);
    return ufptr;

}

void print_parents (UF *ufptr){
  int i;

  printf("Element -> Parent\n");
  for (i = 0; i < ufptr->num_elems; i++){
    printf("%d -> %d\n", i, ufptr->parent[i]);
  }
}


int main()
{
    EDGE edges[] = {{6,12}, {12, 10}, {6, 10}, {3,6}, {11,0}, {2,7},
                     {3,10}, {7,5}, {1,8}, {10,5}, {9,8}, {2,5},
                     {12,3}, {7,4}};
    int n = 13; // number of vertices
    int m = 14; // number of edges;

    UF *ufptr;

    ufptr = connected_components(edges, n, m);
    print_parents(ufptr);
    uf_destroy(ufptr);
    return 0;
}
