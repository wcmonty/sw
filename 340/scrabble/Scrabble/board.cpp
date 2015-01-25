#include <stdlib.h>
#include "board.h"

#include <QLayout>
#include <QPushButton>

#include "assert.h"

bool Board::isSet = false;
Board* Board::board = NULL;

/*!
 * \brief Board::Board Constructor
 */
Board::Board()
{
    this->active = false;
    this->firstPlayed = false;
    this->game = NULL;
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++){
            spaces[i][j] = NULL;
        }
    }
    setup();

}

/*!
 * \brief Board::getBoard Gets the board or creates a new one
 * \return A pointer to the board
 */
Board* Board::getBoard()
{
    if (isSet){
        return board;
    }
    isSet = true;
    board = new Board();
    return board;
}


/*!
 * \brief Board::~Board Destructor
 */
Board::~Board()
{
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++){
            if (spaces[i][j] != NULL) {
                Rack::getRack()->deleteLetter(spaces[i][j]->getLetter());
                delete(spaces[i][j]);
            }
        }
    }
}

/*!
 * \brief Board::reset Resets the board by clearing out all the spaces
 * \return this
 */
Board* Board::reset()
{
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++){
            if (spaces[i][j] != NULL) {
                spaces[i][j]->clear();
            }
        }
    }
    this->active = false;
    return this;
}

/*!
 * \brief Board::setup  Sets up the board
 * \return this
 */
Board* Board::setup()
{
    setupSpecialSpaces();
    setupPlainSpaces();
    return this;
}

/*!
 * \brief Board::setGame Setter for game
 * \param game The game
 * \return this
 */
Board* Board::setGame(Game *game)
{
    this->game = game;
    return this;
}

/*!
 * \brief Board::getGame Gets a game
 * \return A pointer to the game
 */
Game* Board::getGame()
{
    return game;
}

/*!
 * \brief Board::setupSpecialSpaces Sets up special spaces on the board
 * \return this
 */
Board* Board::setupSpecialSpaces()
{
    setup3W();
    setup2W();
    setup3L();
    setup2L();
    setupStart();

    return this;
}

/*!
 * \brief Board::setupStart Sets up the start space
 * \return this
 */
Board* Board::setupStart()
{
    spaces[7][7] = new Space(7, 7, 1, 2, "*", DOUBLEWORDCOLOR);
    spaces[7][7]->setStartSpace(true);

    return this;
}

/*!
 * \brief Board::setup3W Sets up spaces with 3 * word multiplier
 * \return this
 */
Board* Board::setup3W()
{
    int lm = 1, wm = 3;
    QString label = "3w", color = TRIPLEWORDCOLOR;
    spaces[0][0] = new Space(0, 0, lm, wm, label, color);
    spaces[0][7] = new Space(0, 7, lm, wm, label, color);
    spaces[0][14] = new Space(0, 14, lm, wm, label, color);
    spaces[7][0] = new Space(7, 0, lm, wm, label, color);
    spaces[7][14] = new Space(7, 14, lm, wm, label, color);
    spaces[14][0] = new Space(14, 0, lm, wm, label, color);
    spaces[14][7] = new Space(14, 7, lm, wm, label, color);
    spaces[14][14] = new Space(14, 14, lm, wm, label, color);

    return this;
}

/*!
 * \brief Board::setup2W Sets up spaces with 2 * word multiplier
 * \return this
 */
