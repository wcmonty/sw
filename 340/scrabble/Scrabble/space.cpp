#include <stdlib.h>
#include "space.h"
#include "rack.h"

/*!
 * \brief Space::Space Default constructor for space object
 */
Space::Space(int x)
{
    this->x = x;
    this->y = -1;
    this->letterMultiplier = 1;
    this->wordMultiplier = 1;
    this->startSpace = false;
    this->color = "white";

    setStyleSheet("background-color: white; border-width: 0 px");
    setText("");
    setupDefaults();
}

/*!
 * \brief Space::Space Constructor
 * \param x The x position of this space
 * \param y The y position of this space
 * \param letterMultiplier The letter multiplier
 * \param wordMultiplier    The word multiplier
 * \param label The default label for this space
 * \param color The default color for this space
 */
Space::Space(int x, int y, int letterMultiplier, int wordMultiplier,
             QString label, QString color) : QPushButton(NULL)
{
    this->x = x;
    this->y = y;
    this->letterMultiplier = letterMultiplier;
    this->wordMultiplier = wordMultiplier;
    this->label = label;
    this->color = color;

    setStyleSheet("background-color: " + color + "; border-width: 0 px; color : black");
    setText(label);
    setupDefaults();
}

/*!
 * \brief Space::setupDefaults Sets up default attributes (to be called from Constructor
 * \return this
 */
Space* Space::setupDefaults()
{
    connect(this, SIGNAL(clicked()),
            this, SLOT(on_clicked()));
    this->letter = NULL;
    this->setMinimumHeight(BUTTONSIZE);
    this->setMinimumWidth(BUTTONSIZE);
    this->setMaximumHeight(BUTTONSIZE);
    this->setMaximumWidth(BUTTONSIZE);
    this->setContentsMargins(0,0,0,0);
    this->state = INACTIVE;
    return this;
}

/*!
 * \brief Space::~Space Destructor
 */
Space::~Space(){
    if (this->letter != NULL){
        delete (this->letter);
    }
}

/*!
 * \brief Space::Space Copy constructor
 * \param other The other space
 */
Space::Space(const Space& other) : QPushButton(NULL)
{
    this->letter=new Letter( *(other.letter) );
    this->letterMultiplier=other.letterMultiplier;
    this->wordMultiplier=other.wordMultiplier;
    this->startSpace=other.startSpace;
}


/*!
 * \brief Space::setStartSpace Sets a starting space
 * \param value
 * \return
 */
Space* Space::setStartSpace(bool value)
{
    this->startSpace = value;
    return this;
}

/*!
 * \brief Space::setLetter Setter for letter
 * \param letter The letter to set
 * \return this
 */
Space* Space::setLetter(Letter *letter) {
    this->letter = letter;
    if (letter != NULL){
        this->setText(QString (*(letter->asQCharPtr())).toUpper() + "\n" + QString::number(letter->getValue()));
    }
    else {
        this->state = UNPLAYABLE;
        setColor(UNPLAYABLECOLOR);
    }
    return this;
}

/*!
 * \brief Space::getLetter Getter for letter
 * \return letter
 */
Letter* Space::getLetter()
{
    return this->letter;
}

/*!
 * \brief Space::getValue Get the value of the space
 * \return The multiplier times the letter value, or -1 if no letter set
 */
int Space::getValue(){
    if (this->letter != NULL){
        return (letterMultiplier * this->letter->getValue());
    }
    else {
        return -1;
    }
}

/*!
 * \brief Space::clearLetter Clears the letter
 * \return A pointer to the cleared letter, or NULL if none was set
 */
Space* Space::clear() {
    this->letter = NULL;
    setText(label);
    setColor(color);
    state = INACTIVE;
    return this;
}

/*!
 * \brief Space::getLetterMultiplier Getter for letter multiplier
 * \return The letter multiplier
 */
int Space::getLetterMultiplier() {
    return letterMultiplier;
}

/*!
 * \brief Space::getWordMultiplier Getter for word multiplier
 * \return The word multiplier
 */
int Space::getWordMultiplier()
{
    return wordMultiplier;
}

/*!
 * \brief Space::setColor Sets the color
 * \param color The color to set
 * \return this
 */
Space* Space::setColor(QString color)
{
    setStyleSheet("background-color: " + color  + "; border-width: 0 px; color: black");
    return this;
}

/*!
 * \brief Space::getColor Getter for color
 * \return The QString representation of the color
 */
QString Space::getColor()
{
    return color;
}

/*!
 * \brief Space::setActive Sets the space as active
 * \return this
 */
Space* Space::setActive()
{
    setStyleSheet("background-color: " + ACTIVECOLOR + "; border-width: 0 px; color: black");
    this->state = ACTIVE;
    return this;
}

