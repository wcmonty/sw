#include "trie.h"


/*!
 * \brief Trie::Trie()      Default constructor for a Trie.
 * \return this
 */
Trie::Trie()
{
    root = new TrieNode();
}


/*!
 * \brief Trie::~Trie()     The default destructor for a Trie structure.
 */
Trie::~Trie()
{
    delete this->root;
}


/*!
 * \brief Trie::AddWord     Adds a word into the Trie's structure.
 * \param s     A string representation of a word you wish to add.
 */
void Trie::addWord(QString s)
{
    TrieNode* current = root;
    // This should not happen.
    // But just in case, we stop if the entered 'addWord' is empty.
    if ( s.length() == 0 )
        return current->setWordMarker(); // an empty word is a word.

    for ( int i = 0; i < s.length(); i++ )
    {
        TrieNode* child = current->findChild(s[i]);
        if ( child != NULL )
            current = child;
        else
        {
            TrieNode* tmp = new TrieNode(s[i],false);
            current->appendChild(tmp);
            current = tmp;
        }
        if ( i == s.length() - 1 )
            current->setWordMarker();
    }
}


/*!
 * \brief _anagramgen   Private function that generates Anagrams
 * \param node          Current TrieNode
 * \param word          Current word in the recursive call.
 * \param chars         Current array of character representing the letters we have left to search through with.
 * \param Wordlist      The resulting list<QString> of items where 'isWord()' resolved to true on the nodes searched through.
 */
void Trie::_anagramgen(TrieNode * node, QString word, QString chars, list<QString> *Wordlist)
{
    TrieNode * tn;
    if( chars.length() )
        if( node->isWord() )
            Wordlist->push_front(word);

    for( int i = 0; i < chars.length(); i++)
    {
        /* Chars: birdy
         * i:     0     1       2       3       4
         * Left:  NULL  b       bi      bir     bird
         * Char:  b     i       r       d       y
         * Right: irdy  rdy     dy      y       NULL
         */
        QString left = chars.left(i);
        QString right = chars.right(chars.length() - i - 1);

        if((tn = node->findChild(chars[i])))
            _anagramgen(tn,word+chars[i], left+right, Wordlist);
    }
}


/*!
 * \brief Trie::anagrams returns a List of words in the dictionary which can be formed from the characters in 's'
 *        This function is not functional, as it alters WordList destructively in the case of non-unique entries.
 * \param s     The characters from which to build words.
 * \param Wordlist  A list<QString> that match the dictionary and the letters given.
 * \return      The amount of items found and added to the WordList.
 */
size_t Trie::anagrams(QString s, list<QString> *Wordlist) {
    QString news = s;
    int index = s.indexOf('*',0,Qt::CaseInsensitive);
    if( s.contains('*',Qt::CaseInsensitive) ) {
        // We should be guaranteed no more than 2 wildcards. So at _worst_, we have 26^2 anagrams() searches running.
        // That's 676 anagrams(). This could probably be optimized further, but let's assume we don't need to // won't.
        // We replace the first * found in the string, and replace it by a-z.
        // If there's more than one * in the string, it'll recursively make those into a-z as well.
        for( int j = 0; j < 26; j++) {
            news.replace(index,1,QChar((char)(j+97)));
            anagrams(news,Wordlist);
        }
        return Wordlist->size();
    }
    else
        _anagramgen(this->root, "", " "+s, Wordlist);

    /*
     * We don't want duplicates. That would just waste processor time when performing the
     * far more expensive ai_search.
     */
    Wordlist->sort();
    Wordlist->unique();
    return Wordlist->size();
}


/*!
 * \brief Trie::searchWord      Searches for a word in the Trie's structure.
 * \param  s    A string representation of a word you wish to search for.
 * \return A    boolean representation of wether this is a word or not.
 */
bool Trie::searchWord(QString s)
{
    TrieNode* current = root;

    while ( current != NULL )
    {
        for ( int i = 0; i < s.length(); i++ )
        {
            TrieNode* tmp = current->findChild(s[i]);
            if ( tmp == NULL )
                return false;
            current = tmp;
        }
        return current->isWord();
    }

    return false;
}


/*!
 * \brief _assist_ai_search is a helper function for ai_search.
 * \param Node      Guaranteed not NULL.
 * \param tiles
 * \param positions
 * \param word      current recursion's word being built.
 * \param Wordlist
 */
