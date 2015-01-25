#ifndef TRIE_H
#define TRIE_H

#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <QString>
#include <fstream>
#include <stdlib.h>
#include <QRegularExpression>
#include "trienode.h"

using namespace std;

/*!
 * \brief The Trie class is a word dictionary system that guarantees uniqueness of its entries.
 */
class Trie {
    public:
        Trie();
        ~Trie();
        void printTrie();

        void addWord(QString s);
        void deleteWord(QString s);
        size_t anagrams(QString s, list<QString> * Wordlist);
        bool searchWord(QString s);
        size_t ai_search(QString tiles, QString positions, list<QString> * Wordlist);
        friend class AIPlayer;

    private:
        TrieNode* root; /*!< The root of the Trie */

        void _printTrie(TrieNode *, QString s);
        void _anagramgen(TrieNode * node, QString word, QString chars, list<QString> * Wordlist);
        void _assist_ai_search(TrieNode * Node, QString tiles, QString positions, QString word, list<QString> *Wordlist);
};


#endif // TRIE_H
