#include <limits.h>
#include <string.h>
#include "condimentlist.h"

/**
 * @brief CondimentList::CondimentList Default constructor
 */
CondimentList::CondimentList()
{
    char buffer[256];
    char *input;
    bool more = true;

    cin.getline(buffer, 256);

    /// Read in values
    do {
        cout << "Enter a condiment (or enter if done): ";
        cin.getline(buffer, 256);

        /// A blank line exits the loop
        if (strlen(buffer) <= 0) {
            more = false;
        }
        /// Otherwise we push it into the condiments
        else {
            input = new char[strlen(buffer) + 1];
            strncpy(input, buffer, strlen(buffer) + 1);
            condiments.push_back(input);
        }
        input = NULL;
    } while (more);

}

/**
 * @brief CondimentList::~CondimentList Destructor
 */
CondimentList::~CondimentList()
{
    while(!condiments.empty())
    {
        delete[](condiments.back());
        condiments.pop_back();
    }
}

/**
 * @brief CondimentList::CondimentList Copy Constructor
 * @param other The other CondimentList
 */
CondimentList::CondimentList(const CondimentList &other)
{
    char *temp;
    for( vector<char*>::const_iterator i = other.condiments.begin();
         i != other.condiments.end(); i++)
    {
        temp = new char[strlen(*i) + 1];
        strncpy(temp, *i, strlen(*i) + 1);
        this->condiments.push_back(temp);
    }
}

/**
 * @brief CondimentList::operator = The copy assignment operator
 * @param other The other list
 * @return *this
 */
CondimentList& CondimentList::operator=(CondimentList& other)
{
    while (!condiments.empty())
    {
        delete[](condiments.back());
        condiments.pop_back();
    }

    char *temp;

    for( vector<char*>::const_iterator i = other.condiments.begin();
         i != other.condiments.end(); i++)
    {
        temp = new char[strlen(*i) + 1];
        strncpy(temp, *i, strlen(*i) + 1);
        this->condiments.push_back(temp);
    }

    return *this;
}

/**
 * @brief operator << Overloads the << operator for streams
 * @param stream The output stream
 * @param list The CondimentList
 * @return The output stream
 */
ostream& operator<< (ostream& stream, const CondimentList& list)
{
    unsigned int itemNumber = 1;
    for( vector<char*>::const_iterator i = list.condiments.begin();
         i != list.condiments.end(); i++)
    {
        stream << itemNumber << ". " << *i << endl;
        itemNumber++;
    }
    return stream;
}

