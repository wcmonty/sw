#ifndef DICTIONARY_H
#define DICTIONARY_H
#include <QHash>
#include "trie.h"
#include <qstring.h>

using namespace std;

/*!
 * \brief The Dictionary class Encapsulates dicitonary operations
 */
class Dictionary
{
private:
    Trie *words;        /*!< The container for the words */
    unsigned _wcount;   /*!< The count of the words */
public:
    friend class UnitTest;
    friend class AIPlayer;
    Dictionary();
    ~Dictionary();
    bool isWord(QString);
    bool addWord(QString, bool);
    unsigned wordcount();
};

#endif // DICTIONARY_H
