#ifndef RACK_H
#define RACK_H
#include <QObject>
#include "space.h"
#include "game.h"
#include "player.h"

class Game;
class Player;

static const int RACKSIZE = 7; /*!< The number of Letters in a full Rack */

/*!
 * \brief The Rack class Singleton class representing the current player on the Dialog
 */
class Rack : public QObject
{
    Q_OBJECT
public:
    static Rack* getRack();
    ~Rack();

    Rack* setSpace(int, Space*);
    Space* getSpace(int);

    Rack* refresh(Game*);
    bool isActive();
    void inactivateByLetter(Letter*);
    Rack* deleteLetter(Letter*);
    Rack* inactivateOtherSpaces(int);
    int getActiveIndex();
    int getPos(Letter *L);

private:
    static bool isSet;          /*!< Flag if the Rack has been set */
    static Rack *rack;          /*!< The Rack */
    Space *spaces[RACKSIZE];    /*!< The container for the Spaces */

    explicit Rack(QObject *parent = 0);

public slots:
    void on_cancelButton_clicked();
    void on_invalidMove();
};

#endif // RACK_H
