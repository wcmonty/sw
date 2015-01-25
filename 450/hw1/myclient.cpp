/**
 * @file myclient.cpp
 * @author William Montgomery
 * @date January 2014
 * @brief This program transfers a file to a remote server, possibly through an intermediary relay.  The server will respond with an acknowledgement. This program then calculates the round-trip time from the start of transmission to receipt of the acknowledgement, and reports that along with the average overall transmission rate.
*/

#include <netdb.h>

#include "sender.h"

using namespace std;

void processArgs(int, char**);

// Constants
const int PACKET_TYPE = 1;
const int MAX_PARAM_SIZE = 255;

// Static variables
static bool useRelay = false;
static char serverString[MAX_PARAM_SIZE] = "127.0.0.1";
static u_int32_t server;

static char serverPortString[MAX_PARAM_SIZE] = "54321";
static u_int16_t serverPort;

static char relayString[MAX_PARAM_SIZE] = "127.0.0.1";
static u_int32_t relay;

static char relayPortString[MAX_PARAM_SIZE] = "54320";
static u_int16_t relayPort;

/**
 * @brief main main
 * @param argc The argument count
 * @param argv The argument values
 * @return 0 if no error, 1 otherwise
 */
int main(int argc, char **argv)
{
    int menuChoice = 0;
    Sender *sender = NULL;

    cout << "myClient by William Montgomery (wmontg2@uic.edu)"  << endl;

    // Process the command line arguments
    processArgs(argc, argv);

    // Interactively send messages
    do {
        menuChoice = 3;
        cout << endl;
        cout << "Select an option:" << endl;
        cout << "1. Send Files Persistently" << endl;
        cout << "2. Send Files over Different Connections" << endl;
        cout << "3. Exit" << endl;
        cin >> menuChoice;

        // If the user does not want to exit
        if (menuChoice == 1 || menuChoice == 2)
        {
            sender = new Sender(server, serverPort, relay, relayPort);

            // Send persistent messages
            if(menuChoice == 1)
            {
                sender->sendPersistently();
            }
            // Send non-persisten messages
            else if (menuChoice == 2)
            {
                sender->send();

            }
            // Clean up
            delete sender;
            sender = NULL;
        }

        // Catch bad input
        else if (menuChoice != 3)
        {
            cout << "ERROR: Did not understand input.  Exiting!" << endl;
            exit(1);
        }
    } while (menuChoice != 3);

    return EXIT_SUCCESS;
}

/**
 * @brief processArgs Process the arguments.  This is brittle.
 * @param argc The argument count
 * @param argv The argument values
 */
void processArgs(int argc, char **argv)
{
    hostent *host;

    // Process server
    if (argc > 1)
    {
        strncpy(serverString, argv[1], MAX_PARAM_SIZE);
    }

    // Process server port
    if (argc > 2)
    {
        strncpy(serverPortString, argv[2], MAX_PARAM_SIZE);
    }

    // Process relay
    if (argc > 3)
    {
        strncpy(relayString, argv[3], MAX_PARAM_SIZE);
        useRelay = true;
    }

    // Process relay port
    if (argc > 4)
    {
        strncpy(relayPortString, argv[4], MAX_PARAM_SIZE);
    }

    // Set up server
    host = gethostbyname(serverString);
    server = ntohl(((struct in_addr *)(host->h_addr_list[0]))->s_addr);
    serverPort = atoi(serverPortString);

    // Set up relay
    if (useRelay)
    {
        host = gethostbyname(relayString);
        relay = ntohl(((struct in_addr *)(host->h_addr_list[0]))->s_addr);
        relayPort = atoi(relayPortString);
    }
    else
    {
        relay = server;
        relayPort = serverPort;
    }
}
