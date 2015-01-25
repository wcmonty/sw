#include "aiplayer.h"
#include "assert.h"
#include <cctype>

/*!
 * \brief AIPlayer::_touches_4  Returns whether or not there are spaces that contain Tiles around this location.
 * \param x         The location around which we want to look, in the x direction.
 * \param y         The location around which we want to look, in the y direction.
 * \return          bool true or false.
 */
bool AIPlayer::_touches_4(int x, int y) {
    if(!Board::getBoard()->startCovered())
        return true;
    if(_touches_2(x,y))
        return true;
    else if(_touches_2(y,x))
        return true;
    // Fall-through logic. If it reaches here, then all of the previous items would have 'returned false'.
    return false;
}

/*!
 * \brief AIPlayer::_touches_2  Returns whether or not there are spaces that contain Tiles around this location.
 * \param x         The location around which we want to look, in the _first_ direction.
 * \param y         The location around which we want to look, in the _second_ direction.
 * \return          bool true or false.
 */
bool AIPlayer::_touches_2(int x, int y) {
    Board * myboard = Board::getBoard();
    if( x+1 < 15) {
        if( !myboard->spaces[x+1][y]->isBlank() )
            return true;
    }
    if( x-1 > 0) {
        if( !myboard->spaces[x-1][y]->isBlank() )
            return true;
    }
    // Fall-through logic. If it reaches here, then all of the previous items would have 'returned false'.
    return false;
}

/*!
 * \brief _pred_value_sort is the private function used by our system's sort for available plays.
 * \param a Play 1
 * \param b Play 2
 * \return True if Play 2 should go before Play 1
 */
bool _pred_value_sort(Play * a, Play * b)
{
    return a->getValue() > b->getValue();
}

/*!
 * \brief AIPlayer::_assist_ai_search This is the main function of the AI search, which tries to discover the various valid plays available.
 * \param Node              The current TrieNode representing the letter we are on during this search.
 * \param tiles             The remaining tiles in our tray to complete words with.
 * \param positions         The positions remaining in our searchgrid in this particular direction, on this particular line.
 * \param playbuilder       The unit that represents the play being built at the moment.
 * \param playlist          A location we edit to fill with valid plays - and thus the 'return value' in a ways.
 */
void AIPlayer::_assist_ai_search(TrieNode * Node, QList<Letter*> * tiles,
                                 QList<Space*> * positions, QList<Move*> * playbuilder,
                                 list<Play*> * playlist){
    if(!Node) {
        // This should never happen!
        cout << "Big Error! Invalid control path!";
        return;
    }

    if( Node->isWord() && !playbuilder->isEmpty() ) {
        int somethingtrue = false;
        for(int i = 0; i < playbuilder->size(); i++)
        {
            if( _touches_4(playbuilder->at(i)->getX(),
                           playbuilder->at(i)->getY()) )
                somethingtrue = true;
        }

        if( somethingtrue ) {
            /*!
             * @todo Make it validate the full 'play' here before submitting it.
             *       If it doesn't validate, RETURN! Because we can't continue along
             *       this route to valid words anymore. It will never validate.
             *       We still have to do the position check after that either way.
             *       We can only do a sideways check however! Not a forwards, as that
             *       might invalidate a non-complete word that might complete later.
             */
            if( !positions->isEmpty() ) {
                if( positions->first()->letter == NULL ) {
                    // Add the play to the playlist
                    playlist->push_front(new Play(playbuilder,this));
                }
            }
            else {
                // Add the play to the playlist
                playlist->push_front(new Play(playbuilder,this));
            }
        }
    }

    // exit condition 1: If we have no tiles, we can't place letters.
    // exit condition 2: If we have no positions left to fill, we can't place letters.
    if( tiles->isEmpty() || positions->isEmpty() )
        return;

    // We are guaranteed to have a position letter, so we take it.
    // We are never going to give this space back.
    // (MC: Modification Character)
    Space* mc = positions->takeFirst();
    int tilepos = 0;

    // exit condition 3: if the position letter is not a wildcard,
    // we don't have to use a tile from our tray, and we instead just continue on
    // after we check that we have that child.
    if( mc->isBlank() == false )
    {
        TrieNode * foundchild = Node->findChild(*mc->letter->asQCharPtr());
        if( foundchild )
            _assist_ai_search(foundchild,tiles,positions,playbuilder,playlist);
    }
    else
    {
        // We must now attempt this system for any character that is valid here.
        // It's luckily not 26, it's only as many tiles as we have available!
        // Still, in the WORST situation...
        // This means 7*6*5*4*3*2*1, or 7! total calls of recursion. That's 5040.
        // Also, we need to make sure it does get _taken_ by a letter.

        for(tilepos = 0; tilepos < tiles->size(); tilepos++)
        {
            Letter * t = tiles->takeAt(tilepos);

            // Take this letter and let's see if it can go somewhere.
            // Generate the current move.

            Move * mv = new Move(this, t, Rack::getRack()->getPos(t), mc->getX(), mc->getY());
            playbuilder->push_front(mv);

            TrieNode * foundchild = Node->findChild(*(t->asQCharPtr()));
            if( foundchild )
            {
                _assist_ai_search(foundchild,tiles,positions,playbuilder,playlist);
            }

            // And take it out of the playbuilder.
            playbuilder->pop_front();
            tiles->insert(tilepos,t);
        }
    }
}

