#include "play.h"

/*!
 * \brief Play class constructor
 */
Play::Play()
{
    this->moves = new QList<Move*>();
    this->value = 0;
    this->player = 0;
}

/*!
 * \brief Play::Play Constructor
 * \param moves     A list of moves
 * \param player    The player
 */
Play::Play(QList<Move*> * moves, Player* player)
{
    this->moves = new QList<Move*>();
    this->value = 0;
    for(int i = 0; i < moves->size(); i++) {
        this->moves->insert(i,new Move(*moves->at(i)));
        this->value += this->moves->at(i)->getLetter()->getValue();
    }
    // this->moves = moves;
    this->player = player;
}

/*!
 * \brief Play destructor
 */
Play::~Play ()
{
    clearMoves();
}

/*!
 * \brief Play::clearMoves removes all elements from the play list
 */
Play* Play::clearMoves()
{
    while (!moves->empty()){
        delete (moves->back());
        moves->pop_back();
    }
    return this;
}

/*!
 * \brief Play::clearLetter Clears a move by the Letter* it contains
 * \param letter The letter to find by
 * \return this
 */
Play* Play::clearLetter(Letter *letter)
{
   for (int i = 0; i < moves->size(); i++){
        Move *move = moves->at(i);
        if (letter == move->getLetter()){
            moves->removeAt(i);
        }
    }
    return this;
}


/*!
 * \brief Play::addMove, adds a single move to the list of plays
 * \param player  reference to the player that made the move
 * \param move  reference to the object of type Move
 * \return this
 */
Play* Play::addMove(Player *player, Move *move){
    this->player = player;
    moves->push_back(move);
    return this;
}

/*!
 * \brief Play::finalizeMoves Permanently adds each move of the
 * play to the board
 */
Play* Play::finalizeMoves()
{
    for (int i = 0; i < moves->size(); i++){
        moves->at(i)->finalize();
    }

    return this;
}

/*!
 * \brief Play::applyMoves temporarily applies each move of the
 * play to the board
 */
Play* Play::applyMoves()
{
    for (int i = 0; i < moves->size(); i++){
        moves->at(i)->unapply();
    }

    return this;
}

/*!
 * \brief Play::unapplyMoves does the opposite of the temporary
 * placement, and inactivates the spaces.
 */
Play * Play::unapplyMoves()
{
    for (int i = 0; i < moves->size(); i++){
        moves->at(i)->getX();
        moves->at(i)->getY();
    }

    return this;
}

/*!
 * \brief Play::isEmpty, checks whether the move vector has any elements
 * \return  true if the move vector is empty
 */
bool Play::isEmpty(){
    return moves->isEmpty();
}

/*!
 * \brief Play::size, checks the number of moves in a play
 * \return number of elements in a move vector
 */
int Play::size()
{
    return moves->size();
}

/*!
 * @todo: Fix, needs to also go the other way!
 * \brief Play::validate_right Validates a Play to the right
 * \param x_start   The start of the x position
 * \param y         The y position
 * \param dict      The dictionary
 * \param myboard   The board
 * \return
 */
bool Play::validate_right(int x_start, int y, Dictionary &dict, Board * myboard)
{
    QString rightcheck = "";
    for(int firstposx=x_start ; firstposx >= 0 && !myboard->spaces[firstposx][y]->isBlank(); firstposx--) {
        rightcheck += *(myboard->spaces[firstposx][y]->getLetter()->asQCharPtr());
    }
    return dict.isWord(rightcheck);
}

/*!
 * @todo: Fix, needs to also go the other way!
 * \brief Play::validate_down Validates a Play downward
 * \param y_start   The start of the y position
 * \param x         The x position
 * \param dict      The dictionary
 * \param myboard   The board
 * \return
 */
bool Play::validate_down(int y_start, int x, Dictionary &dict, Board * myboard)
{
    QString downcheck = "";
    for(int firstposy=y_start ; firstposy >= 0 && !myboard->spaces[x][firstposy]->isBlank(); firstposy--) {
        downcheck  += *(myboard->spaces[x][firstposy]->getLetter()->asQCharPtr());
    }
    return dict.isWord(downcheck);
}

/*!
 * @todo: Fix, needs to _actually work_.
 * \brief Play::validate will return whether or not this is a valid play on the board.
 * \return true or false
 */
bool Play::validate(Dictionary& dict)
{
    // We assume moves are unique!
    Board * myboard = Board::getBoard();
    bool xmove = true;
    bool ymove = true;

    if(this->isEmpty())
        return false;

    int anchorposx = moves->at(0)->getX();
    int anchorposy = moves->at(0)->getY();
    int lowx = anchorposx;
    int lowy = anchorposy;
    int highx = anchorposx;
    int highy = anchorposy;

    for(QList<Move*>::Iterator it = (moves->begin()+1); it < moves->end(); it++)
    {
        // It want to move it move it...
        Move * move = *it;

        if(myboard->spaces[move->getX()][move->getY()]->isBlank() == false)
            return false;

        xmove = (move->getX() == anchorposx);
        ymove = (move->getY() == anchorposy);

        // If you didn't move along either x or y, you're doing it wrong.
        // If you did move along both x _and_ y, you're doing it wrong as well.
        if(xmove == ymove)
            return false;

        if( move->getX() > highx)
            highx = move->getX();
        if( move->getX() < lowx)
            lowx = move->getX();

        if( move->getY() > highy)
            highy = move->getY();
        if( move->getY() < lowy)
            lowy = move->getY();
    }

    // Now, first we check wether or not the word in the direction we put the tiles, is a word.
    // Doing it this way makes it easier to do sideways checks.
    if(xmove) {
        validate_right(highx, highy, dict, myboard);
        for(int x = lowx; x < highx; x++)
            validate_down(x,highy,dict,myboard);
    }
    if(ymove) {
        validate_down(highy, highx, dict, myboard);
        for(int y = lowy; y < highy; y++)
            validate_right(highx,y,dict,myboard);
    }

    return true;
}

/*!
 * \brief Play::Play Copy Constructor
 * \param other Other Play
 */
Play::Play(const Play& other) {
    this->player = other.player;
    this->value = other.value;
    this->moves = new QList<Move*>();
    int i = 0;
    for(QList<Move*>::ConstIterator it = other.moves->cbegin(); it != other.moves->cend(); it++)
    {
        Move * curmove = *it;
        this->moves->insert(i,curmove);
        i++;
    }
}

/*!
 * \brief Play::getValue, checks the value of the current play
 * \return int with the value of the play
 */
int Play::getValue()
{
    return value;
}

/*!
 * \brief Play::getCharArray gets the Play's moves in the form of a string.
 * \return a QString representing this play's _moves_.
 */
QString Play::getCharArray()
{
    QString result = "";
    for(QList<Move*>::Iterator moveit = moves->begin(); moveit != moves->end(); moveit++)
    {
        Move * curmove = *moveit;
        result += curmove->getLetter()->asQCharPtr()->toLatin1();
    }
    return result;
}

/*!
 * \brief Play::getPlayer
 * \return Player* of the player making a play
 */
const Player* Play::getPlayer()
{
    return player;
}