/*!
 * \brief Space::setInactive Sets the space as inactive
 * \return this
 */
Space* Space::setInactive()
{
    setStyleSheet("background-color: " + this->color + "; border-width: 0 px; color: black");
    this->state = INACTIVE;
    return this;
}

/*!
 * \brief Space::setNew Sets the space as new
 * \return this
 */
Space* Space::setNew()
{
    setStyleSheet("background-color: " + NEWCOLOR + "; border-width: 0 px; color: black");
    this->state = NEW;
    return this;
}

/*!
 * \brief Space::setPlaced Sets the space as placed
 * \return this
 */
Space* Space::setPlaced()
{
    setStyleSheet("background-color: " + PLACEDCOLOR + "; border-width: 0 px; color: black");
    this->state = PLACED;
    return this;
}

/*!
 * \brief Space::setOnBoard Sets the space as on the board
 * \return this
 */
Space* Space::setOnBoard()
{
    setStyleSheet("background-color: " + ONBOARDCOLOR + "; border-width: 0 px; color: black");
    this->state = ONBOARD;
    return this;
}

/*!
 * \brief Space::isStartSpace Is the space the start space
 * \return true if yes, false if not
 */
bool Space::isStartSpace()
{
    return startSpace;
}

/*!
 * \brief Space::isPlaced Is the space placed
 * \return true if yes, false if not
 */
bool Space::isPlaced()
{
    return (this->state == PLACED);
}

/*!
 * \brief Space::isActive Is the space active
 * \return  true if yes, false if not
 */
bool Space::isActive()
{
    return (this->state == ACTIVE);
}

/*!
 * \brief Space::isInactive Is the space inactive
 * \return  true if yes, false if not
 */
bool Space::isInactive()
{
    return (this->state == INACTIVE);
}

/*!
 * \brief Space::isNew Is the space new
 * \return  true if yes, false if not
 */
bool Space::isNew()
{
    return (this->state == NEW);
}

/*!
 * \brief Space::isOnBoard Is the space on the board
 * \return  true if yes, false if not
 */
bool Space::isOnBoard()
{
    return (this->state == ONBOARD);
}

/*!
 * \brief Space::isBlank Is the space blank
 * \return  true if yes, false if not
 */
bool Space::isBlank()
{
    return (this->letter == NULL);
}

/*!
 * \brief Space::on_clicked Handles on_cicked events
 * @todo This method is getting long and messy - we should refactor
 */
void Space::on_clicked()
{
    if (y == -1) {  // This is a rack space
        if (this->state == INACTIVE) {
            Rack::getRack()->inactivateOtherSpaces(x);
            setActive();
        }
        else if (this->state == ACTIVE){
            setInactive();
        }
    }
    else {  // This is a board space
        if (this->state == INACTIVE && Rack::getRack()->isActive()){
            Board::getBoard()->moveLetterToBoard(Rack::getRack()->getActiveIndex(), x, y);
        }
        else if (this->state == NEW && letter != NULL) {
            if (letter->isWildcard()){
                if (letter->isAMatch('z')){
                    setInactive();
                    letter->setLetter(' ');
                    Board::getBoard()->getGame()->currentPlay()->clearLetter(letter);
                    Rack::getRack()->inactivateByLetter(letter);
                    clear();
                }
                else {
                    if (letter->isAMatch(' ')){
                        letter->setLetter('a');
                    }
                    else {
                        letter->setLetter(letter->asQCharPtr()->toLatin1() + 1);
                    }
                    setLetter(letter);
                }
            }
            else {
                setInactive();
                Board::getBoard()->getGame()->currentPlay()->clearLetter(letter);
                Rack::getRack()->inactivateByLetter(letter);
                clear();
            }
        }
    }
}

/*!
 * \brief Space::getX Getter for x
 * \return x
 */
int Space::getX(){
    return this->x;
}

/*!
 * \brief Space::getY Getter for y
 * \return y
 */
int Space::getY(){
    return this->y;
}

/*!
 * \brief operator << Overloads the << operator for debugging information
 * \param os    The output stream
 * \param space The space object
 * \return      The modified output stream
 */
ostream& operator<<(ostream& os, const Space& space) {
    os << "[";
    if (space.letter == NULL){
        if (space.letterMultiplier != 1){
            os << space.letterMultiplier << 'L';
        }
        else if (space.wordMultiplier != 1){
            os << space.wordMultiplier << 'W';
        }
        else if (space.startSpace){
            os << "**";
        }
        else {
            os << "  ";
        }
    }
    else {
        os << " " << space.letter->asQCharPtr()->toLatin1();
    }
    os << "]";
    return os;
}