void Trie::_assist_ai_search(TrieNode * Node, QString tiles, QString positions, QString word, list<QString> *Wordlist){
    if(!Node) {
        // This should never happen!
        cout << "Big Error! Invalid control path!";
        return;
    }

    /*
     * This is the mainstay of our logic. This is what decides if something should be added to the
     * word list or not.
     */
    if( Node->isWord() ) {
        if(!positions.isEmpty()) {
            if(positions[0] == QChar('*') ) // We can't be sure it is valid if a non-empty space follows.
                Wordlist->push_back(word);  // But we _can_ be sure it is valid if an empty space follows..
        }
        else
            Wordlist->push_back(word); // We can be sure it is valid if this was the last required letter.
    }

    // exit condition 1: If we have no tiles, we can't place letters.
    // exit condition 2: If we have no positions left to fill, we can't place letters.
    if( tiles.isEmpty() || positions.isEmpty() )
        return;

    // We are guaranteed to have a position letter, so we take it.
    QChar mc = positions[0];

    // exit condition 3: if the position letter is not a wildcard,
    // and we do not have that letter. Then we can not place a letter.
    if(!tiles.contains(mc,Qt::CaseInsensitive) && mc != QChar('*'))
        return;

    // We create a copy of the available tiles.
    QString thesetiles = tiles;
    // We remove the first item from the positions list, as we have now handled it.
    positions.remove(0,1);

    // We are, thanks to our exit conditions, guaranteed to have a tile we want in this position.
    // First, we handle the case of this being a specific letter we have available in our tray.
    if( mc != QChar('*'))
    {
        int tileused_index = tiles.indexOf(mc,0,Qt::CaseInsensitive);
        thesetiles.remove(tileused_index,1);
        TrieNode * foundchild = Node->findChild(mc);
        if( foundchild )
            _assist_ai_search(foundchild,tiles,positions,word+mc,Wordlist);
    }
    // If it wasn't a specific letter, we are forced to use the wildcard method.
    else
    {
        // We must now attempt this system for any character that is valid here.
        // It's luckily not 26, it's only as many tiles as we have available!
        // Still, in the WORST situation...
        // This means 7*6*5*4*3*2*1, or 7! total calls of recursion. That's 5040.
        for(int tile = 0; tile < tiles.length(); tile++ )
        {
            QString thesetiles = tiles;
            thesetiles = thesetiles.remove(tile,1);
            TrieNode * foundchild = Node->findChild(tiles[tile]);
            if( foundchild )
                _assist_ai_search(foundchild,tiles,positions,word+tiles[tile],Wordlist);
        }
    }
}


/*!
 * \brief Trie::ai_search   allows the AI Player to figure out what words it has available.
 * \param tiles     What tiles (letters) does the AI Player have available to them on their rack?
 * \param positions     Representing the one-dimensional (line) state. '*' for open. Length represents where the barriers are.
 * \param Wordlist      Where we will store the available words. Destructive.
 * \return
 */
size_t Trie::ai_search(QString tiles, QString positions, list<QString> *Wordlist)
{
    QRegularExpression *re = new QRegularExpression("^[a-zA-Z*]+$");

    if( !re->match(tiles,0,QRegularExpression::NormalMatch,QRegularExpression::NoMatchOption ).hasMatch() ||
        !re->match(positions,0,QRegularExpression::NormalMatch,QRegularExpression::NoMatchOption ).hasMatch() )
        return 0; // Invalid characters found in tiles or positions.

    if(!root)
    {
        // ERROR!!! No dictionary!
        return 0;
    }

    _assist_ai_search(this->root,tiles,positions,"",Wordlist);

    Wordlist->sort();
    Wordlist->unique();
    return Wordlist->size();
}


/*!
 * \brief Trie::_printTrie      Private function facilitates printing the Trie from the node given.
 * \param  n    The node at which we start to print this call.
 * \param  s    Making this tail recursive, we build the string we are about to print in here.
 */
void Trie::_printTrie(TrieNode * n, QString s)
{
    QChar c = n->content();
    QString newstring = s;
    if( !isspace(c.toLatin1()) )
        newstring += c;
    if( n->isWord() )
        cout << newstring.toStdString() << endl;
    for ( unsigned i = 0; i < n->children().size(); i++ )
        _printTrie(n->children().at(i),newstring);
}


/*!
 * \brief Trie::printTrie      Public function that prints the entire Trie.
 */
void Trie::printTrie()
{
    Trie::_printTrie(root,"");
}
