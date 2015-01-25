#include "breadchoice.h"

char BreadChoice::breadString[NUMBREADS][32] = {"White", "Whole Wheat", "Rye"};

/**
 * @brief BreadChoice::BreadChoice Default Constructor
 */
BreadChoice::BreadChoice()
{
    int selection;
    bool invalid = true;

    /// Get the selection
    do {
        for (int i = 0; i < NUMBREADS; i++)
        {
           cout << i + 1 << ". " << breadString[i] << endl;
        }
        cin >> selection;

        /// Set the selection
        if (isValid(selection - 1))
        {
            bread = (Bread)(selection - 1);
            invalid = false;
        }
    } while (invalid);
}

/**
 * @brief BreadChoice::isValid Returns whether an enumeration is a valid enumeration
 * @param enumeration The enumeration to check
 * @return true if valid, false otherwise
 */
bool BreadChoice::isValid(int enumeration)
{
    return !(enumeration < 0 || enumeration >= NUMBREADS);
}

/**
 * @brief operator << Overloading the << operator for streams
 * @param stream The output stream
 * @param instance The instance to output
 * @return The output stream
 */
ostream& operator<< (ostream& stream, const BreadChoice& instance)
{
    stream << instance.breadString[instance.bread];
    return stream;
}
