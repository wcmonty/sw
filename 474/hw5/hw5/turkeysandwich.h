#ifndef TURKEYSANDWICH_H
#define TURKEYSANDWICH_H

#include "fooditem.h"
#include "breadchoice.h"
#include "condimentlist.h"

using namespace std;

/**
 * @brief The TurkeySandwich class Represents a Turkey Sandwich
 */
class TurkeySandwich : public FoodItem
{
protected:
    /**
     * @brief bread The choice of bread
     */
    BreadChoice bread;

    /**
     * @brief condiments The selected condiments
     */
    CondimentList condiments;
public:
    TurkeySandwich();
    ~TurkeySandwich();
    virtual TurkeySandwich* copy();

    virtual void print();
};

#endif // TURKEYSANDWICH_H
