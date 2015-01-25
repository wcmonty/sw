//#include "mainwindow.h"
//#include "ui_mainwindow.h"
#include "dictionary.h"
#include "dictionaryloader.h"
#include "humanplayer.h"
#include "aiplayer.h"
#include <assert.h>
#include <QFile>
#include <QTextStream>
#include <QRegularExpression>

class UnitTest{
private:
    Dictionary * dictionary;
    Dictionary * a_dictionary;
    DictionaryLoader * dictionaryLoader;
    list<QString> * wordlist;
    list<QString> * anagramlist;
    static const unsigned int anagramcount = 168;

public:
    void dictionarytest()
    {
        /*
         *  Basic Dictionary checks. Can we load it, and does it contain some very basic words?
         */
        dictionary = new Dictionary();
        dictionaryLoader = new DictionaryLoader(dictionary, ":/resources/dictionary.txt");
        dictionaryLoader->load();

        assert(dictionary->wordcount());
        assert(dictionary->isWord("a"));
        assert(dictionary->isWord("aa"));
        assert(dictionary->isWord("aardvark"));
        assert(dictionary->isWord("blue"));
        assert(dictionary->isWord("cow"));
        assert(dictionary->isWord("pie"));


        /*                      ANAGRAM TESTS
         *
         *  The word 'nameless' has a lot of anagrams. Let's see if we have all of them.
         *  The anagram file inserted is _required_ to contain only unique anagrams.
         *
         */

        a_dictionary = new Dictionary();
        delete dictionaryLoader;
        dictionaryLoader = new DictionaryLoader(a_dictionary, ":/resources/nameless_anagrams.txt");
        dictionaryLoader->load();

        wordlist = new list<QString>();
        anagramlist = new list<QString>();
        dictionary->words->anagrams("nameless",wordlist);

        // This should return equal to the wordcount found in the anagram file.
        a_dictionary->words->anagrams("nameless",anagramlist);
        assert(anagramlist->size() == anagramcount);

        cout << "wordlist: " << wordlist->size() << endl;
        cout << "anaglist: " << anagramlist->size() << endl;

        list<QString> * wildanagramlist = new list<QString>();
        dictionary->words->anagrams("hel**",wildanagramlist);
        for (std::list<QString>::iterator it = wildanagramlist->begin(); it != wildanagramlist->end(); it++)
        {
            assert(dictionary->isWord(*it));
            cout << QString(*it).toStdString() << endl;
        }

        /*
         *
         * We now have a vector of words containing all the anagrams for the word
         * 'nameless' that are found in our dictionary. Let's assure that we have them
         * all. And more importantly, that we don't have false positives.
         *
         *
         * Let's compare sizes first! This is a very basic test.
         * nameless_anagrams.txt is not a _complete_ list.
         * However, we do assume that the dictionary is big enough that it should contain most of these.
         *
         */

        assert( wordlist->size() >= anagramlist->size() && wordlist->size() <= 2 * anagramlist->size() );

        for (std::list<QString>::iterator it = anagramlist->begin(); it != anagramlist->end(); it++)
            assert(dictionary->isWord(*it));

        // We have now confirmed that all the words in the anagramlist are in the anagrams found
        // in the dictionary.

        QRegularExpression *re = new QRegularExpression("^[a-zA-Z*]+$");
        assert(re->match(QString("abcdefghijklmnopqrstuvwxyz*"),0,QRegularExpression::NormalMatch,QRegularExpression::NoMatchOption ).hasMatch());

        // A confirmation that our basic PCRE regexp works. Also used as a reference.

        // Standard anchored ai search. The first position is the anchor.
        list<QString> * newwordlist = new list<QString>();
        dictionary->words->ai_search("nameless","*a*e*ess*",newwordlist);
        for (std::list<QString>::iterator it = newwordlist->begin(); it != newwordlist->end(); it++)
            assert(dictionary->isWord(*it));

        /* Can we do all of these deletions succesfully? */
        delete wordlist;
        delete dictionaryLoader;
        delete dictionary;
    }

    void runalltests()
    {
        dictionarytest();
    }
};
