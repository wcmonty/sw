
#include "dictionary.h"
using namespace std;

/*!
 * \brief Dictionary::Dictionary Constructor for dictionary
 */
Dictionary::Dictionary()
{
    words = new Trie();
    _wcount = 0;
}

/*!
 * \brief Dictionary::~Dictionary Destructor
 */
Dictionary::~Dictionary()
{
    delete words;
}

/*!
 * \brief Dictionary::isWord Returns boolean true if is a word
 * \param word  The word to match
 * \return  true if in dictionary, false otherwise
 */
bool Dictionary::isWord(const QString word)
{
    return words->searchWord(word);
}

/*!
 * \brief Dictionary::addWord Adds a word to the dictionary
 * \param word The word to add
 * \param checkWord Set to true if the word should be checked against
 * the database prior to insertion
 * \return true if success, false otherwise
 */
bool Dictionary::addWord(const QString word, bool checkWord)
{
    if (checkWord && words->searchWord(word)){
        return false;
    }
    words->addWord(word);
    _wcount++;
    return true;
}

/*!
 * \brief Dictionary::wordcount Getter for word count
 * \return The word count
 */
unsigned Dictionary::wordcount()
{
    return _wcount;
}
