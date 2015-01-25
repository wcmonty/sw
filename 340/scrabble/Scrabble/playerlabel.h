#ifndef PLAYERLABEL_H
#define PLAYERLABEL_H
#include <QLabel>
#include <QWidget>
#include "player.h"

/*!
 * \brief The PlayerLabel class Represents the Player within the Dialog
 */
class PlayerLabel : public QLabel
{
    Q_OBJECT
public:
    explicit PlayerLabel(Player*);
    PlayerLabel* setActive();
    PlayerLabel* setInactive();

private:
    Player *player;             /*!< The Player */
    PlayerLabel* updateText();
    
public slots:
    void on_playerChanged();
};

#endif // PLAYERLABEL_H
