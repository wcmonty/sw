#include <iostream>
#include <string>
#include <iomanip>
#include "fooditem.h"

/**
 * @brief FoodItem::FoodItem Default Constructor
 */
FoodItem::FoodItem()
{
    cout << "Enter the price: ";
    cin >> price;

    cout << "Enter the calories: ";
    cin >> calories;
}

/**
 * @brief FoodItem::~FoodItem Destructor
 */
FoodItem::~FoodItem()
{

}

/**
 * @brief FoodItem::print Prints to stdout
 */
void FoodItem::print()
{
    cout << "Name: " << this->name << endl;
    cout << fixed;
    cout << setprecision(2);
    cout << "Price: $" << this->price << endl;
    cout << "Calories: " << this->calories << endl;
}
