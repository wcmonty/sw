#include <string.h>
#include "salmon.h"

/**
 * @brief Salmon::Salmon Constructor
 */
Salmon::Salmon()
{
    strcpy(name, "Salmon");

    cin.getline(side, 256);
    cout << "Enter the side dish: ";
    cin.getline(side, 256);

}

/**
 * @brief Salmon::~Salmon Destructor
 */
Salmon::~Salmon()
{

}

/**
 * @brief Salmon::copy Copies the current instance.  Caller is responsible for
 * deallocating returned object.
 * @return A new Salmon instance
 */
Salmon* Salmon::copy()
{
    Salmon* newInstance = new Salmon(*this);
    return newInstance;
}

/**
 * @brief Salmon::print Prints the current instance
 */
void Salmon::print()
{
    this->FoodItem::print();
    cout << "Doneness: " << this->done << endl;
    cout << "Side: " << this->side << endl;
}
