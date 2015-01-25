/**
 * @file myserver.cpp
 * @author William Montgomery
 * @date January 2014
 * @brief This program receives a file from a remote client and sends back an acknowledgement after the entire file has been received.
 * Two possible options for closing the connection:
 *    (1) Send a close command along with the acknowledgement and then close.
 *    (2) Hold the connection open waiting for additional files / commands.
 * The "persistent" field in the header indicates the client's preference.
*/

#include <stdlib.h>

#include "message.h"
#include "processor.h"
#include "socket.h"

// Constants
const int PACKET_TYPE = 2;
static const int PORT = 54321;

/**
 * @brief main main
 * @param argc The argument count
 * @param argv The argument value
 * @return this
 */
int main(int argc, char **argv)
{
    cout << "myServer by William Montgomery (wmontg2@uic.edu)"  << endl;

    // Create a socket object
    Socket *socket;
    if (argc >= 2  && atoi(argv[1])) {
        socket = new Socket(atoi(argv[1]));
    }
    else {
        socket = new Socket(PORT);
    }

    // Create a processor object
    Processor *processor = Processor::getProcessor();

    // Listen to incoming requests and process them
    socket->start_listening(5);  // maximum number of clients waiting to connect
    processor->setSocket(socket)->process();

    // Clean up
    delete processor;
    delete socket;

    return EXIT_SUCCESS;
}
