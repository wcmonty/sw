/**
 * @file sender.cpp
 * @author William Montgomery
 * @date January 2014
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
 * @brief Sender::sendAndReceiveMessage  Sends a message and receives a response
 * @param socket  A socket object
 * @param filename The filename to send
 * @param persistent True if the connection is persistent
 * @return this
 */
Sender* Sender::sendAndReceiveMessage(Socket *socket, char *filename, bool persistent)
{
    struct timeval begin;
    struct timeval end;
    long int time;

    // Create and send a message
    Message *outMessage = new Message(socket->getSocketFD(), persistent);

    outMessage->setFrom(socket->getIP(), socket->getPort());
    outMessage->setTo(server, serverPort);

    // Rceive a message
    Message *inMessage = new Message(socket->getSocketFD());

    gettimeofday(&begin, NULL);
    outMessage->writeToSocket(filename);
    inMessage->readFromSocket();
    gettimeofday(&end, NULL);
    inMessage->printHeader();

    time = (end.tv_usec + 1000000 * begin.tv_sec) - (begin.tv_usec + 1000000 * begin.tv_sec);

    totalBytes = totalBytes + (outMessage->getNBytes());
    totalTime += time;

    cout << "This transfer took " << time << " microseconds." << endl;
    cout << "This transfer transmitted " << outMessage->getNBytes() << " bytes." << endl;

    // Clean up
    delete outMessage;
    delete inMessage;

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
        Socket *socket = new Socket();
        socket->connectToRemote(relay, relayPort);

        // Send a message and receive a response
        if (menuChoice == 1)
        {
            cout << endl;
            cout << "Enter the filename: " << endl;
            cin >> setw(MAX_PARAM_SIZE - 1) >> filename;
            sendAndReceiveMessage(socket, filename, false);
        }

        // Catch bogus entries and
        else if (menuChoice != 2)
        {
            cout << "ERROR: Input not understood." << endl;
            socket->disconnect();
            delete socket;
            exit(1);
        }

        // Clean up
        socket->disconnect();
        delete socket;
    } while (menuChoice != 2);

    cout << "It took " << totalTime << " microseconds to send " << totalBytes << " bytes, opening a new connection for each message." << endl;

    return this;
}

/**
 * @brief Sender::sendPersistently Interact with the user to send out messages, keeps the connection open between messages.
 * @return this
 */
Sender* Sender::sendPersistently()
{

    int menuChoice = 0;
    char filename[MAX_PARAM_SIZE];
    bzero(filename, MAX_PARAM_SIZE);

    // Open up the socket
    Socket *socket = new Socket();
    socket->connectToRemote(relay, relayPort);

    // Loop through the menu
    do {
        menuChoice = 0;
        cout << endl;
        cout << "1. Send a file" << endl;
        cout << "2. Exit" << endl;
        cin >> menuChoice;

        // Send a message
        if (menuChoice == 1)
        {
            cout << endl;
            cout << "Enter the filename: " << endl;
            cin >> setw(MAX_PARAM_SIZE - 1) >> filename;
            sendAndReceiveMessage(socket, filename, true);
        }

        // Catch bad input
        else if (menuChoice != 2)
        {
            cout << "ERROR: Input not understood." << endl;
            socket->disconnect();
            delete socket;
            exit(1);
        }
    } while (menuChoice != 2);


    // Send a final message to close down the connection
    Message *outMessage = new Message(socket->getSocketFD(), false);

    outMessage->setFrom(socket->getIP(), socket->getPort());
    outMessage->setTo(server, serverPort);

    Message *inMessage = new Message(socket->getSocketFD());

    outMessage->writeToSocket();
    inMessage->readFromSocket();
    inMessage->printHeader();

    // Clean up
    delete outMessage;
    delete inMessage;
    socket->disconnect();
    delete socket;

    cout << "It took " << totalTime << " microseconds to send " << totalBytes << " bytes, opening a single connection for all messages." << endl;

    return this;
}
