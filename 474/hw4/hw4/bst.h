/**
 * @file bst.h The header file for BST
 * @author William Montgomery
 * @date April 2014
 */

#ifndef BST_H
#define BST_H

#include <stdlib.h>
#include <iostream>
#include <string>
#include "bstnode.h"

using namespace std;

/**
 * @brief The BST class Encapsulates a Binary Search Tree
 */
class BST
{
protected:
    BSTNode *root; /*!< The root node */
public:
    BST();
    ~BST();
    BST* clear();
    BST* switchSets(BST *);
    BST* copy(BST *);
    BST* insert(const string);
    BST* remove(const string);
    BST* unionWith(BST *);
    BST* intersectionWith(BST *);
    friend ostream& operator<<(ostream&, const BST&);
};

#endif // BST_H
