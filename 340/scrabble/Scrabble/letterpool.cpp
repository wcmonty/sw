#include "letterpool.h"


/*!
 * \brief LetterPool Constructor
 */
LetterPool::LetterPool()
{
    srand (time(NULL));

    addLetters('a',9);
    addLetters('b',2);
    addLetters('c',2);
    addLetters('d',4);
    addLetters('e',12);
    addLetters('f',2);
    addLetters('g',3);
    addLetters('h',2);
    addLetters('i',9);
    addLetters('j',1);
    addLetters('k',1);
    addLetters('l',4);
    addLetters('m',2);
    addLetters('n',6);
    addLetters('o',8);
    addLetters('p',2);
    addLetters('q',1);
    addLetters('r',6);
    addLetters('s',4);
    addLetters('t',6);
    addLetters('u',4);
    addLetters('v',2);
    addLetters('w',2);
    addLetters('x',1);
    addLetters('y',2);
    addLetters('z',1);
    addLetters(' ',2);

    if (letter_vector.size() != 100){
        cout << "Invalid Letter Pool Construction. Letter count: "
             << letter_vector.size() << endl;
    }
}

/*!
 * \brief LetterPool Destructor
 */
LetterPool::~LetterPool()
{
    while(!letter_vector.empty()){
        delete letter_vector.back();
        letter_vector.pop_back();
    }
}

/*!
 * \brief LetterPool::isEmpty, checks if the letter pool has letters left
 * \return True if the letter pool is empty
 */
bool LetterPool::isEmpty()
{
    return letter_vector.isEmpty();
}

/*!
 * \brief LetterPool::addLetters() adds characters to the letter pool.
 * \param letter what letter to add
 * \param count The count of letters to add
 * \return True if addition was succesful
 */
bool LetterPool::addLetters(char letter, int count)
{
    Letter *temp;

    for(int i = 0; i < count; i++){
        temp = new Letter(letter);
        letter_vector.push_back(temp);
    }
    return true;
}

/*!
 * \brief LetterPool::getRandomLetter() returns a random letter from the pool,
 * removing it from the pool
 * \returns Letter* to the random letter
 */
Letter* LetterPool::getRandomLetter()
{
    return removeFromPool( rand() % letter_vector.size());
}

/*!
 * \brief Letter::removeFromPool, removes a single letter from the letter vector
 * \param i Index of the letter to be removed
 * \return Letter* to the removed letter
 */
Letter* LetterPool::removeFromPool(int i)
{
    Letter* temp = letter_vector[i];
    letter_vector.remove(i);

    return temp;
}
