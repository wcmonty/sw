#include "move.h"

/*!
 * \brief Move::Move Constructor
 * \param player    The player
 * \param letter    The letter
 * \param rackPosition  The position in the rack
 * \param boardX    The x position on the board
 * \param boardY    The y position on the board
 */
Move::Move(Player* player, Letter *letter, int rackPosition, int boardX, int boardY){
    this->player = player;
    this->letter = letter;
    this->rackPosition = rackPosition;
    this->boardX = boardX;
    this->boardY = boardY;
}

/*!
 * \brief Move::getX Getter for boardX
 * \return boardX
 */
int Move::getX()
{
    return boardX;
}

/*!
 * \brief Move::getY Getter for bordY
 * \return boardY
 */
int Move::getY()
{
    return boardY;
}

/*!
 * \brief Move::getRackPosition Gets the position this letter draws from, from the rack.
 * \return rackposition.
 */
int Move::getRackPosition()
{
    return rackPosition;
}

/*!
 * \brief Move::getPlayer Getter for player
 * \return player
 */
Player* Move::getPlayer()
{
    return player;
}

/*!
 * \brief Move::getLetter Getter for Letter
 * \return letter
 */
Letter* Move::getLetter()
{
    return letter;
}

/*!
 * \brief Move::apply Applies to the board
 * \return this
 */
Move* Move::apply()
{
    Space *boardSpace = Board::getBoard()->spaces[boardX][boardY];
    if(boardSpace->isInactive()){
        Space *rackSpace = Rack::getRack()->getSpace(rackPosition);
        boardSpace->setLetter(rackSpace->getLetter());
        rackSpace->setPlaced();
        boardSpace->setNew();
    }
    return this;
}

/*!
 * \brief Move::unapply Unapplies from the board
 * \return this
 */
Move * Move::unapply()
{
    Space *boardSpace = Board::getBoard()->spaces[boardX][boardY];
    if(!boardSpace->isInactive()){
        Space *rackSpace = Rack::getRack()->getSpace(rackPosition);
        boardSpace->setLetter(NULL);
        rackSpace->setInactive();
        boardSpace->setInactive();
    }
    return this;
}

/*!
 * \brief Move::finalize Finalizes the board
 * \return this
 */
Move* Move::finalize()
{
    Board::getBoard()->spaces[boardX][boardY]->setOnBoard();

    return this;
}
