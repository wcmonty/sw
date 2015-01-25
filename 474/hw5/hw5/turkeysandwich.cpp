#include "turkeysandwich.h"
#include <string.h>

/**
 * @brief TurkeySandwich::TurkeySandwich Constructor
 */
TurkeySandwich::TurkeySandwich()
{
    strcpy(name, "Turkey Sandwich");
}

/**
 * @brief TurkeySandwich::~TurkeySandwich Destructor
 */
TurkeySandwich::~TurkeySandwich()
{
}

/**
 * @brief TurkeySandwich::copy Copies the current instance.  Caller is responsible for
 * deallocating the object.
 * @return A new instance of TurkeySandwich
 */
TurkeySandwich* TurkeySandwich::copy()
{
    TurkeySandwich *newInstance = new TurkeySandwich(*this);
    return newInstance;
}

/**
 * @brief TurkeySandwich::print Prints out the TurkeySandwich to stdout.
 */
void TurkeySandwich::print()
{
    this->FoodItem::print();
    cout << "Bread: " << bread << endl;
    cout << "Condiments: " << endl;
    cout << this->condiments;
}
