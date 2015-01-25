#include "trienode.h"

/*!
 * \brief TrieNode::TrieNode        Default constructor.
 */
TrieNode::TrieNode() {
    triechildren.clear();
    character = ' ';
    wordmarker = false;
}

/*!
 * \brief TrieNode::TrieNode        Overloaded constructor for quicker building.
 * \param c         What is the character this node defines?
 * \param isWord    Does this indicate the final letter of a word?
 */
TrieNode::TrieNode(QChar c, bool isWord) {
    triechildren.clear();
    character = c;
    wordmarker = isWord;
}

/*!
 * \brief TrieNode::~TrieNode       Default Destructor.
 */
TrieNode::~TrieNode() {
    while(!this->triechildren.empty()){
        delete this->triechildren.back();
        this->triechildren.pop_back();
    }
}

/*!
 * \brief TrieNode::findChild       Finds the child that contains the alphabetic character we seek.
 * \return The pointer to the TritriechildreneNode where the alphabetic character was found.
 */
TrieNode* TrieNode::findChild(QChar c)
{
    for ( unsigned i = 0; i < triechildren.size(); i++ )
    {
        TrieNode* tmp = triechildren.at(i);
        if ( tmp->content() == c )
            return tmp;
    }
    return NULL;
}

/*!
 * \brief TrieNode::content     Getter for the character that defines this TrieNode.
 * \return  The character stored in this TrieNode.
 */
QChar TrieNode::content() {
    return character;
}

/*!
 * \brief TrieNode::isWord      Does this TrieNode mark a complete word?
 * \return  The boolean representation of wether this is a word or not.
 */
bool TrieNode::isWord() {
    return wordmarker;
}

/*!
 * \brief TrieNode::setWordMarker   Set that this TrieNode marks a complete word.
 */
void TrieNode::setWordMarker() {
    wordmarker = true;
}

/*!
 * \brief TrieNode::appendChild   Add a child to the children defining vector<TrieNode*> of this TrieNode.
 * \param child     The TrieNode you wish to append to the current TrieNode's children.
 */
void TrieNode::appendChild(TrieNode* child) {
    triechildren.push_back(child);
}

/*!
 * \brief TrieNode::appendChild   Returns the vector encompassing this TrieNode's children.
 * \return  The children for this TrieNode.
 */
vector<TrieNode*> TrieNode::children() {
    return triechildren;
}
