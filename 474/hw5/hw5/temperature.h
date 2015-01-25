#ifndef TEMPERATURE_H
#define TEMPERATURE_H

#include <iostream>

using namespace std;

/**
 * @brief NUMTEMPS The number of temps in the enum
 */
static const int NUMTEMPS = 5;

/**
 * @brief The Doneness enum An enumeration with all possible values of the Doneness
 */
enum Doneness
    {RARE = 0, MEDIUMRARE = 1, MEDIUM = 2, MEDIUMWELL = 3, WELLDONE = 4};

class Temperature
{
protected:
    /**
     * @brief donesnessString Strings representing all of the enumeration values
     */
    static char donesnessString[NUMTEMPS][32];

    /**
     * @brief doneness The selected doneness
     */
    Doneness doneness;

    bool isValid(int);
public:
    Temperature();

    friend ostream& operator<< (ostream&, const Temperature&);

};

#endif // TEMPERATURE_H
