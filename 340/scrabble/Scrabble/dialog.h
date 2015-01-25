#ifndef DIALOG_H
#define DIALOG_H
#include <QDialog>
#include <QMenuBar>
#include <QGroupBox>
#include <QTextEdit>
#include <QLabel>
#include <QLineEdit>
#include <QDialogButtonBox>
#include "dictionary.h"
#include "dictionaryloader.h"
#include "humanplayer.h"
#include "aiplayer.h"
#include "game.h"
#include "rack.h"

/*!
 * \brief The Dialog class Main UI class
 */
class Dialog : public QDialog
{
    Q_OBJECT
public:
    Dialog();
    ~Dialog();
    void setupGame();
    void setupDialog();

private:
    enum { NumButtons = 7 };

    QMenuBar *menuBar;              /*!< The menu bar */
    QGroupBox *horizontalGroupBox;  /*!< A horizontal group box */
    QGroupBox *gridGroupBox;        /*!< A grid group box */
    QGroupBox *labelGroupBox;       /*!< A label group box */

    QPushButton *cancel;            /*!< The cancel button */
    QPushButton *play;              /*!< The play button */
    QPushButton *pass;              /*!< The pass button */

    QMenu *fileMenu;                /*!< The file menu */
    QAction *newGameAction;         /*!< Action when the user chooses a new game */
    QAction *exitAction;            /*!< Action when the user chooses to exit */

    Board *board;                   /*!< The Board */
    Rack *rack;                     /*!< The Rack */
    Game *game;                     /*!< The Game */
    Dictionary *dictionary;         /*!< The Dictionary */
    vector<Player*> players;        /*!< The Players */
    short int player_cnt;           /*!< The number of Players */

    void createMenu();
    void setupPlayers(int);
    void createHorizontalGroupBox();
    void createGridGroupBox();
    void createFormGroupBox();
    void createLabelGroupBox();
    void loadDictionary();

private slots:
     void on_newGame_selected();
     void on_playerChanged();
signals:
     void playerChanged();
};

#endif // DIALOG_H