Board* Board::setup2W()
{
    int lm = 1, wm = 2;
    QString label = "2w", color = DOUBLEWORDCOLOR;
    spaces[1][1] = new Space(1, 1, lm, wm, label, color);
    spaces[2][2] = new Space(2, 2, lm, wm, label, color);
    spaces[3][3] = new Space(3, 3, lm, wm, label, color);
    spaces[4][4] = new Space(4, 4, lm, wm, label, color);
    spaces[1][13] = new Space(1, 13, lm, wm, label, color);
    spaces[2][12] = new Space(2, 12, lm, wm, label, color);
    spaces[3][11] = new Space(3, 11, lm, wm, label, color);
    spaces[4][10] = new Space(4, 10, lm, wm, label, color);
    spaces[10][4] = new Space(10, 4, lm, wm, label, color);
    spaces[11][3] = new Space(11, 3, lm, wm, label, color);
    spaces[12][2] = new Space(12, 2, lm, wm, label, color);
    spaces[13][1] = new Space(13, 1, lm, wm, label, color);
    spaces[10][10] = new Space(10, 10, lm, wm, label, color);
    spaces[11][11] = new Space(11, 11, lm, wm, label, color);
    spaces[12][12] = new Space(12, 12, lm, wm, label, color);
    spaces[13][13] = new Space(13, 13, lm, wm, label, color);

    return this;
}

/*!
 * \brief Board::setup3L Sets up spaces with 3 * letter multipler
 * \return this
 */
Board* Board::setup3L()
{
    int lm = 3, wm = 1;
    QString label = "3l", color = TRIPLELETTERCOLOR;
    spaces[1][5] = new Space(1, 5, lm, wm, label, color);
    spaces[1][9] = new Space(1, 9, lm, wm, label, color);
    spaces[5][1] = new Space(5, 1, lm, wm, label, color);
    spaces[5][5] = new Space(5, 5, lm, wm, label, color);
    spaces[5][9] = new Space(5, 9, lm, wm, label, color);
    spaces[5][13] = new Space(5, 13, lm, wm, label, color);
    spaces[9][1] = new Space(9, 1, lm, wm, label, color);
    spaces[9][5] = new Space(9, 5, lm, wm, label, color);
    spaces[9][9] = new Space(9, 9, lm, wm, label, color);
    spaces[9][13] = new Space(9, 13, lm, wm, label, color);
    spaces[13][5] = new Space(13, 5, lm, wm, label, color);
    spaces[13][9] = new Space(13, 9, lm, wm, label, color);

    return this;
}

/*!
 * \brief Board::setup2L Sets up spaces with 2 * letter multiplier
 * \return this
 */
Board* Board::setup2L()
{
    int lm = 2, wm = 1;
    QString label = "2l", color = DOUBLELETTERCOLOR;
    spaces[0][3] = new Space(0, 3, lm, wm, label, color);
    spaces[0][11] = new Space(0, 11, lm, wm, label, color);
    spaces[2][6] = new Space(2, 6, lm, wm, label, color);
    spaces[2][8] = new Space(2, 8, lm, wm, label, color);
    spaces[3][0] = new Space(3, 0, lm, wm, label, color);
    spaces[3][7] = new Space(3, 7, lm, wm, label, color);
    spaces[3][14] = new Space(3, 14, lm, wm, label, color);
    spaces[6][2] = new Space(6, 2, lm, wm, label, color);
    spaces[6][6] = new Space(6, 6, lm, wm, label, color);
    spaces[6][8] = new Space(6, 8, lm, wm, label, color);
    spaces[6][12] = new Space(6, 12, lm, wm, label, color);
    spaces[7][3] = new Space(7, 3, lm, wm, label, color);
    spaces[7][11] = new Space(7, 11, lm, wm, label, color);
    spaces[8][2] = new Space(8, 2, lm, wm, label, color);
    spaces[8][6] = new Space(8, 6, lm, wm, label, color);
    spaces[8][8] = new Space(8, 8, lm, wm, label, color);
    spaces[8][12] = new Space(8, 12, lm, wm, label, color);
    spaces[11][0] = new Space(11, 0, lm, wm, label, color);
    spaces[11][7] = new Space(11, 7, lm, wm, label, color);
    spaces[11][14] = new Space(11, 14, lm, wm, label, color);
    spaces[12][6] = new Space(12, 6, lm, wm, label, color);
    spaces[12][8] = new Space(12, 8, lm, wm, label, color);
    spaces[14][3] = new Space(14, 3, lm, wm, label, color);
    spaces[14][11] = new Space(14, 11, lm, wm, label, color);

    return this;
}

