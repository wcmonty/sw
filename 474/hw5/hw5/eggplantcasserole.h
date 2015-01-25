#ifndef EGGPLANTCASSEROLE_H
#define EGGPLANTCASSEROLE_H

#include <stdlib.h>
#include <iostream>
#include "fooditem.h"

using namespace std;

/**
 * @brief The EggplantCasserole class represents an Eggplant Casserole
 */
class EggplantCasserole : public FoodItem
{
protected:
    /**
     * @brief ounces The number of ounces
     */
    int ounces;

    /**
     * @brief side The side dish
     */
    char side[256];
public:
    EggplantCasserole();
    virtual ~EggplantCasserole();
    virtual EggplantCasserole* copy();

    virtual void print();
};

#endif // EGGPLANTCASSEROLE_H
