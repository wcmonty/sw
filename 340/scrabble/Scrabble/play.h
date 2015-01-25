#ifndef PLAY_H
#define PLAY_H
#include "player.h"
#include "letter.h"
#include "board.h"
#include "move.h"
#include <QList>

class Move;     // Forward declaration needed for compilation on G++
class Player;   // Forward declaration needed for compilation on G++
class Board;    // Forward declaration needed for compilation on G++

/*!
 * \brief The Play class Wrapper for a set of Moves that make up a Play
 */
class Play
{
private:
    QList <Move*> *moves;   /*!< Container for the moves */
    Player *player;         /*!< The Player that made the moves */
    int value;              /*!< The value of the play */

    bool validate_right(int x_start, int y, Dictionary &dict, Board *myboard);
    bool validate_down (int y_start, int x, Dictionary &dict, Board *myboard);

public:
    Play(QList<Move*>*, Player*);
    Play();
    Play(const Play& other);
    ~Play();

    bool isEmpty();
    bool validate(Dictionary &dict);

    Play* addMove(Player*, Move*);
    Play* applyMoves();
    Play* unapplyMoves();
    Play* finalizeMoves();
    Play* clearMoves();
    Play* clearLetter(Letter*);
    int size();
    const class Player* getPlayer();
    int getValue();
    QString getCharArray();

    friend class AIPlayer;
};

#endif // PLAY_H
