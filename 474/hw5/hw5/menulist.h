#ifndef MENULIST_H
#define MENULIST_H

#include <vector>
#include <iostream>
#include "fooditem.h"
#include "salmon.h"
#include "turkeysandwich.h"
#include "eggplantcasserole.h"

using namespace std;

/**
 * @brief The MenuList class Represents an order containing a number of FoodItems
 */
class MenuList
{
protected:
    /**
     * @brief orders The list of FoodItems
     */
    vector<FoodItem*> orders;  // seat[0] is unused
public:
    MenuList();
    ~MenuList();
    MenuList (const MenuList&);
    MenuList& operator=(MenuList&);

    MenuList* add();

    friend ostream& operator<< (ostream&, const MenuList&);
    void printOptions();
};

#endif // MENULIST_H