/*!
 * \brief Board::setupPlainSpaces Sets up the rest of the board, should be called
 * only after all the special spaces are set up.
 * \return this
 */
Board* Board::setupPlainSpaces()
{
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++){
            if (spaces[i][j] == NULL){
                spaces[i][j] = new Space(i, j, 1, 1, " ", "white");
            }
        }
    }

    return this;
}

/*!
 * \brief setSpace    Setter for a space
 * \param x     The x position to set
 * \param y     The y position to set
 * \param l The pointer to the letter which we will insert in the spot
 */
void Board::setSpace(int x, int y, Letter* l)
{
    assert(x >=0 && x < BOARDSIZE);
    assert(y >=0 && y < BOARDSIZE);

    spaces[x][y]->setLetter(l);
}

/*!
 * \brief Board::getColor Gets the color of the space
 * \param x The x position of the space
 * \param y The y position of the space
 * \return A QString representing the color
 */
QString Board::getColor(int x, int y)
{
    return this->spaces[x][y]->getColor();
}

/*!
 * \brief Board::inactivateOtherSpaces Inactivates other spaces on the board
 * \param x The x position
 * \param y The y position
 * \return this
 */
Board* Board::inactivateOtherSpaces(int x, int y)
{
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++){
            if (!(x == i && y == j)){
                spaces[i][j]->setInactive();
            }
        }
    }
    return this;
}

/*!
 * \brief Board::validate Validates a board
 * \return true if valid, false otherwise
 */
bool Board::validate()
{
    /// The start space should be covered
    /// There should be at least one new letter on the board
    /// The letters should all be in one row or column
    bool isValidPosition = startCovered() && hasNew() && sameRowOrColumn();

    return isValidPosition && areValidWords();
}

/*!
 * \brief Board::areValidWords Validates all words on the board to make sure they are valid
 * \return true if all are valid, false otherwise
 */
bool Board::areValidWords()
{
    for (int row = 0; row < BOARDSIZE; row++){
        for (int column = 0; column < BOARDSIZE; column++){
            if ( !spaces[row][column]->isBlank() &&  (row == 0 || spaces[row - 1][column]->isBlank())) {
                if (!validateWordVertical(row, column)){
                    return false;
                }
            }
            if ( !spaces[row][column]->isBlank() &&  (column == 0 || spaces[row][column - 1]->isBlank())) {
                if (!validateWordHorizontal(row, column)){
                    return false;
                }
            }
        }
    }
    return true;
}

/*!
 * \brief Board::validateWordHorizontal Validates a word against the dictionary in a horizontal direction
 * \param firstRow      The first row of the word
 * \param firstColumn   The first column of the word
 * \return true if a valid word, false otherwise
 */
bool Board::validateWordHorizontal(int firstRow, int firstColumn)
{
    QString word = "";
    int column = firstColumn;
    while (column < BOARDSIZE && !spaces[firstRow][column]->isBlank()){
        word = word + spaces[firstRow][column]->getLetter()->asQCharPtr()->toLatin1();
        column++;
    }
    if (column > (firstColumn + 1) && !game->dictionary->isWord(word)){
        cout << word.toStdString() << " is not a word." << endl;
        return false;
    }
    return true;
}

/*!
 * \brief Board::validateWordVertical Validates a word against the dictionary in a vertical direction
 * \param firstRow      The first row of the word
 * \param firstColumn   The first column of the word
 * \return true if valid, false otherwise
 */
bool Board::validateWordVertical(int firstRow, int firstColumn)
{
    QString word = "";
    word = "";
    int row = firstRow;
    while (row < BOARDSIZE && !spaces[row][firstColumn]->isBlank()){
        word = word + spaces[row][firstColumn]->getLetter()->asQCharPtr()->toLatin1();
        row++;
    }
    if (row > (firstRow + 1) && !game->dictionary->isWord(word)){
        cout << word.toStdString() << " is not a word." << endl;
        return false;
    }
    return true;
}


