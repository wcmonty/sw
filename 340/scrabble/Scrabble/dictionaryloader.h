#ifndef DICTIONARYLOADER_H
#define DICTIONARYLOADER_H
#include <qstring.h>
#include "dictionary.h"

/*!
 * \brief The DictionaryLoader class Loads a file of words into the dictionary
 */
class DictionaryLoader
{
private:
    QString fileName;       /*!< The name of the file holding the dictionary */
    Dictionary *dictionary; /*!< The dictionary to load */

public:
    DictionaryLoader(Dictionary*, QString);
    DictionaryLoader* load();
};

#endif // DICTIONARYLOADER_H
