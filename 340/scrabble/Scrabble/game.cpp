#include "game.h"
#include <assert.h>
#include "aiplayer.h"

/*!
 * \brief Game::Game Constructor for up to a 4-player game
 * \param players        The players we are constructive this game for.
 * \param dictionary    The dictionary to use
 */
Game::Game(vector<Player*> players, Dictionary *dictionary){
    this->turn = 0;
    this->pool = new LetterPool;
    this->numPlayers = players.size();
    this->players = players;
    this->plays.push_back(new Play());
    this->dictionary = dictionary;
    for(std::vector<Player*>::iterator it = players.begin(); it != players.end(); ++it) {
        (*it)->fillLetters(pool);
        assert((*it)->getLetterCount() == 7);
    }

    emit(playerChanged());

    if(currentPlayer()->isAIPlayer()){
        ((AIPlayer*)currentPlayer())->play(*dictionary, &plays.back());
        nextTurn();
    }
}

/*!
 * \brief Game::nextTurn Finalizes the current turn.  If a player is
 * an APlayer, play() is called
 * \return this
 */
bool Game::nextTurn()
{
    currentPlayer()->addScore(Board::getBoard()->score(plays.back()));
    currentPlayer()->getNewLetters(pool);
    currentPlay()->finalizeMoves();
    turn = turn + 1;
    Rack::getRack()->refresh(this);
    emit(playerChanged());

    plays.push_back(new Play());

    if(currentPlayer()->isAIPlayer() && currentPlayer()->getLetterCount() > 0){
        ((AIPlayer*)currentPlayer())->play(*dictionary, &plays.back());
        nextTurn();
    }

    return true;
}

/*!
 * \brief Game::~Game Destructor
 */
Game::~Game(){
    for(std::vector<Player*>::iterator it = players.begin(); it != players.end(); ++it) {
        if (*it != NULL){
            (*it)->clearLetters();
            assert((*it)->getLetterCount() == 0);
        }
    }
}

/*!
 * \brief Game::currentPlayer Gets the current player
 * \return A pointer to the current player
 */
Player* Game::currentPlayer()
{
    return players[turn % numPlayers];
}

/*!
 * \brief Game::currentPlay Gets the curret play
 * \return A pointer to the current play
 */
Play* Game::currentPlay()
{
    return plays.back();
}

/*!
 * \brief operator << Overloading the << operator for debugging information
 * \param os    The output stream
 * \param game  The game object
 * \return  The modified output stream
 */
ostream& operator<<(ostream& os, const Game& game) {
    os << "This is a " << game.numPlayers << " player game." << endl;
    os << *(Board::getBoard());
    return os;
}
