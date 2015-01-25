#ifndef AIPLAYER_H
#define AIPLAYER_H
#include "board.h"
#include "player.h"
#include "move.h"

class AIPlayer: public Player {
public:
    AIPlayer(QString s) : Player(s) {}
    void play(Dictionary & dict, Play ** play);
    virtual bool isAIPlayer();

private:
    size_t ai_search(QList<Letter*> * tiles,
                     QList<Space*> * positions,
                     list<Play*> * playlist,
                     Dictionary* dict);

    bool _touches_4(int x, int y);
    bool _touches_2(int x, int y);

    void _assist_ai_search(TrieNode * Node,
                           QList<Letter*> * tiles,
                           QList<Space*> * positions,
                           QList<Move*> *playbuilder,
                           list<Play*> * playlist);

    Board * boardcopy;
};

#endif // AIPLAYER_H
