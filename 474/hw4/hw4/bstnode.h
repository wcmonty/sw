/**
 * @file bstnode.h The header file for BSTNode
 * @author William Montgomery
 * @date April 2014
 */
#ifndef BSTNODE_H
#define BSTNODE_H

#include <stdlib.h>
#include <iostream>
#include <string>

using namespace std;

/**
 * @brief The BSTNode class Encapsulates a BST Node
 */
class BSTNode
{
private:
    BSTNode *left;  /*!< The left subtree */
    BSTNode *right; /*!< The right subtree */
    string value;          /*!< The value */

    BSTNode* removeAll(BSTNode *);
public:
    BSTNode(const string);
    BSTNode(const BSTNode &);
    ~BSTNode();
    const string min();
    const string max();
    BSTNode* insert(const string);
    BSTNode* remove(const string);
    BSTNode* unionWith(BSTNode *);
    BSTNode* intersectWith(BSTNode *);
    friend ostream& operator<<(ostream&, const BSTNode&);
};

#endif // BSTNODE_H
