#include "humanplayer.h"

/*!
 * \brief HumanPlayer::~HumanPlayer Destructor
 */
HumanPlayer::~HumanPlayer() {
    while (!letters.empty()){
        delete letters.back();
        letters.pop_back();
    }
}

/*!
 * @overload
 * \brief HumanPlayer::isHumanPlayer
 * \return True if player is a human, false otherwise
 */
bool HumanPlayer::isHumanPlayer(){
    return true;
}
