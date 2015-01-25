#ifndef BOARD_H
#define BOARD_H
#include <vector>
#include <iostream>
#include <QObject>
#include <iomanip>
#include "space.h"
#include "rack.h"
#include "game.h"
#include "play.h"

using namespace std;
class Rack;
class Game;

static const int BOARDSIZE = 15;  /*!< The size of the board (it is 15 x 15 spaces */

static const QString TRIPLEWORDCOLOR = "pink";              /*!< The color for triple word spaces */
static const QString TRIPLELETTERCOLOR = "lightblue";       /*!< The color for triple letter spaces */
static const QString DOUBLEWORDCOLOR = "mistyrose";         /*!< The color for double word spaces */
static const QString DOUBLELETTERCOLOR = "lightskyblue";    /*!< The color for double letter spaces */

/*!
 * \brief The Board class Singleton that represents a playing board
 */
class Board : public QObject
{
Q_OBJECT
private:
    static Board* board;        /*!< The playing board */
    static bool isSet;          /*!< True if the board has been set */

    Game *game;                 /*!< The game */
    bool active;                /*!< Indicator that the board has an active space */
    bool firstPlayed;           /*!< Indicator that the first play has been made */

    Board();
    Board* setupSpecialSpaces();
    Board* setup3W();
    Board* setup2W();
    Board* setup3L();
    Board* setup2L();
    Board* setupStart();
    Board* setupPlainSpaces();
    Board* connectSpaces();


    bool validate();
    bool startCovered();
    bool hasNew();
    bool sameRowOrColumn();
    bool areValidWords();
    bool noRowBlanks(int, int);
    bool noColumnBlanks(int, int);
    bool mustTouchRow(int, int);
    bool mustTouchColumn(int, int);
    bool isTouchingOnBoard(int, int);
    bool validateWordHorizontal(int, int);
    bool validateWordVertical(int, int);

    int scoreVertical();
    int scoreHorizontal();
    int scoreHorizontalWord(int row, int column);
    int scoreVerticalWord(int row, int column);
public:
    Space *spaces[BOARDSIZE][BOARDSIZE]; /*!< Container for spaces */

    static Board* getBoard();
    ~Board();
    Board* reset();
    Board* setGame(Game*);
    Game* getGame();
    Board* setup();
    Board* inactivateOtherSpaces(int, int);
    int score(Play*);
    void setSpace(int, int, Letter*);
    QString getColor(int, int);
    Board* moveLetterToBoard(int i, int x, int y);
    friend ostream& operator<<(ostream& os, const Board& board);
    friend class AIPlayer;

public slots:
    void on_cancelButton_clicked();
    void on_passButton_clicked();
    void on_playButton_clicked();
signals:
    void boardClicked(int, int);
    void invalidMove();
};

#endif // BOARD_H