/*!
 * \brief Board::startCovered Evaluates whether the start space has been played.
 * This should only fail on the first play.
 * \return true if it is covered, false otherwise
 */
bool Board::startCovered()
{
    return firstPlayed || (spaces[7][7]->getLetter() != NULL);
}


/*!
 * \brief Board::hasNew Decides whether there is a new letter on the board
 * \return true if there is a new letter, false otherwise
 */
bool Board::hasNew()
{
    for(int i = 0; i < BOARDSIZE; i++){
        for(int j = 0; j < BOARDSIZE; j++) {
            if (spaces[i][j]->isNew()){
                return true;
            }
        }
    }
    return false;
}

/*!
 * \brief Board::sameRowOrColumn Validates whether all of the
 * new letters are in the same row or column.
 * \return true if they are, false if not
 */
bool Board::sameRowOrColumn()
{
    bool found = false;
    bool secondFound = false;
    bool row = false;
    bool column = false;
    int firstRow = -1;
    int firstColumn = -1;

    // Figure out whether the pieces are in a row or column
    // We need two new spaces to do this.
    for(int i = 0; i < BOARDSIZE; i++){
        for(int j = 0; j < BOARDSIZE; j++) {

            // Finds the first space on the board
            // It doesn't really matter which we choose as the first space
            // As long it is the first we encounter
            if (!found && spaces[i][j]->isNew()){
                found = true;
                firstRow = i;
                firstColumn = j;
            }

            // Finds the second space and figures out whether it is in
            // the same row or column as the first
            // If not it returns false
            else if (!secondFound && spaces[i][j]->isNew()){
                secondFound = true;
                if (firstRow == i) {
                    row = true;
                }
                else if (firstColumn == j){
                    column = true;
                }
                else {
                    return false;
                }
            }

            // Makes sure all other spaces are either
            // in the same row or same column
            else if (spaces[i][j]->isNew()){
                if ((row && firstRow != i) ||
                        (column && firstColumn != j)){
                    return false;
                }
            }
        }
    }

    // Checks to make sure it meets other criteria
    if (row) {
        return noRowBlanks(firstRow, firstColumn)
                && mustTouchRow(firstRow, firstColumn);
    }
    else if (column){
        return noColumnBlanks(firstRow, firstColumn)
                && mustTouchColumn(firstRow, firstColumn);
    }
    else {  // there is just one new letter on the board
        return isTouchingOnBoard(firstRow, firstColumn);
    }
}

/*!
 * \brief Board::noRowBlanks Searches in a row to make sure
 * there are no spaces between letters.
 * \param firstRow      The row of the first letter
 * \param firstColumn   The column of the first letter
 * \return true if no spaces found, false otherwise
 */
bool Board::noRowBlanks(int firstRow, int firstColumn)
{
    bool spaceSeen = false;
    for (int column = firstColumn + 1; column < BOARDSIZE; column++){
        if (!spaceSeen && spaces[firstRow][column]->isBlank()){
             spaceSeen = true;
        }
        if (spaceSeen && spaces[firstRow][column]->isNew()){
            return false;
        }
    }
    return true;
}

/*!
 * \brief Board::noColumnBlanks Searches in a column to make sure
 * there are no spaces between letters.
 * \param firstRow      The row of the first letter.
 * \param firstColumn   The column of the first letter.
 * \return true if no spaces found, false otherwise
 */
bool Board::noColumnBlanks(int firstRow, int firstColumn)
{
    bool spaceSeen = false;
    for (int row = firstRow + 1; row < BOARDSIZE; row++){
        if (!spaceSeen && spaces[row][firstColumn]->isBlank()){
             spaceSeen = true;
        }
        if (spaceSeen && spaces[row][firstColumn]->isNew()){
            return false;
        }
    }
    return true;
}

/*!
 * \brief Board::mustTouchRow Evaluates whether a word touches
 * a word currently on the board. Looks in the horiontal direction.
 * \param firstRow      The row of the first letter.
 * \param firstColumn   The column of the first letter.
 * \return true if it touches, false if not
 */
