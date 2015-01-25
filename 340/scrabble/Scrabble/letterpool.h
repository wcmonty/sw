#ifndef LETTERPOOL_H
#define LETTERPOOL_H
#include "letter.h"
#include "iostream"
#include <QVector>
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */

using namespace std;

/*!
 * \brief The LetterPool class Holds the letters not already in play
 */
class LetterPool
{

private:
    QVector<Letter*> letter_vector; /*!< The holder for the Letters */

    Letter* removeFromPool(int);
    bool addLetters(char, int);
public:
    LetterPool();
    ~LetterPool();
    Letter* getRandomLetter();
    bool isEmpty();
};

#endif // LETTERPOOL_H
