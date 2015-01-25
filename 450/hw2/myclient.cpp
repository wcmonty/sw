/**
 * @file myclient.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This program transfers a file to a remote server, possibly through an intermediary relay.  The server will respond with an acknowledgement. This program then calculates the round-trip time from the start of transmission to receipt of the acknowledgement.
*/

#include <netdb.h>

#include "sender.h"

using namespace std;

void processArgs(int, char**);

// Global
int TIMEOUT = 200;              /*!< The number of times to read an ack before retrying */
int SLEEPTIME = 3000;           /*!< The time in microseconds between reads for an ack */

// Constants
const int PACKET_TYPE = 1;      /*!< The packet type for a file transfer */
const int MAX_PARAM_SIZE = 255; /*!< The maximum size of a parameter */

// Static variables
static bool useRelay = false;   /*!< True if we should use a relay */
static char serverString[MAX_PARAM_SIZE] = "127.0.0.1";
                                /*!< The string representing the the default server */
static u_int32_t server;        /*!< The address of the server */

static char serverPortString[MAX_PARAM_SIZE] = "54323";
                                /*!< The string representing the default server port */
static u_int16_t serverPort;    /*!< The port of the server */

static char relayString[MAX_PARAM_SIZE] = "127.0.0.1";
                                /*!< The string representing the default relay */
static u_int32_t relay;         /*!< The address of the relay */

static char relayPortString[MAX_PARAM_SIZE] = "54322";
                                /*!< The string representing the default port of the relay */
static u_int16_t relayPort;     /*!< The port of the relay */

/**
 * @brief main main
 * @param argc The argument count
 * @param argv The argument values
 * @return 0 if no error, 1 otherwise
 */
int main(int argc, char **argv)
{
    char buffer[MAX_PARAM_SIZE];

    cout << "myClient by William Montgomery (wmontg2@uic.edu)"  << endl;

    // Process the command line arguments
    processArgs(argc, argv);

    cout << endl;

    // Set TIMEOUT and SLEEPTIME
    cout << "Enter time to sleep between reads in microseconds [" << SLEEPTIME << "]:" << endl;
    fgets(buffer, sizeof buffer, stdin);
    int i = atoi(buffer);

    if (i <= 0)
    {
        cout << "Using default of " << SLEEPTIME << " microseconds." << endl;
    }
    else
    {
        SLEEPTIME = i;
        cout << "Using " << SLEEPTIME << " microseconds." << endl;
    }
    cout << "Enter the number of times to try [" << TIMEOUT << "]:" << endl;
    fgets(buffer, sizeof buffer, stdin);
    i = atoi(buffer);

    if (i <= 0)
    {
        cout << "Using default of " << TIMEOUT << " times." << endl;
    }
    else
    {
        TIMEOUT = i;
        cout << "Using " << TIMEOUT << " times." << endl;
    }

    // Interact with user to send out messages
    Sender *sender = new Sender(server, serverPort, relay, relayPort);
    sender->send();
    delete sender;

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