bool Board::mustTouchRow(int firstRow, int firstColumn)
{
    for (int column = firstColumn; column < BOARDSIZE; column++){
        if (spaces[firstRow][column]->isBlank()){
            return false;
        }
        else if (firstRow == 7 && column == 7){
            return true;
        }
        else if (isTouchingOnBoard(firstRow, column)){
            return true;
        }
    }
    return false;
}

/*!
 * \brief Board::mustTouchColumn Evaluates whether a word touches
 * a word currently on the board. Looks in the horiontal direction.
 * \param firstRow      The row of the first letter
 * \param firstColumn   The column of the first letter
 * \return true if it touches, false if not
 */
bool Board::mustTouchColumn(int firstRow, int firstColumn)
{
    for (int row = firstRow; row < BOARDSIZE; row++){
        if (spaces[row][firstColumn]->isBlank()){
            return false;
        }
        else if (row == 7 && firstColumn == 7){
            return true;
        }
        else if (isTouchingOnBoard(row, firstColumn)){
            return true;
        }
    }
    return false;
}

/*!
 * \brief Board::isTouchingOnBoard Evaluates whether a space is
 * adjacent to a space that has a permanent letter affixed to it.
 * \param row       The row of the space
 * \param column    The column of the space
 * \return True if adjacent, false otherwise
 */
bool Board::isTouchingOnBoard(int row, int column)
{
    if ((row > 0) && spaces[row - 1][column]->isOnBoard()){
        return true;
    }
    if ((column > 0) && spaces[row][column - 1]->isOnBoard()){
        return true;
    }
    if ((row < BOARDSIZE - 1) && spaces[row + 1][column]->isOnBoard()){
        return true;
    }
    if ((column < BOARDSIZE - 1) && spaces[row][column + 1]->isOnBoard()){
        return true;
    }
    return false;
}

/*!
 * \brief Board::moveLetterToBoard Moves a letter to the board
 * \param i     The position in the rack
 * \param x     The x position on the board
 * \param y     The y position on the board
 * \return this
 */
Board* Board::moveLetterToBoard(int i, int x, int y)
{
    Move *move = new Move(Board::getBoard()->getGame()->currentPlayer(),
                          Rack::getRack()->getSpace(i)->getLetter(),
                          i, x, y);
    move->apply();
    Game *game = Board::getBoard()->getGame();
    game->currentPlay()->addMove(game->currentPlayer(), move);

    return this;
}

/*!
 * \brief Board::score  Scores a board
 * \param play          The current play
 * \return this
 */
int Board::score(Play *play)
{
    int score = 0;

    // If the play uses all 7 letters a bonus of 50 points is applied
    if(play->size() == 7){
        score += 50;
    }
    score += scoreHorizontal();
    score += scoreVertical();
    cout << "The score is " << score << "."<< endl;
    return score;
}

/*!
 * \brief Board::scoreHorizontal Scores all horizontal words
 * \return The score
 */
int Board::scoreHorizontal()
{
    int score = 0;
    for (int row = 0; row < BOARDSIZE; row++){
        for (int column = 0; column < BOARDSIZE - 1; column++){
                                                   // A horizontal word must be at least 2 letters
                                                   // So we don't have to check the last row
            if ((column == 0 || spaces[row][column - 1]->isBlank()) &&
                    !spaces[row][column]->isBlank()){
                score += scoreHorizontalWord(row, column);
            }
        }
    }
    return score;
}

/*!
 * \brief Board::scoreVertical Scores all vertical words
 * \return The score
 */
int Board::scoreVertical()
{
    int score = 0;
    for (int row = 0; row < BOARDSIZE - 1; row++){ // A vertical word must be at least 2 letters
                                                   // So we don't have to check the last row
        for (int column = 0; column < BOARDSIZE; column++){
            if ((row == 0 || spaces[row -1][column]->isBlank()) &&
                    !spaces[row][column]->isBlank()){
                score += scoreVerticalWord(row, column);
            }
        }
    }
    return score;
}

