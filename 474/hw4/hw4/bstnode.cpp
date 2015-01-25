/**
 * @file bstnode.cpp The implementation file for BSTNode
 * @author William Montgomery
 * @date April 2014
 */

#include "bstnode.h"

/**
 * @brief BSTNode::BSTNode Constructor from a string
 * @param value The value to be set
 */
BSTNode::BSTNode(const string value)
{
    this->left = NULL;
    this->right = NULL;
    this->value = string(value);
}

/**
 * @brief BSTNode::BSTNode Copy constructor
 * @param anotherNode The node to create from
 */
BSTNode::BSTNode(const BSTNode &anotherNode)
{
    this->value = string(anotherNode.value);

    /// Initialize the left node
    if (anotherNode.left)
    {
        this->left = new BSTNode (*(anotherNode.left));
    }
    else
    {
        this->left = NULL;
    }

    /// Initialize the right node
    if (anotherNode.right)
    {
        this->right = new BSTNode (*(anotherNode.right));
    }
    else
    {
        this->right = NULL;
    }
}

/**
 * @brief BSTNode::~BSTNode Destructor
 */
BSTNode::~BSTNode()
{
    if (left) {
        delete (left);
    }
    if (right) {
        delete (right);
    }
}

/**
 * @brief BSTNode::min Finds the minimum value
 * @return The minimum value
 */
const string BSTNode::min()
{
    return left ? left->min() : this->value;
}

/**
 * @brief BSTNode::max Finds the maximum value
 * @return The maximum value
 */
const string BSTNode::max()
{
    return right ? right->max() : this->value;
}

/**
 * @brief BSTNode::insert Inserts a value into the subtree
 * @param value The value to insert
 * @return this
 */
BSTNode* BSTNode::insert(const string value)
{
    /// If the value is less than this value
    if (value < this->value)
    {
        if (left)
        {
            left->insert(value);
        }
        else
        {
            left = new BSTNode(value);
        }
    }
    /// If the value is greater than this value
    else if (value > this->value)
    {
        if (right)
        {
            right->insert(value);
        }
        else
        {
            right = new BSTNode(value);
        }

    }
    /// Otherwise it is equal and we do not insert

    return this;
}

/**
 * @brief BSTNode::remove Remove a node from the subtree
 * @param value The value to remove
 * @return this
 */
BSTNode* BSTNode::remove(const string value)
{
    /// The value is less than this value and
    /// there is a left node
    if (left && value < this->value)
    {
        left = left->remove(value);
    }

    /// The value is a greater than this value
    /// and there is a right node
    else if (right && value > this->value)
    {
        right = right->remove(value);
    }

    /// This is the value
    else if (value == this->value)
    {

        /// Leaf node
        if (!right && !left)
        {
            delete (this);
            return NULL;
        }

        /// Only has right child
        else if (!left)
        {
            BSTNode *temp = right;
            right = NULL;
            delete (this);
            return temp;
        }

        /// Only has left child
        else if (!right)
        {
            BSTNode *temp = left;
            left = NULL;
            delete (this);
            return temp;
        }

        /// Has two children
        /// Set this to the max of the left
        /// and remove that value from the left
        else
        {
            this->value = string(left->max());
            left = left->remove(this->value);
        }
    }
    return this;
}

/**
 * @brief BSTNode::unionWith Union with another subtree
 * @param anotherNode The root of the other subtree
 * @return this
 */
BSTNode* BSTNode::unionWith(BSTNode *anotherNode)
{
    if (anotherNode)
    {
        this->insert(anotherNode->value);
        if (anotherNode->left)
        {
            this->unionWith(anotherNode->left);
        }
        if (anotherNode->right)
        {
            this->unionWith(anotherNode->right);
        }
    }
    return this;
}

/**
 * @brief BSTNode::removeAll Removes all nodes that are in another
 * subtree from this subtree
 * @param anotherNode The root of the other subtree
 * @return The new root of this subtree
 */
BSTNode* BSTNode::removeAll(BSTNode *anotherNode)
{
    BSTNode *temp = this;
    if (anotherNode)
    {
        temp = this->remove(anotherNode->value);
        if (temp && anotherNode->left)
        {
            temp = temp->removeAll(anotherNode->left);
        }
        if (temp && anotherNode->right)
        {
            temp = temp->removeAll(anotherNode->right);
        }
    }
    return temp;
}

/**
 * @brief BSTNode::intersectWith Intersects this subtree
 * with another subtree
 * @param anotherNode The root of the other subtree
 * @return The new root of this subtree
 */
BSTNode* BSTNode::intersectWith(BSTNode *anotherNode)
{
    BSTNode *temp = this;
    if (anotherNode)
    {
        BSTNode *copy = new BSTNode(*this);
        copy = copy->removeAll(anotherNode);
        if (copy)
        {
            temp = this->removeAll(copy);
        }
        delete (copy);
    }
    return temp;
}

/**
 * @brief operator << Overloading the << operator to handle BSTNode
 * @param os The output stream
 * @param node The node
 * @return The output stream
 */
ostream& operator<<(ostream& os, const BSTNode& node)
{
    if (node.left) os << *(node.left);
    os << "\"" << node.value << "\" ";
    if (node.right) os << *(node.right);
    return os;
}
