#ifndef TRIENODE_H
#define TRIENODE_H
#include <vector>
#include <stdlib.h>
#include <iostream>
#include <QString>
using namespace std;

/*!
 * \brief The TrieNode class A node in a Trie
 */
class TrieNode {
public:
    friend class Trie;
    TrieNode();
    TrieNode(QChar c, bool isWord);
    ~TrieNode();

    void setWordMarker();
    void appendChild(TrieNode* child);

    QChar content();
    bool isWord();
    vector<TrieNode*> children();

    TrieNode* findChild(QChar c);

private:
    QChar character;                /*!< This node's defining 'character' */
    bool wordmarker;                /*!< Defines if this node indicates that this node completes a word */
    vector<TrieNode*> triechildren; /*!< Container for TrieNodes, order is not guaranteed */
};

#endif // TRIENODE_H
