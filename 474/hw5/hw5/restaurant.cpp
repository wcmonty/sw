#include <iostream>
#include "restaurant.h"

/**
 * @brief Restaurant::Restaurant Constructor
 */
Restaurant::Restaurant()
{
    for (int i = 0; i < NUMSEATS; i++)
    {
        seats[i] = NULL;
    }
}

/**
 * @brief Restaurant::~Restaurant Destructor
 */
Restaurant::~Restaurant()
{
    for (int i = 0; i < NUMSEATS; i++)
    {
        delete (seats[i]);
    }
}

/**
 * @brief Restaurant::Restaurant Copy Constructor
 * @param otherRestaurant The other Restaurant
 */
Restaurant::Restaurant(const Restaurant& otherRestaurant)
{
    for (int i = 0; i < NUMSEATS; i++)
    {
        seats[i] = new MenuList(*(otherRestaurant.seats[i]));
    }
}

/**
 * @brief Restaurant::operator = Copy Assignment Constructor
 * @param otherRestaurant The other Restaurant
 * @return *this
 */
Restaurant& Restaurant::operator=(Restaurant& otherRestaurant)
{
    for (int i = 0; i < NUMSEATS; i++)
    {
        delete (this->seats[i]);
        this->seats[i] = otherRestaurant.seats[i];
    }
    return *this;
}

/**
 * @brief Restaurant::run Executes the POS
 * @return this
 */
Restaurant* Restaurant::run()
{
    cout << "Running the restaurant." << endl;

    char input;
    do {
        printMenu();
        cin >> input;
        getChoice(input);
    } while (input != 'q');
    return this;
}

/**
 * @brief Restaurant::printMenu Prints the list of options
 * @return this
 */
Restaurant* Restaurant::printMenu()
{
    cout << endl;
    cout << "Please enter a choice:" << endl;
    cout << "n - Enter a new list" << endl;
    cout << "a - Add a list entry" << endl;
    cout << "c - Copy a list" << endl;
    cout << "d - Delete a list" << endl;
    cout << "l - List patron" << endl;
    cout << "s - Swap orders" << endl;
    cout << "q - Quit" << endl;

    return this;
}

/**
 * @brief Restaurant::doNewList Creates a new list for a specific seat
 */
void Restaurant::doNewList()
{
    int seat;
    cout << "Creating a new list" << endl;
    cout << "Please enter the seat number [1-10]: ";
    cin >> seat;

    if (seat <= 0 || seat > 10)
    {
        cout << "Invalid seat. Aborting operation.";
    }
    else if (seats[seat] != NULL)
    {
        cout << "This seat is filled." << endl;
    }
    else
    {
        seats[seat] = new MenuList();
    }
}

/**
 * @brief Restaurant::doDelete Deletes a specific list
 */
void Restaurant::doDelete()
{
    int seat;
    cout << "Deleting a list" << endl;
    cout << "Please enter the seat number [1-10]: ";
    cin >> seat;

    if (seat <= 0 || seat > 10)
    {
        cout << "Invalid seat. Aborting.";
    }
    else
    {
        delete (seats[seat]);
        seats[seat] = NULL;
    }
}

/**
 * @brief Restaurant::doAdd Adds a FoodItem to a MenuList
 */
void Restaurant::doAdd()
{
    int seat;
    cout << "Adding a new list entry" << endl;
    cout << "Please enter the seat number [1-10]: ";
    cin >> seat;

    if (seat <= 0 || seat > 10)
    {
        cout << "Invalid seat. Aborting.";
    }
    else
    {
        if (seats[seat] == NULL)
        {
            seats[seat] = new MenuList();
        }

        seats[seat]->add();
    }
}

/**
 * @brief Restaurant::doCopy Copies a MenuList to another seat
 */
void Restaurant::doCopy()
{
    int seat1, seat2;
    cout << "Copying a list" << endl;
    cout << "Please enter the seat number to copy from [1-10]: ";
    cin >> seat1;
    cout << "Please enter the seat number to copy to [1-10]: ";
    cin >> seat2;

    if (seat1 <= 0 || seat1 > 10 || seat2 <= 0 || seat2 > 10)
    {
        cout << "Invalid seat. Aborting.";
    }
    else
    {
        if (seat1 == seat2)
        {
            cout << "Equal seats. Aborting!" << endl;
        }
        else if (seats[seat1] != NULL)
        {
            delete (seats[seat2]);
            seats[seat2] = new MenuList(*(seats[seat1]));
        }
        else
        {
            delete (seats[seat2]);
            seat2 = 0;
        }
    }
}

/**
 * @brief Restaurant::doList Lists the current order for a specific seat
 */
void Restaurant::doList()
{
    int seat;
    cout << "Listing a patron" << endl;
    cout << "Please enter the seat number [1-10]: ";
    cin >> seat;

    if (seat <= 0 || seat > 10)
    {
        cout << "Invalid seat. Aborting.";
    }
    else
    {
        if (seats[seat] != NULL)
        {
            cout << *(seats[seat]) << endl;
        }
        else
        {
            cout << "This seat is empty." << endl;
        }
    }
}

/**
 * @brief Restaurant::doSwitch Switches two orders
 */
void Restaurant::doSwitch()
{
    int seat1, seat2;
    cout << "Swapping orders" << endl;
    cout << "Please enter the first seat number [1-10]: ";
    cin >> seat1;
    cout << "Please enter the second seat number [1-10]: ";
    cin >> seat2;

    if (seat1 <= 0 || seat1 > 10 || seat2 <= 0 || seat2 > 10)
    {
        cout << "Invalid seat. Aborting.";
    }
    else
    {
        if (seat1 == seat2)
        {
            cout << "Equal seats. Aborting!" << endl;
        }
        else
        {
            MenuList* temp = seats[seat1];
            seats[seat1] = seats[seat2];
            seats[seat2] = temp;
        }
    }
}

/**
 * @brief Restaurant::getChoice Executes a method based on a given input
 * @param input The input character
 * @return this
 */
Restaurant* Restaurant::getChoice(char input)
{
    switch (input)
    {
    case 'n':
        doNewList();
        break;
    case 'a':
        doAdd();
        break;
    case 'c':
        doCopy();
        break;
    case 'd':
        doDelete();
        break;
    case 'l':
        doList();
        break;
    case 's':
        doSwitch();
        break;
    case 'q':
        cout << "Quitting" << endl;
        break;
    default:
        cout << "Input not understood.  Please try again." << endl;
    }

    return this;
}