/*!
 * \brief Board::scoreHorizontalWord Score a single horizontal word
 * \param firstRow      The x position of the first letter
 * \param firstColumn   The y position of the first letter
 * \return The score
 */
int Board::scoreHorizontalWord(int firstRow, int firstColumn)
{
    int score = 0;
    int length = 0;
    int isNew = false;
    int wordMultiplier = 1;
    int column = firstColumn;

    // figures out the length of the word
    Space* space = spaces[firstRow][column];
    while(column < BOARDSIZE &&
          (space = spaces[firstRow][column]) &&
          !space->isBlank()){
        length++;
        if (space->isNew()){
            isNew = true;
        }
        column++;
    }

    // calculates the score for the word
    if (length > 1 && isNew){
        for(int i = 0; i < length; i++){
            space = spaces[firstRow][firstColumn + i];
            if (space->isNew()){
                score += space->getLetter()->getValue() * space->getLetterMultiplier();
                wordMultiplier *= space->getWordMultiplier();
            }
            else {
                score += space->getLetter()->getValue();
            }
        }
    }
    score = score * wordMultiplier;

    return score;
}

/*!
 * \brief Board::scoreVerticalWord  Scores a single vertical word
 * \param firstRow      The x position of the first new letter
 * \param firstColumn   The y position of the first new letter
 * \return The value of the word
 */
int Board::scoreVerticalWord(int firstRow, int firstColumn)
{
    int score = 0;
    int length = 0;
    int isNew = false;
    int wordMultiplier = 1;
    int row = firstRow;

    // figures out the length of the word
    Space* space = spaces[row][firstColumn];
    while(row < BOARDSIZE &&
          (space = spaces[row][firstColumn]) &&
          !space->isBlank()){
        length++;
        if (space->isNew()){
            isNew = true;
        }
        row++;
    }

    // figures out the vaue of the word
    if (length > 1 && isNew){
        for(int i = 0; i < length; i++){
            space = spaces[firstRow + i][firstColumn];
            if (space->isNew()){  // Mulltipliers only apply for new letters
                score += space->getLetter()->getValue() * space->getLetterMultiplier();
                wordMultiplier *= space->getWordMultiplier();
            }
            else {
                score += space->getLetter()->getValue();
            }
        }
    }
    score = score * wordMultiplier;

    return score;
}

/*!
 * \brief Board::on_cancelButton_clicked Cancels a play.
 * Removes all letters from the board and resets the rack.
 */
void Board::on_cancelButton_clicked()
{
    for (int i = 0; i < BOARDSIZE; i++){
        for (int j = 0; j < BOARDSIZE; j++) {
            if (spaces[i][j]->isNew() || spaces[i][j]->isActive()) {
                spaces[i][j]->clear();
            }
        }
    }
    game->currentPlay()->clearMoves();
}

/*!
 * \brief Board::on_passButton_clicked Passes a players turn
 */
void Board::on_passButton_clicked()
{
    on_cancelButton_clicked();
    game->nextTurn();
}

/*!
 * \brief Board::on_playButton_clicked Commits a play to the board
 * if valid, or removes all pieces if not.
 */
void Board::on_playButton_clicked()
{
    if (validate()) {
        Game *game = Board::getBoard()->getGame();
        game->nextTurn();
    }
    else {
        on_cancelButton_clicked();
        emit(invalidMove());
    }
}

/*!
 * \brief operator << Overloading the << operator for debugging information
 * \param os    The output stream
 * \param board The board to be output
 * \return      The modified output stream
 */
ostream& operator<<(ostream& os, const Board& board)
{
    for(int i = 0; i < BOARDSIZE; i++) {
        cout << "{" << setw(2) << i << "}";
        for(int j = 0; j < BOARDSIZE; j++) {
            os << *(board.spaces[i][j]);
        }
        os << endl;
    }
    cout << "{XX}{0 }{1 }{2 }{3 }{4 }{5 }{6 }{7 }{8 }{9 }{10}{11}{12}{13}{14}";
    return os;
}
