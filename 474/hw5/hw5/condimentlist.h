#ifndef INGREDIENTLIST_H
#define INGREDIENTLIST_H

#include <vector>
#include <iostream>

using namespace std;

/**
 * @brief The CondimentList class Represents a list of condiments
 */
class CondimentList
{
protected:
    /**
     * @brief condiments Holds the condiments
     */
    vector<char*> condiments;
public:
    CondimentList();
    ~CondimentList();
    CondimentList (const CondimentList&);
    CondimentList& operator=(CondimentList&);


    friend ostream& operator<< (ostream&, const CondimentList&);
};

#endif // INGREDIENTLIST_H
