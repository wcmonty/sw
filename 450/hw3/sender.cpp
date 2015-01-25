/**
 * @file sender.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This file encapsulate the sender of messages for a client
*/

#include <sys/time.h>
#include "sender.h"

static bool DEBUG = false;
Sender* Sender::instance = NULL;

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
    this->windowSize = 0;
    this->totalTime = 0;
    this->totalBytes = 0;

    // Create a socket
    socket = new UDP_Socket();
    currentMessage = NULL;

    // Set up the server socket address struct
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(this->relay);
    server_addr.sin_port = htons(this->relayPort);
}

/**
 * @brief Sender::~Sender Destructor
 */
Sender::~Sender()
{
    delete socket;
}

/**
 * @brief Sender::getSender Gets the Singleton, if it has been created
 * @return The Singleton
 */
Sender* Sender::getSender()
{
    return instance;
}

/**
 * @brief Sender::getSender Creates or gets the Singleton
 * @param server The server IP
 * @param serverPort The server port
 * @param relay The relay IP
 * @param relayPort The relay port
 * @return The Singleton
 */
Sender* Sender::getSender(u_int32_t server, u_int16_t serverPort, u_int32_t relay, u_int16_t relayPort)
{
    if (instance == NULL)
    {
        instance = new Sender(server, serverPort, relay, relayPort);
    }
    return instance;
}

/**
 * @brief Sender::clearSentButNotAcked Clears all sent messages but not acked
 * @return this
 */
Sender* Sender::clearSentButNotAcked()
{
    currentMessage->resent_packets += (currentMessage->getNextSeqNum() - last_ack);
    currentMessage->setNextSeqNum(last_ack);
    return this;
}

/**
 * @brief Sender::handleTimeout Handles a timeout condition
 */
void Sender::handleTimeout(int)
{
    if (DEBUG) {
        cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
        cout << "I am handling a timer interruption."  << endl;
    }
    Sender* self = Sender::getSender();
    self->clearSentButNotAcked();
    self->sendUnsentPackets();
    if (DEBUG) {
        cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
    }
}

/**
 * @brief Sender::clearAlarm Clears an alarm
 * @return this
 */
Sender* Sender::clearAlarm()
{
    alarm(0);
    return this;
}

/**
 * @brief Sender::setAlarm Sets an alarm
 * @return this
 */
Sender* Sender::setAlarm()
{
    struct sigaction sact;

    sigemptyset( &sact.sa_mask );
    sact.sa_flags = 0;
    sact.sa_handler = Sender::handleTimeout;
    sigaction( SIGALRM, &sact, NULL );

    alarm(3);  /* timer will pop in five seconds */
    return this;
}

/**
 * @brief Sender::processAck Processes an ack
 * @param packet The packet containing the ack
 * @return this
 */
Sender* Sender::processAck(PacketWrapper *packet)
{
    unsigned int bufferAckNumber = packet->getAckNumber();
    if (bufferAckNumber > last_ack)
    {
        last_ack = bufferAckNumber;
        last_ack_count = 1;

        currentMessage->setReceiveBase(bufferAckNumber);
        windowSize = packet->getWindowSize();
        if (DEBUG) {
            cout << "Got a window size of " << (int)packet->getWindowSize() << endl;
        }
    }
    else if (bufferAckNumber == last_ack)
    {
        last_ack_count++;
    }

    return this;
}

/**
 * @brief Sender::sendUnsentPackets Sends all unsent packets
 * @return this
 */
Sender* Sender::sendUnsentPackets()
{
    int i;
    int endOfWindow = currentMessage->getReceiveBase() + windowSize;
    int numberOfPackets = currentMessage->getNumberPackets();

    if (currentMessage->getReceiveBase() == currentMessage->getNextSeqNum())
    {
        if (DEBUG) {
            cout << "Setting an alarm." << endl;
        }
        setAlarm();
    }

    for (i = currentMessage->getNextSeqNum();
         i <  numberOfPackets &&
         i <= endOfWindow; i++)
    {
        if (DEBUG) {
            cout << "Sending packet at " << i << " of "
                 << currentMessage->getNumberPackets() << "." << endl;
            ((PacketWrapper*)(currentMessage->getPacketAt(i)->getPacket()))->printHeader();
        }

        sendto(socket->getSocketFD(),
            currentMessage->getPacketAt(i)->getPacket(),
            sizeof(Packet), 0, (sockaddr *) &server_addr,
            sizeof(struct sockaddr_in));

    }
    currentMessage->setNextSeqNum(i);

    return this;
}

/**
 * @brief Sender::sendAllPackets Sends all packets and processes acks
 * @return this
 */
Sender* Sender::sendAllPackets()
{
    // Initialize
    PacketWrapper buffer;
    int bytes_received = 0;

    do {
        sendUnsentPackets();
        // Receive the acks
        bytes_received = recv (socket->getSocketFD(), (void*)buffer.getPacket(),
                               sizeof(Packet), 0);

        // Check if is a good header
        if (bytes_received == sizeof(Packet)
                && buffer.isValid()
                && currentMessage->getTransactionNumber() == buffer.getTransactionNumber())
        {
            // Take care of the acknumber
            processAck(&buffer);
            if (DEBUG) {
                buffer.printHeader();
            }
        }

    } while (last_ack < currentMessage->getNumberPackets());

    clearAlarm();
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



    // Create a new message
    currentMessage = new Message(filename,
                                   server, serverPort,
                                   relay, relayPort,
                                   socket->getIP(), socket->getPort());



    // Send the packets
    gettimeofday(&begin, NULL);
     /// @todo set up the from field
    last_ack = 0;
    last_ack_count = 0;
    sendAllPackets();
    gettimeofday(&end, NULL);
    time = (end.tv_usec + 1000000 * end.tv_sec) - (begin.tv_usec + 1000000 * begin.tv_sec);

    // Print out results
    cout << "This transfer took " << time << " microseconds." << endl;
    cout << "Sent: " << currentMessage->getNumberPackets() << endl;
    cout << "Resent: " << currentMessage->resent_packets << endl;

    // Clean up
    delete currentMessage;
    currentMessage = NULL;
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
