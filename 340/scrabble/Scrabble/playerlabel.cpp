#include "playerlabel.h"

/*!
 * \brief PlayerLabel::PlayerLabel Constructor
 * \param player
 */
PlayerLabel::PlayerLabel(Player *player) :
    QLabel()
{
    this->player = player;
}

/*!
 * \brief PlayerLabel::on_playerChanged Handes playerChanged events
 */
void PlayerLabel::on_playerChanged()
{
    if (player == Board::getBoard()->getGame()->currentPlayer()){
        updateText();
        setActive();
    }
    else {
        updateText();
        setInactive();
    }
}

/*!
 * \brief PlayerLabel::setActive Sets the player as active
 * \return this
 */
PlayerLabel* PlayerLabel::setActive()
{
    updateText();
    this->setStyleSheet("QLabel { color : red; }");
    return this;
}

/*!
 * \brief PlayerLabel::setInactive Set the player as inactive
 * \return this
 */
PlayerLabel* PlayerLabel::setInactive()
{
    updateText();
    this->setStyleSheet("QLabel { color : back; }");
    return this;
}

/*!
 * \brief PlayerLabel::updateText Updates the text
 * \return this
 */
PlayerLabel* PlayerLabel::updateText()
{
    if (player != NULL) {
        setText(player->getName() + "               " + QString::number(player->getScore()));
    }
    return this;
}
