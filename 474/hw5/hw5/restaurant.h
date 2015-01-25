#ifndef RESTAURANT_H
#define RESTAURANT_H

#include "menulist.h"

using namespace std;

/**
 * @brief NUMSEATS The number of seats + 1.  We use an extra dummy seat at
 * the beginning of the array so we can start the index at 1.
 */
static const int NUMSEATS = 11;

/**
 * @brief The Restaurant class Represents a Restaurant
 */
class Restaurant
{
protected:
    /**
     * @brief seats The seats in the Restaurant
     */
    MenuList* seats[NUMSEATS];
public:
    Restaurant();
    ~Restaurant();
    Restaurant (const Restaurant&);
    Restaurant& operator=(Restaurant&);

    Restaurant* run();
    Restaurant* printMenu();
    Restaurant* getChoice(char);
    void doNewList();
    void doDelete();
    void doAdd();
    void doCopy();
    void doList();
    void doSwitch();
};

#endif // RESTAURANT_H
