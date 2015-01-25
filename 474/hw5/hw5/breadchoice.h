#ifndef BREADCHOICE_H
#define BREADCHOICE_H

#include <iostream>

using namespace std;

static const int NUMBREADS = 3;

/**
 * @brief The Bread enum Maps the possible types of bread
 */
enum Bread
    {WHITE = 0, WHOLEWHEAT = 1, RYE = 3};

/**
 * @brief The BreadChoice class Represents a choice in breads
 */
class BreadChoice
{
protected:
    /**
     * @brief breadString Maps enums to strings
     */
    static char breadString[NUMBREADS][32];

    /**
     * @brief bread The bread chosen
     */
    Bread bread;

    bool isValid(int);
public:
    BreadChoice();

    friend ostream& operator<< (ostream&, const BreadChoice&);
};

#endif // BREADCHOICE_H
