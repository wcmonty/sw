/**
 * @file sender.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This file encapsulate the sender of messages for a client
*/

#include <sys/time.h>
#include "sender.h"

/**
 * @brief Sender::Sender Constructor for Sender
 * @param server The final destination address
 * @param serverPort The final destination port
 * @param relay The relay address
 * @param relayPort The relay port
 */
Sender::Sender(u_int32_t server, u_int16_t serverPort, u_int32_t relay, u_int16_t relayPort)
{
    this->server = server;
    this->serverPort = serverPort;
    this->relay = relay;
    this->relayPort = relayPort;

    this->totalTime = 0;
    this->totalBytes = 0;
}

/**
 * @brief Sender::sendPacket Send a single packet
 * @param socket The socket to use
 * @param message The message
 * @param iteration The position of the packet in the message
 * @param server The server to send to
 * @return this
 */
Sender* Sender::sendPacket(UDP_Socket *socket, Message *message,
                           unsigned int iteration,  struct	sockaddr_in *server)
{
    int bytes_received;
    PacketWrapper *buffer = new PacketWrapper();
    bool got_ack = false;
    bool retry = false;

    do {

        // Initialize
        bytes_received = 0;
        if (retry) message->incrementResentPackets();

        // Send a message
        sendto(socket->getSocketFD(), message->getPacketAt(iteration), sizeof(PacketWrapper), 0,
               (sockaddr *) server, sizeof(struct sockaddr_in));

        // Try to read an ack TIMEOUT times
        int counter = 0;
        while (counter < TIMEOUT && !got_ack){
            // Give a small break to let packets propogate back
            usleep(SLEEPTIME);

            // Receive the acks
            bytes_received = recv (socket->getSocketFD(), (void*)buffer->getHeader(),
                                   sizeof(CS450Header), 0);

            // Check if is a good header
            if (bytes_received == sizeof(CS450Header)
                    && iteration == buffer->getAckNumber()
                    && message->getTransactionNumber() == buffer->getTransactionNumber())
            {
                got_ack = true;

            }
            // It was a header, but the information was not good
            // discard and print it.
            else if (bytes_received == sizeof(CS450Header))
            {
//                cout << "Got a bad header!!!!!!!!!!" << endl;
//                buffer->printHeader();
                counter++;
            }
            // Otherwise, try again
            else
            {
                counter++;
            }
        }
        retry = true;
    } while (!got_ack);

    return this;
}

/**
 * @brief Sender::sendAndReceiveMessages Send all of the packets out
 * @param filename The name of the file
 * @return this
 */
Sender* Sender::sendAndReceiveMessages(char *filename)
{
    struct timeval begin;
    struct timeval end;
    long int time;

    // Create a socket
    UDP_Socket *socket = new UDP_Socket();
    socket->setNonblocking();

    // Create a new message
    Message *message = new Message(filename,
                                   server, serverPort,
                                   relay, relayPort,
                                   socket->getIP(), socket->getPort());

    // Set up the server socket address struct
    struct sockaddr_in server;
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = htonl(this->relay);
    server.sin_port = htons(this->relayPort);

    // Send the packets
    gettimeofday(&begin, NULL);
     /// @todo set up the from field
    for (unsigned int i = 0; i < message->getNumberPackets(); i++) {
        sendPacket(socket, message, i, &server);
    }
    gettimeofday(&end, NULL);
    time = (end.tv_usec + 1000000 * end.tv_sec) - (begin.tv_usec + 1000000 * begin.tv_sec);

    // Print out results
    cout << "This transfer took " << time << " microseconds." << endl;
    cout << "Sent: " << message->getNumberPackets() << endl;
    cout << "Resent: " << message->resent_packets << endl;

    // Clean up
    delete socket;
    delete message;
    return this;
}

/**
 * @brief Sender::send Interact with the user to send out messages, opens up a new connection between messages.
 * @return this
 */
Sender* Sender::send()
{

    int menuChoice = 2;
    char filename[MAX_PARAM_SIZE];
    bzero(filename, MAX_PARAM_SIZE);

    // Loop through the menu
    do {
        menuChoice = 2;
        cout << endl;
        cout << "1. Send a file" << endl;
        cout << "2. Exit" << endl;
        cin >> menuChoice;

        // Connect to the remote
        // Send a message and receive a response
        if (menuChoice == 1)
        {
            cout << endl;
            cout << "Enter the filename: " << endl;
            cin >> setw(MAX_PARAM_SIZE - 1) >> filename;
            sendAndReceiveMessages(filename);
        }

        // Catch bogus entries and
        else if (menuChoice != 2)
        {
            cout << "ERROR: Input not understood." << endl;
            exit(1);
        }

    } while (menuChoice != 2);

    return this;
}
