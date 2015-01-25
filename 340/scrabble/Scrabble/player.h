#ifndef PLAYER_H
#define PLAYER_H

#include <QString>
#include <vector>
#include "letter.h"
#include "dictionary.h"
#include "board.h"
#include "letterpool.h"
#include "play.h"

static const int MAXTILESINHAND = 7;
class Board;
using namespace std;

/*!
 * \brief The Player class Abstract class representing a Player
 */
class Player
{
protected:
    QString name;               /*!< The Player's name */
    vector<Letter*> letters;    /*!< The Letters the Player has */
    unsigned int score;         /*!< The Player's score */
public:
    Player(QString);
    virtual ~Player();

    virtual bool isHumanPlayer();
    virtual bool isAIPlayer();

    Player* removeLetter(Letter*);
    Player* clearLetters();
    Player* getNewLetters(LetterPool*);
    QString* getLettersAsQstring();
    Letter* getLetter(int);
    void fillLetters(LetterPool*);
    int getLetterCount();
    size_t addLetter(Letter *letter);

    QString getName();

    int addScore(int);
    void clearScore();
    int getScore();

    friend ostream& operator<<(ostream& os, const Player& player);
};

#endif // PLAYER_H
