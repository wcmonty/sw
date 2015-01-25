#ifndef LETTER_H
#define LETTER_H
#include <QChar>
#include <iostream>

using namespace std;

/*!
 * \brief The Letter class Encapsulates a Letter (or Tile)
 */
class Letter {
    private:
        QChar letter;       /*!< The letter assigned to this tile */
        unsigned int value; /*!< The numerical value of the tile */
        bool wildcard;      /*!< True if the tile can represent any letter */
    public:
        Letter(QChar);
        unsigned int getValue();
        void setLetter(QChar);
        bool isAMatch(QChar);
        bool isWildcard();
        QChar* asQCharPtr();
        friend ostream& operator<<(ostream& os, const Letter& letter);
};

#endif // LETTER_H
