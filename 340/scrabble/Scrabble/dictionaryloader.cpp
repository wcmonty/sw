#include <QFile>
#include <QTextStream>
#include <iostream>
#include "dictionaryloader.h"

/*!
 * \brief DictionaryLoader::DictionaryLoader Constructor for dictionary loader
 */
DictionaryLoader::DictionaryLoader(Dictionary *dictionary, QString fileName){
    this->dictionary = dictionary;
    this->fileName = fileName;
}

/*!
 * \brief DictionaryLoader::load Loads the dictionary
 * \return this
 */
DictionaryLoader* DictionaryLoader::load(){
    QFile file(fileName);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)){
        cout << "Could not open dictionary file!" << endl;
        return this;
    }

    QTextStream in(&file);
    QString line = in.readLine();
    while (!line.isNull()) {
        dictionary->addWord(line, false);
        line = in.readLine();
    }

    return this;
}
