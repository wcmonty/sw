#include "rack.h"

bool Rack::isSet = false;
Rack* Rack::rack = NULL;

/*!
 * \brief Rack::Rack Constructor
 * \param parent The parent
 */
Rack::Rack(QObject *parent) :
    QObject(parent)
{
    for (int i = 0; i < RACKSIZE; i++){
        spaces[i] = new Space(i);
    }
}

/*!
 * \brief Rack::getRack Gets the rack or creates a new one
 * \return The rack
 */
Rack* Rack::getRack()
{
    if(isSet){
        return rack;
    }
    isSet = true;
    rack = new Rack();
    return rack;
}

/*!
 * \brief Rack::~Rack Destructor
 */
Rack::~Rack()
{
    for (int i = 0; i < RACKSIZE; i++){
        delete(spaces[i]);
    }
}

/*!
 * \brief Rack::setSpace Setter for a space
 * \param i     The position to set
 * \param space The space to set
 * \return  this
 */
Rack* Rack::setSpace(int i, Space* space)
{
    spaces[i] = space;
    return this;
}

/*!
 * \brief Rack::inactivateOtherSpaces Inactivates other spaces in
 * the rack.
 * \param x The position not to inactivate
 * \return this
 */
Rack* Rack::inactivateOtherSpaces(int x)
{
    for (int i = 0; i < RACKSIZE; i++){
        if (x != i && spaces[i]->isActive()){
            spaces[i]->setInactive();
        }
    }
    return this;
}

/*!
 * \brief Rack::inactivateByLetter Inactivates a space by the
 * letter is points to
 * \param letter The letter used to compare
 */
void Rack::inactivateByLetter(Letter* letter)
{
    for (int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->getLetter() == letter){
            spaces[i]->setInactive();
        }
    }
}

/*!
 * \brief Rack::refresh Refreshes the rack to show the rack of the
 * current player
 * \param game The game
 * \return this
 */
Rack* Rack::refresh(Game *game)
{
    for (int i = 0; i < RACKSIZE; i++){
        spaces[i]->clear();
        spaces[i]->setLetter(game->currentPlayer()->getLetter(i));
    }
    return this;
}

/*!
 * \brief Rack::isActive Is the space active
 * \return true if active
 */
bool Rack::isActive()
{
    for(int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->isActive()){
            return true;
        }
    }
    return false;
}

/*!
 * \brief Rack::getActiveIndex Gets the index of the currently
 * active space
 * \return the index
 */
int Rack::getActiveIndex()
{
    for(int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->isActive()){
            return i;
        }
    }
    return -1;
}

/*!
 * \brief Rack::getSpace Gets the space at an index
 * \param i The index
 * \return The space at i
 */
Space* Rack::getSpace(int i)
{
    return spaces[i];
}

/*!
 * \brief Rack::getPos Gets the position of the Rack based on the letter address provided.
 * \param L     The letter.
 * \return the integer position on the rack. -1 if it doesn't exist.
 */
int Rack::getPos(Letter * L)
{
    for(int i = 0; i < 7; i++)
        if(this->spaces[i]->getLetter() == L)
            return i;
    return -1;
}

/*!
 * \brief Rack::deleteLetter Deletes a letter from the
 * rack
 * \param letter The letter to conpare to the rack
 * \return this
 */
Rack* Rack::deleteLetter(Letter *letter)
{
    for (int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->getLetter() == letter){
            spaces[i]->clear();
        }
    }
    return this;
}

/*!
 * \brief Rack::on_cancelButton_clicked Handles the cancelButton_clicked
 * events
 */
void Rack::on_cancelButton_clicked()
{
    for (int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->isPlaced()) {
            spaces[i]->setInactive();
        }
    }
}

/*!
 * \brief Rack::on_invalidMove Handles invalideMove events
 */
void Rack::on_invalidMove()
{
    for (int i = 0; i < RACKSIZE; i++){
        if (spaces[i]->isPlaced()) {
            spaces[i]->setInactive();
        }
    }
}
