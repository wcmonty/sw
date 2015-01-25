#ifndef SALMON_H
#define SALMON_H

#include <stdlib.h>
#include <iostream>
#include "fooditem.h"
#include "temperature.h"

using namespace std;

/**
 * @brief The Salmon class Represents a Salmon dish
 */
class Salmon : public FoodItem
{
protected:
    /**
     * @brief done The desired doneness
     */
    Temperature done;

    /**
     * @brief side The side dish
     */
    char side[256];
public:
    Salmon();
    virtual ~Salmon();
    virtual Salmon* copy();

    virtual void print();

};

#endif // SALMON_H
