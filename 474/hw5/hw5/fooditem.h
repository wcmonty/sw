#ifndef FOODITEM_H
#define FOODITEM_H

#include <iostream>

using namespace std;

class FoodItem
{
protected:
    /**
     * @brief name The name of the item
     */
    char name[32];

    /**
     * @brief price The price of the item
     */
    double price;

    /**
     * @brief calories The number of calories
     */
    int calories;

    FoodItem();
public:
    virtual ~FoodItem();
    virtual FoodItem* copy() = 0;

    virtual void print();
};

#endif // FOODITEM_H
