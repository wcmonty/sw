#include "menulist.h"

/**
 * @brief MenuList::MenuList Constructor
 */
MenuList::MenuList()
{

}

/**
 * @brief MenuList::~MenuList Destructor
 */
MenuList::~MenuList()
{
    while(!orders.empty())
    {
        delete (orders.back());
        orders.pop_back();
    }
}

/**
 * @brief MenuList::MenuList Copy Constructor
 * @param other The other MenuList
 */
MenuList::MenuList (const MenuList& other)
{
    /// Make copies of the orders
    for( vector<FoodItem*>::const_iterator i = other.orders.begin();
         i != other.orders.end(); i++)
    {
        this->orders.push_back((*i)->copy());
    }
}

/**
 * @brief MenuList::operator = Copy Assignment Constructor
 * @param other The other MenuList
 * @return *this
 */
MenuList& MenuList::operator=(MenuList& other)
{
    /// Delete all the current orders
    while (!orders.empty())
    {
        delete (orders.back());
        orders.pop_back();
    }

    /// Make copies of the orders
    for( vector<FoodItem*>::const_iterator i = other.orders.begin();
         i != other.orders.end(); i++)
    {
        this->orders.push_back((*i)->copy());
    }

    return *this;
}

/**
 * @brief MenuList::printOptions Prints a list of options to stdout
 */
void MenuList::printOptions()
{
    cout << "Enter the item to add:" << endl;
    cout << "1. Salmon" << endl;
    cout << "2. Eggplant Casserole" << endl;
    cout << "3. Turkey Sandwich" << endl;
}

/**
 * @brief MenuList::add Adds a FoodItem to the MenuList
 * @return this
 */
MenuList* MenuList::add()
{
    bool invalid = true;
    int selection;
    do {
        printOptions();
        cin >> selection;
        if (selection > 0 && selection < 4)
        {
            invalid = false;
            FoodItem* item;
            switch (selection)
            {
            case 1:
                item = new Salmon();
                break;
            case 2:
                item = new EggplantCasserole();
                break;
            case 3:
                item = new TurkeySandwich();
                break;
            }
            orders.push_back(item);
        }
        else
        {
            cout << "Invalid selection.  Please try again." << endl;
        }

    } while (invalid);

    return this;
}

/**
 * @brief operator << Overloading the << operator for streams
 * @param stream The output stream
 * @param list The MenuList to print
 * @return The output stream
 */
ostream& operator<< (ostream& stream, const MenuList& list)
{
    unsigned int itemNumber = 1;
    for( vector<FoodItem*>::const_iterator i = list.orders.begin();
         i != list.orders.end(); i++)
    {
        stream << "##### Item " << itemNumber << " #####" << endl;
        (*i)->print();
        itemNumber++;
    }
    return stream;
}
