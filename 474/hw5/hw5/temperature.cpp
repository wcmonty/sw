#include "temperature.h"

char Temperature::donesnessString[NUMTEMPS][32] = {"Rare", "Medium Rare", "Medium", "Medium Well", "Well Done"};

/**
 * @brief Temperature::Temperature Constructor
 */
Temperature::Temperature()
{
    int selection;
    bool invalid = true;
    do {
        for (int i = 0; i < NUMTEMPS; i++)
        {
           cout << i + 1 << ". " << donesnessString[i] << endl;
        }
        cin >> selection;
        if (isValid(selection - 1))
        {
            doneness = (Doneness)(selection - 1);
            invalid = false;
        }
    } while (invalid);

}

/**
 * @brief Temperature::isValid Evaluates whether the enumeration is valid
 * @param enumeration The enumeration to evaluate
 * @return true if valid, false otherwise
 */
bool Temperature::isValid(int enumeration)
{
    return !(enumeration < 0 || enumeration >= NUMTEMPS);
}

/**
 * @brief operator << Overloads the << operator for streams
 * @param stream The output stream
 * @param temperature The Temperature
 * @return The output stream
 */
ostream& operator<< (ostream& stream, const Temperature& temperature)
{
    stream << temperature.donesnessString[temperature.doneness];
    return stream;
}
