#ifndef GAME_H
#define GAME_H
#include <iostream>
#include "dictionary.h"
#include "player.h"
#include "board.h"
#include "letterpool.h"
#include "play.h"

using namespace std;
class Player;
class Board;
class Play;

static const int MAXPLAYERS = 4;    /*!< The maximum number of players */

/*!
 * \brief The Game class Encapsulates a game
 */
class Game : public QObject
{
    Q_OBJECT
private:
    int turn;                   /*!< The number of the turn */
    LetterPool *pool;           /*!< The pool of letters */
    vector<Player*> players;    /*!< The container for the Players */
    vector<Play*> plays;        /*!< The container for the Plays */
    int numPlayers;             /*!< The number of players */

public:
    Dictionary *dictionary;     /*!< The Dictionary */

    Game(vector<Player*>, Dictionary*);
    ~Game();
    Game* setup();
    Player* currentPlayer();
    Play* currentPlay();
    bool nextTurn();
    Game* getNewLetters();

    friend ostream& operator<<(ostream& os, const Game& game);
signals:
    void playerChanged();
};

#endif // GAME_H
