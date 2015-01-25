/**
 * @file myserver.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This program receives a file from a remote client and sends back an acknowledgement after the entire file has been received.
 * Two possible options for closing the connection:
 *    (1) Send a close command along with the acknowledgement and then close.
 *    (2) Hold the connection open waiting for additional files / commands.
 * The "persistent" field in the header indicates the client's preference.
*/

#include <stdlib.h>

#include "message.h"
#include "processor.h"
#include "udp_socket.h"

// Constants
const int PACKET_TYPE = 2; /*!< The packet type for a file transfer */
static int port = 54323;   /*!< The default port to bind to */

/**
 * @brief main main
 * @param argc The argument count
 * @param argv The argument value
 * @return this
 */
int main(int argc, char **argv)
{
    cout << "myServer by William Montgomery (wmontg2@uic.edu)"  << endl;

    // Create a socket object and listen to incoming requests
    UDP_Socket *socket = new UDP_Socket(port);

    // Create a processor object
    Processor *processor = Processor::getProcessor();
    processor->setSocket(socket)->process();

    // Clean up
    delete processor;
    delete socket;

    return EXIT_SUCCESS;
}

/**
 * @brief processArgs Process the arguments
 * @param argc The argument count
 * @param argv The argument value
 */
void processArgs(int argc, char **argv)
{
    if (argc >= 2  && atoi(argv[1])) {
        port = atoi(argv[1]);
    }
}