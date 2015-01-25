#ifndef MOVE_H
#define MOVE_H
#include "player.h"
#include "letter.h"
#include "space.h"

class Player;

/*!
 * \brief The Move class Contains a single move from a Rack to the Board
 */
class Move
{
public:
    Move(Player*, Letter*, int, int, int);

    Player* getPlayer();
    Letter* getLetter();
    int getX();
    int getY();
    int getRackPosition();

    Move* apply();
    Move* unapply();
    Move* finalize();

private:
    Player *player;     /*!< The Player who made the move */
    Letter *letter;     /*!< The Letter */
    int rackPosition;   /*!< The position on the rack it came from */
    int boardX;         /*!< The x position on the board */
    int boardY;         /*!< The y position on the board */

};

#endif // MOVE_H
