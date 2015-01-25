#ifndef HUMANPLAYER_H
#define HUMANPLAYER_H
#include "player.h"

/*!
 * \brief The HumanPlayer class Human playable Player
 */
class HumanPlayer : public Player {
    public:
        HumanPlayer(QString s) : Player(s) {}
        ~HumanPlayer();
        Play* play(Board *board);
        virtual bool isHumanPlayer();

};

#endif // HUMANPLAYER_H
