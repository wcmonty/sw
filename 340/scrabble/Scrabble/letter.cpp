#include <iostream>
#include "letter.h"

/*!
 * \brief Letter::Letter Constructor
 * \param letter The letter to set
 */
Letter::Letter(QChar letter){

    wildcard = false;
    this->letter = letter.toLower();
    switch (this->letter.toLatin1()) {
    case('d'):
    case('g'):
        this->value = 2;
        break;
    case('b'):
    case('c'):
    case('m'):
    case('p'):
        this->value = 3;
        break;
    case('f'):
    case('h'):
    case('v'):
    case('w'):
    case('y'):
       this->value = 4;
       break;
    case('k'):
        this->value = 5;
        break;
    case('j'):
    case('x'):
        this->value = 8;
        break;
    case('q'):
    case('z'):
        this->value = 10;
        break;
    case(' '):
        this->value = 0;
        wildcard = true;
        break;
    default:
        this->value = 1;
        break;
    }
}

/*!
 * \brief Letter::getValue Getter for value
 * \return value
 */
unsigned int Letter::getValue(){
    return (this->value);
}

/*!
 * \brief Letter::setValue Setter for value, only for wildcards
 * \param c The value to set
 * \return this
 */
void Letter::setLetter(QChar c)
{
    if (wildcard){
        letter = c;
    }
}

/*!
 * \brief Letter::isWildcard
 * \return
 */
bool Letter::isWildcard()
{
    return wildcard;
}


/*!
 * \brief Letter::isAMatch Tests if a character is a match to this letter
 * \param c The char to compare
 * \return True if the character is a match, false otherwise
 */
bool Letter::isAMatch(QChar c){
    return this->letter == c;
}

/*!
 * \brief Letter::getLetter Getter for this letter
 * \return this
 */
QChar* Letter::asQCharPtr(){
    return &(this->letter);
}

/*!
 * \brief operator << Overloaded ostream operator
 * \param os        The ostream
 * \param letter    The letter
 * \return          The modified ostream
 */
ostream& operator<<(ostream& os, const Letter& letter) {
    os << letter.letter.toLatin1();
    return os;
}