/*!
 * \brief AIPlayer::ai_search High level assistant function that creates a new position list we can tamper with.
 * \param tiles The tiles we have available to us. Because this is a pointer, this function can not be parallelized at this time.
 *              Guaranteed to restore the tiles to their correct state when finished.
 * \param positions The original positions we want to search through.
 * \param playlist The current list of plays we can do. Constructive.
 * \param dict The dictionary we will be grabbed the node out of.
 * \return The quantity if plays available to the AI after this function finishes.
 */
size_t AIPlayer::ai_search(QList<Letter*> * tiles, QList<Space*> * positions,
                           list<Play*> * playlist, Dictionary* dict)
{
    QList<Space*> * pos_copy = new QList<Space*>();

    for(int i = 0; i < positions->size(); i++) {
        pos_copy->insert(i,positions->at(i));
    }

    if(dict->words->root)
        _assist_ai_search(dict->words->root, tiles, pos_copy, new QList<Move*>(), playlist);
    return playlist->size();
}

/*!
 * \brief AIPlayer::play Fills the Currentplay of the board with a valid AI play.
 * \param dict  The dictionary we want to use as a reference to form a valid play.
 * \param play  The play we will be editing. Pointer to 'currentplay' on the board.
 */
void AIPlayer::play(Dictionary &dict, Play **play){
    int searches = 0;

    Board * myboard = this->boardcopy = Board::getBoard();
    list<Play*> * possible_plays = new list<Play*>();

    assert(this->letters.size());
    /* Putting the letters into a prefered format */
    QVector<Letter*> myletterv = QVector<Letter*>::fromStdVector(this->letters);
    QList<Letter*> myletters_ll = QList<Letter*>::fromVector(myletterv);
    QList<Letter*> * myletters = &myletters_ll;

    /* Prepare the anchor characters. */
    QList<Space *> * rightanchors[15];
    QList<Space *> * downanchors[15];

    for( int i = 0; i<15; i++)
    {
        rightanchors[i] = new QList<Space *>();
        downanchors[i] = new QList<Space *>();
    }

    // First, we find out if this is the initial play. As in, we can play 'anything'.
    // Thus, this is the only anchor we need, and we set it as such.
    if ( Board::getBoard()->startCovered() == false )
    {
        for(int i = 0; i < 15; i++)
            rightanchors[0]->push_back(myboard->spaces[i][7]);
    }
    // Otherwise, we need to go through the entire board and collect anchoring lines.
    // We need an array of each horizontal, and an array of each vertical line.
    // Any line that has no elements in it, gets cleared. This way, we save processor power.
    // Thanks to this system being 2d and a perfect square, we can stick these two into the same
    // double loop.
    else {
        for(int i = 0; i<15; i++)
        {
            bool isempty_r = true;
            bool isempty_d = true;

            for(int j = 0; j<15; j++) {
                if(myboard->spaces[i][j]->isBlank() == false || _touches_2(i,j) )
                    isempty_r = false;
                if(myboard->spaces[j][i]->isBlank() == false || _touches_2(j,i) )
                    isempty_d = false;

                rightanchors[i]->insert(j,myboard->spaces[i][j]);
                downanchors[i]->insert(j,myboard->spaces[j][i]);
            }

            if(isempty_r)
                rightanchors[i]->clear();
            if(isempty_d)
                downanchors[i]->clear();
        }
    }

    /*
     * Based on the anchors, we'll need to do this multiple times, downwards and rightwards
     * But we can ignore things that are 'part' of a word. It's already a word, and we can't
     * continue any better from it, than when we were at the start of that word.
     */
    for(int i = 0; i < 15; i++)
    {
        bool anchoring_r = false;
        bool anchoring_d = false;

        // We can't create a word if a line is empty!
        if(!rightanchors[i]->isEmpty()) {
            for( int j = 0; j < 15; j++) {
                // Going Right
                if( myboard->spaces[i][j]->isBlank() ) {
                    anchoring_r = false;
                    ai_search(myletters, rightanchors[i],possible_plays,&dict);
                    searches++;
                }
                else if( !anchoring_r ) {
                    anchoring_r = true;
                    ai_search(myletters, rightanchors[i],possible_plays,&dict);
                    searches++;
                }
                // Otherwise, we are looking at a word, and we just pop.
                // No need to do a search, because our last search was already good for this.
                if(!rightanchors[i]->isEmpty()) // Safety for some reason.
                    rightanchors[i]->pop_front();
            }
        }

        // We can't create a word if a line is empty!
        if(!downanchors[i]->isEmpty())
        {
            for( int j = 0; j < 15; j++) {
                // Going Down
                if( myboard->spaces[j][i]->isBlank() ) {
                    anchoring_d = false;
                    ai_search(myletters, downanchors[i],possible_plays,&dict);
                    searches++;
                }
                else if( !anchoring_d ) {
                    anchoring_d = true;
                    ai_search(myletters, downanchors[i],possible_plays,&dict);
                    searches++;
                }

                // Otherwise, we are looking at a word, and we just pop.
                // No need to do a search, because our last search was already good for this.
                if(!downanchors[i]->isEmpty()) // Safety for some reason.
                    downanchors[i]->pop_front();
            }
        }
    }

    /* make decision logic based on the values of these possible plays
     * preferably by sorting the players in the possible plays.
     */
    cout << "We have generated " << possible_plays->size() << " Qplays after "
         << searches << " searches." << endl;


    possible_plays->sort(_pred_value_sort);


    /*
     *  Purely debug output going on here.
     */
    /*
    int i = 0;
    for(list<Play*>::const_iterator it = possible_plays->cbegin(); it != possible_plays->cend(); it++)
    {
        Play * c = *it;
        cout << "Play Number " << i << ":";
        string word = "";
        // for( int j = 0; j < newlist.at(i)->size(); j++)

        for(QList<Move*>::ConstIterator moveit = c->moves->cbegin(); moveit != c->moves->cend(); moveit++)
        {
            Move * cur = *moveit;
            cout << cur->getLetter()->asQCharPtr()->toLatin1();
            cout << "@[" << cur->getX() << "][" << cur->getY() << "] ";
            // word += *cur->getLetter()->asQCharPtr();
            word += cur->getLetter()->asQCharPtr()->toLatin1();
            cout << "@RP" << cur->getRackPosition() << "   ";
        }

        cout << " ::: " << word << " == " << c->getCharArray().toStdString();
        cout << " with value: " << c->getValue();
        cout << endl;


        i++;
    }
    */

    if(possible_plays->empty() == false)
    {
        Play * curplay = possible_plays->front();
        bool hasvalidplay = false;

        for( QList<Move*>::Iterator moveit = curplay->moves->begin(); moveit != curplay->moves->end(); moveit++)
        {
            Move * curmove = *moveit;
            myboard->moveLetterToBoard(curmove->getRackPosition(),curmove->getX(),curmove->getY());
        }

        for( list<Play*>::const_iterator it = possible_plays->begin(); it != possible_plays->end() && !(hasvalidplay = myboard->validate()); it++)
        {
            // Our last play was invalid. So pick them back off of the board and clear the CurrentPlay.
            ((Play*)*play)->clearMoves();
            for( QList<Move*>::ConstIterator moveit = curplay->moves->cbegin(); moveit != curplay->moves->cend(); moveit++)
            {
                Move * curmove = *moveit;
                myboard->spaces[curmove->getX()][curmove->getY()]->setNew();
                curplay->clearLetter(curmove->getLetter());
                Rack::getRack()->inactivateByLetter(curmove->getLetter());
                myboard->spaces[curmove->getX()][curmove->getY()]->clear();
            }

            curplay = *it;
            // cout << ">>" << curplay->getCharArray().toStdString() << "<<" << endl;

            for( QList<Move*>::ConstIterator moveit = curplay->moves->cbegin(); moveit != curplay->moves->cend(); moveit++)
            {
                Move * curmove = *moveit;
                myboard->moveLetterToBoard(curmove->getRackPosition(),curmove->getX(),curmove->getY());
            }

            //cout << *Board::getBoard() << endl;
        }

        // If we never found a valid play...
        if(hasvalidplay == false)
        {
            // Clear the play off.
            ((Play*)*play)->clearMoves();
            for( QList<Move*>::ConstIterator moveit = curplay->moves->cbegin(); moveit != curplay->moves->cend(); moveit++)
            {
                Move * curmove = *moveit;
                myboard->spaces[curmove->getX()][curmove->getY()]->setNew();
                curplay->clearLetter(curmove->getLetter());
                Rack::getRack()->inactivateByLetter(curmove->getLetter());
                myboard->spaces[curmove->getX()][curmove->getY()]->clear();
            }
        }
    }
}

/*!
 * @overload
 * \brief AIPlayer::isAIPlayer
 * \return True if player is AI
 */
bool AIPlayer::isAIPlayer(){
    return true;
}
