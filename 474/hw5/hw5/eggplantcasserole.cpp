#include "eggplantcasserole.h"
#include <string.h>

/**
 * @brief EggplantCasserole::EggplantCasserole Constructor
 */
EggplantCasserole::EggplantCasserole() : FoodItem()
{
    strcpy(name, "Eggplant Casserole");
    cout << "Enter the number of ounces: ";
    cin >> ounces;
    cin.getline(side, 256);
    cout << "Enter the side dish: ";
    cin.getline(side, 256);

}

/**
 * @brief EggplantCasserole::~EggplantCasserole Destructor
 */
EggplantCasserole::~EggplantCasserole()
{

}

/**
 * @brief EggplantCasserole::copy Copies an EggplantCasserole, be sure to deallocate returned
 * instance
 * @return A new instance
 */
EggplantCasserole* EggplantCasserole::copy()
{
    // create new instance, invoke copy constructor implicitly, and return it
    EggplantCasserole* newInstance = new EggplantCasserole(*this);
    return newInstance;
}

/**
 * @brief EggplantCasserole::print Prints to stdout
 */
void EggplantCasserole::print()
{
    this->FoodItem::print();
    cout << "Ounces: " << this->ounces << endl;
    cout << "Side: " << this->side << endl;
}
