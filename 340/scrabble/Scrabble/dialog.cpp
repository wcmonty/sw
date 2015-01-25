#include <QVBoxLayout>
#include <QPushButton>
#include <QFormLayout>
#include <QSpinBox>
#include <QComboBox>
#include "dialog.h"
#include "playerlabel.h"

/*!
 * \brief Dialog::Dialog Constructor
 */
Dialog::Dialog()
{
    loadDictionary();
    setupPlayers(2);

    board = Board::getBoard();
    rack = Rack::getRack();
    setupGame();
    connect(board, SIGNAL(invalidMove()), rack, SLOT(on_invalidMove()));

    setupDialog();
}

/*!
 * \brief Dialog::~Dialog Destructor
 */
Dialog::~Dialog() {
    while(!players.empty()){
        delete players.back();
        players.pop_back();
    }
    delete game;
    delete dictionary;
}

/*!
 * \brief Dialog::setupGame Sets up the game
 */
void Dialog::setupGame()
{
    game = new Game(players, dictionary);
    board->setGame(game);
    rack->refresh(game);
    connect(game, SIGNAL(playerChanged()), this, SLOT(on_playerChanged()));
    emit(playerChanged());
}

/*!
 * \brief Dialog::setupDialog Sets up the dialog
 */
void Dialog::setupDialog()
{
    createMenu();
    createHorizontalGroupBox();
    createGridGroupBox();
    createLabelGroupBox();

    QVBoxLayout *mainLayout = new QVBoxLayout;
    mainLayout->setMenuBar(menuBar);
    mainLayout->addWidget(gridGroupBox);
    mainLayout->addWidget(horizontalGroupBox);
    mainLayout->addWidget(labelGroupBox);

    setLayout(mainLayout);
    setWindowTitle(tr("Words for CS 340 Students"));

    /// @todo this is not great, but the only way
    /// I could disable resizing on Linux
    setFixedSize(580, 700);
}

/*!
 * \brief Dialog::setupPlayers Sets up the players
 * \param num The number of players to set up
 */
void Dialog::setupPlayers(int num)
{
    for (int i = 0; i < num; i++){
        QString *playerName = new QString("Player " + QString::number(i + 1));
        if (i == 0){
            players.push_back(new HumanPlayer(*playerName));
        }
        else {
            // players.push_back(new HumanPlayer(*playerName));
            players.push_back(new AIPlayer(*playerName));
        }
        cout << players.back()->getName().toStdString();
    };
}

/*!
 * \brief Dialog::loadDictionary Loads the dictionary
 */
void Dialog::loadDictionary(){
    dictionary = new Dictionary();
    DictionaryLoader *dictionaryLoader = new DictionaryLoader(dictionary, ":/resources/dictionary.txt");
    dictionaryLoader->load();
    delete dictionaryLoader;
}

/*!
 * \brief Dialog::createMenu Creates the menu
 */
void Dialog::createMenu()
{
    menuBar = new QMenuBar;

    fileMenu = new QMenu(tr("&File"), this);
    newGameAction = fileMenu->addAction(tr("&New Game"));
    exitAction = fileMenu->addAction(tr("E&xit"));
    menuBar->addMenu(fileMenu);

    connect(newGameAction, SIGNAL(triggered()), this, SLOT(on_newGame_selected()));
    connect(exitAction, SIGNAL(triggered()), this, SLOT(accept()));
}

/*!
 * \brief Dialog::createHorizontalGroupBox Creates the rack
 * and buttons
 */
void Dialog::createHorizontalGroupBox()
{
    horizontalGroupBox = new QGroupBox(tr("Player"));
    QHBoxLayout *layout = new QHBoxLayout;
    layout->setContentsMargins(10,10,3,3);
    layout->setSpacing(0);

    for (int i = 0; i < RACKSIZE; ++i) {
        layout->addWidget(rack->getSpace(i));
    }
    layout->insertStretch(7);
    play = new QPushButton(tr("Play"));
    layout->addWidget(play);
    pass = new QPushButton(tr("Pass"));
    layout->addWidget(pass);
    cancel = new QPushButton(tr("Cancel"));
    layout->addWidget(cancel);

    horizontalGroupBox->setLayout(layout);

    connect(play, SIGNAL(clicked()), Board::getBoard(), SLOT(on_playButton_clicked()));
    connect(pass, SIGNAL(clicked()), Board::getBoard(), SLOT(on_passButton_clicked()));
    connect(cancel, SIGNAL(clicked()), Board::getBoard(), SLOT(on_cancelButton_clicked()));
    connect(cancel, SIGNAL(clicked()), Rack::getRack(), SLOT(on_cancelButton_clicked()));
}

/*!
 * \brief Dialog::createLabelGroupBox Creates the labels that represent
 * the players
 */
void Dialog::createLabelGroupBox()
{
    labelGroupBox = new QGroupBox();
    QGridLayout *layout = new QGridLayout;
    layout->setContentsMargins(0,0,0,0);
    layout->setSpacing(0);
    Player* player;

    // create the labels and connect them for each player
    for(unsigned int i = 0; i < 4; i++) {
        if (i < players.size()){
             cout << "setting player" << endl;
            player = players[i];
        }
        else {
            cout << "setting player to null" << endl;
            player = NULL;
        }
        PlayerLabel *label = new PlayerLabel(player);
        if (i == 0){
            label->setActive();
        }
        else {
            label->setInactive();
        }
        connect(this, SIGNAL(playerChanged()), label, SLOT(on_playerChanged()));
        layout->addWidget(label, i / 2, i % 2);
    }

    labelGroupBox->setLayout(layout);

}

/*!
 * \brief Dialog::createGridGroupBox Creates the playing board
 */
void Dialog::createGridGroupBox()
{
    gridGroupBox = new QGroupBox();
    QGridLayout *layout = new QGridLayout;
    layout->setContentsMargins(0,0,0,0);
    layout->setSpacing(0);
    for (int i = 0; i < 15; i++) {
        for (int j = 0; j < 15; j++) {
            layout->addWidget(board->spaces[i][j], i, j);
        }
    }
    gridGroupBox->setLayout(layout);
}

/*!
 * \brief Dialog::on_newGame_selected Sets up a new game
 */
void Dialog::on_newGame_selected()
{
    if (game != NULL){
        delete(game);
        game = NULL;
    }
    for (unsigned int i = 0; i < players.size(); i++){
        players.at(i)->clearScore();
    }
    board->reset();
    setupGame();

}

/*!
 * \brief Dialog::on_playerChanged Slot for when the player is changed
 */
void Dialog::on_playerChanged()
{
    cout << "Dialog is emitting an on_playerChanged() signal." << endl;
    emit (playerChanged());
}
