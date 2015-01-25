/**
 * @file main.cpp The driver for the program
 * @author William Montgomery
 * @date April 2014
 */


#include <iostream>
#include "bst.h"

using namespace std;

/**
 * @brief printMenu Prints out a menu of options
 */
void printMenu()
{
    cerr << endl;
    cerr << "Enter your choice:" << endl;
    cerr << "q - Quit this program" << endl;
    cerr << "e - Clear set 1" << endl;
    cerr << "s - Switch sets" << endl;
    cerr << "c - Copy set 1 to set 2" << endl;
    cerr << "a [string] - Add element to set 1" << endl;
    cerr << "r [string] - Remove element from set 1" << endl;
    cerr << "u - Union of set 1 and set 2 into set 1" << endl;
    cerr << "i - Intersection of set 1 and set 2 into set 1" << endl;
    cerr << endl;
}


/**
 * @brief performAction Reads in user input and then performs the action
 * @param set1 The first set
 * @param set2 The second set
 * @return True if there are more actions to process
 */
bool performAction(BST &set1, BST &set2)
{
    char input;
    string buffer;
    cin >> input;
    switch(input)
    {
    case 'q':
        cout << "Goodbye" << endl;
        break;
    case 'e':
        set1.clear();
        break;
    case 's':
        set1.switchSets(&set2);
        break;
    case 'c':
        set2.copy(&set1);
        break;
    case 'a':
        cin.ignore(1);
        getline (cin, buffer);
        set1.insert(buffer);
        break;
    case 'r':
        cin.ignore(1);
        getline (cin, buffer);
        set1.remove(buffer);
        break;
    case 'u':
        set1.unionWith(&set2);
        break;
    case 'i':
        set1.intersectionWith(&set2);
        break;
    case 'l':
        cout << "Set 1: " << set1 << endl;
        cout << "Set 2: " << set2 << endl;
        break;
    default:
        cout << "Input not understood.  Please try again." << endl;
        break;
    }

    return input != 'q';
}

/**
 * @brief main The main function
 * @return 0, unless there is an error
 */
int main(void)
{
    BST set1;
    BST set2;

    cout << "Set Calculator by William Montgomery (wmontg2)" << endl;

    bool more;
    do {
        printMenu();
        more = performAction(set1, set2);
    } while (more);

    return 0;
}

