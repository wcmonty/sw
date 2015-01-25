/**
 * @file bst.cpp The implementation file for BST
 * @author William Montgomery
 * @date April 2014
 */

#include "bst.h"

/**
 * @brief BST::BST Default constructor
 */
BST::BST()
{
    this->root = NULL;
}

/**
 * @brief BST::~BST Destructor
 */
BST::~BST()
{
    if (root)
    {
        delete (root);
    }
}

/**
 * @brief BST::clear Clears the set
 * @return this
 */
BST* BST::clear()
{
    if (root)
    {
        delete (root);
        root = NULL;
    }

    return this;
}

/**
 * @brief BST::switchSets Switches sets with another BST
 * @param anotherBST The other BST
 * @return this
 */
BST* BST::switchSets(BST* anotherBST)
{
    BSTNode *temp = root;
    root = anotherBST->root;
    anotherBST->root = temp;
    return this;
}

/**
 * @brief BST::copy Copies another BST
 * @param anotherBST The other BST to copy from
 * @return this
 */
BST* BST::copy(BST *anotherBST)
{
    if (anotherBST)
    {
        /// Remove the old root
        if (root)
        {
            delete (root);
        }

        /// Copy the other root if it exists
        if (anotherBST->root)
        {
            root = new BSTNode(*(anotherBST->root));
        }
        else
        {
            root = NULL;
        }
    }
    return this;
}

/**
 * @brief BST::insert Inserts a new value into the BST
 * @param value The value
 * @return this
 */
BST* BST::insert(const string value)
{
    if (root)
    {
        root->insert(value);
    }
    else
    {
        root = new BSTNode(value);
    }

    return this;
}

/**
 * @brief BST::remove Removes a value from the BST
 * @param value The value
 * @return this
 */
BST* BST::remove(const string value)
{
    if (root)
    {
        root = root->remove(value);
    }

    return this;
}

/**
 * @brief BST::unionWith Unions with another BST
 * @param anotherBST The other BST
 * @return this
 */
BST* BST::unionWith(BST *anotherBST)
{
    /// If this root is null
    if (!(this->root) && anotherBST) {
        if (anotherBST->root)
        {
            this->root = new BSTNode(*(anotherBST->root));
        }
        else
        {
            this->root = NULL;
        }
    }
    /// If this root is not null
    else if (anotherBST && anotherBST->root)
    {
        this->root->unionWith(anotherBST->root);
    }
    return this;
}

/**
 * @brief BST::intersectionWith
 * @param anotherBST
 * @return
 */
BST* BST::intersectionWith(BST *anotherBST)
{
    /// If root is null or the other BST is null
    if (!root || !anotherBST || !(anotherBST->root))
    {
        delete (root);
        root = NULL;
    }
    /// Otherwise
    else {
        root = root->intersectWith(anotherBST->root);
    }
    return this;
}

/**
 * @brief operator << Puts a string representation on the output stream
 * @param os The output stream
 * @param bst The BST
 * @return The ostream
 */
ostream& operator<<(ostream& os, const BST& bst)
{
    os << "[";
    if (bst.root)
    {
        os << *(bst.root);
    }
    else
    {
        os << " ";
    }
    os << "\b]";
    return os;
}
