#include "player.h"


/*!
 * \brief Player::Player Constructor
 * \param name
 */
Player::Player(QString name)
{
    this->name = name;
    this->score = 0;
    this->letters.reserve(7);
}

/*!
 * \brief Player::~Player Deconstructor
 */
Player::~Player()
{

}

/*!
 * \brief Player::getLetterCount
 * \return Returns the number of letter in players hand
 *         for debugging purposes mostly
 */
int Player::getLetterCount(){
    return (int)letters.size();
}

/*!
 * \brief Player::isHumanPlayer
 * \return True if a human player, false otherwise
 */
bool Player::isHumanPlayer()
{
    return false;
}

/*!
 * \brief Player::isAIPlayer
 * \return True if an AI player, false otherwise
 */
bool Player::isAIPlayer(){
    return false;
}

/*!
 * \brief Player::addLetter Adds a letter to a players set of letters
 * \param letter The letter to add
 * \return  On sucess a positive integer of the number of tiles held,
 *  on failure -1
 */
size_t Player::addLetter(Letter *letter) {
    if (letters.size() < (MAXTILESINHAND - 1)){
        letters.push_back(letter);
        return letters.size();
    }

    return -1;
}

/*!
 * \brief Player::removeLetter Removes the first letter that matches
 * \param letter The letter to remove
 * \return A pointer to the letter object, or NULL if not found
 */
Player* Player::removeLetter(Letter *letter) {
    size_t numLetters = letters.size();
    for(size_t i = 0; i < numLetters; i++){
        if (letters[i] == letter){
            letters.erase(letters.begin() + i);
        }
    }
    return this;
}

/*!
 * \brief Player::getNewLetters Fills the letters after a play
 * \param pool The letter pool
 * \return  this
 */
Player* Player::getNewLetters(LetterPool *pool)
{
    for(int i = RACKSIZE - 1; i >= 0; i--){
        if (Rack::getRack()->getSpace(i)->isPlaced()){
            /// @todo this is a bug , it removes the first letter regardless
            letters.erase(letters.begin() + i);
        }
    }
    fillLetters(pool);
    return this;
}

/*!
 * \brief Player::getName Getter for name
 * \return name
 */
QString Player::getName()
{
    return name;
}

/*!
 * \brief Player::getLetter Getter for letter
 * \param i The index of the letter
 * \return A pointer to the letter or NULL if it
 * doesn't exist
 */
Letter* Player::getLetter(int i){
    if (i >= 0 && (unsigned int)i < letters.size()){
        return letters.at(i);
    }
    return NULL;
}

/*!
 * \brief Player::getLettersAsQstring Gets the letters held as a string
 * \return A QString representing the letters held
 */
QString* Player::getLettersAsQstring(){
    size_t numLetters = letters.size();
    QString *qstring = new QString;
    for(size_t i = 0; i < numLetters; i++){
        qstring->push_back(*(letters[i]->asQCharPtr()));
    }
    return qstring;
}

/*!
 * \brief Player::addScore Adds to a player's score
 * \param newScore The amount to add
 * \return The modified score
 */
int Player::addScore(int newScore) {
    this->score += newScore;

    return this->score;
}

/*!
 * \brief Player::clearScore Clears the Player's score
 */
void Player::clearScore()
{
    this->score = 0;
}

/*!
 * \brief Player::getScore Gets a player's score
 * \return The player's score
 */
int Player::getScore() {
    return this->score;
}

/*!
 * \brief Player::Requests for his letters to be filled out
 *
 */
void Player::fillLetters(LetterPool* pool){

    while(!pool->isEmpty() && letters.size() < MAXTILESINHAND)
    {
           letters.push_back(pool->getRandomLetter());
    }
}

/*!
 * \brief Player::clearLetters Clears the player's letters
 * \return this
 */
Player* Player::clearLetters(){
    while(!letters.empty()){
        delete letters.back();
        letters.pop_back();
    }
    return this;
}

/*!
 * \brief operator << Overloaded operator for Player&
 * \param os    The ostream
 * \param player    The player
 * \return      The modified ostream
 */
ostream& operator<<(ostream& os, const Player& player) {
    for(unsigned int i = 0; i < player.letters.size(); i++) {
        os << *(player.letters[i]);
    }
    return os;
}
