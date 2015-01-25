#ifndef SPACE_H
#define SPACE_H
#include <iostream>
#include <QString>
#include <QObject>
#include <QPushButton>
#include "letter.h"

using namespace std;

static const int BUTTONSIZE = 35;       /*!< The size in pixels of the square Button */

/// @todo Make these colors beautiful
static const QString ACTIVECOLOR = "gold";      /*!< The color of an active space */
static const QString NEWCOLOR = "gold";         /*!< The color of a new space */
static const QString ONBOARDCOLOR = "wheat";    /*!< The color of a space that has been put on the board permanently */
static const QString PLACEDCOLOR = "lightgrey"; /*!< The color of a space in the rack that has been placed on the board */
static const QString UNPLAYABLECOLOR = "grey";  /*!< The color of a space in the rack that is unplayable because it contains
                                                  no Letter */

enum STATE {INACTIVE, ACTIVE, PLACED, NEW, ONBOARD, UNPLAYABLE};
                                                /*!< Possible states of a Space */

/*!
 * \brief The Space class A visual representation of a space on the board that may or may not be
 * filled with a Letter
 */
class Space : public QPushButton {
    Q_OBJECT

private:
    Letter* letter;         /*!< The Letter, if it exists */
    int letterMultiplier;   /*!< The letter multiplier for the space */
    int wordMultiplier;     /*!< The word multiplier for the space */
    bool startSpace;        /*!< Flag whether this is the space in the very center of the board */
    QString label;          /*!< The label shown to the user */
    QString color;          /*!< The default color of the Space */
    int x;                  /*!< The x position on the board or in the rack */
    int y;                  /*!< The y position on the board (or -1 if in the rack */
    int state;              /*!< The state of the space */

    Space* setupDefaults();
public:
    Space(int, int, int, int, QString, QString);
    Space(int);
    ~Space();
    Space(const Space& other);

    Space* setLetter(Letter*);
    Space* setStartSpace(bool);
    Space* clear();
    Space* setColor(QString color);
    Letter* getLetter();
    QString getColor();

    int getValue();
    int getLetterMultiplier();
    int getWordMultiplier();
    int getX();
    int getY();
    bool isStartSpace();

    bool isInactive();
    bool isActive();
    bool isNew();
    bool isPlaced();
    bool isBlank();
    bool isOnBoard();

    Space* setInactive();
    Space* setActive();
    Space* setNew();
    Space* setPlaced();
    Space* setOnBoard();

    friend ostream& operator<<(ostream& os, const Space& space);
    friend class AIPlayer;

public slots:
     void on_clicked();
};

#endif // SPACE_H
