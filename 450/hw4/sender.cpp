/**
 * @file sender.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This file encapsulate the sender of messages for a client
*/

#include <sys/time.h>
#include <poll.h>
#include <errno.h>
#include "sender.h"

static bool DEBUG = false;
static int TIMEOUT = 2;
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
    while (!(timers.empty()))
    {
        delete (timers.back());
        timers.pop_back();
    }
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
    if (DEBUG)
    {
        cout << "Setting next sequence number to: " << currentMessage->getReceiveBase() << endl;
    }

    currentMessage->setNextSeqNum(currentMessage->getReceiveBase());
    return this;
}


void Sender::setNextTimer()
{
    if (DEBUG)
    {
        cout << "Setting the next timer." << endl;
    }

    while (!(timers.empty()))
    {
        Timer *timer = timers.front();
        if (DEBUG)
        {
            cout << "The timer is for packet " << timer->getIndex() << "." << endl;
        }

        /// If it is already acked remove it
        if (currentMessage->isAcked(timer->getIndex()))
        {
            delete(timer);
            timers.pop_front();
        }
        /// If it is not acked, but is finished
        /// go ahead and send the packet
        else if (timer->isFinished())
        {
            if (DEBUG)
            {
                cout << "Resending packet at "
                     << timer->getIndex()
                     << " because timer passed." << endl;
            }
            sendPacket(timer->getIndex());
            currentMessage->incrementResentPackets();
            delete (timer);
            timers.pop_front();
            break;
        }
        /// Otherwise, we need to set the alarm on
        /// this timer
        else
        {
            break;
        }
    }

    if (!(timers.empty()))
    {
        setAlarm(timers.front()->getRemainingTime());
    }
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

    Sender *self = Sender::getSender();
    self->currentMessage->setNextSeqNum(self->currentMessage->getReceiveBase());

    /// Remove the first timer
    if (!(self->timers.empty()))
    {
        delete (self->timers.front());
        self->timers.pop_front();
    }

    if (DEBUG) {
        cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
    }

    return;
}

/**
 * @brief Sender::clearAlarm Clears an alarm
 * @return this
 */
Sender* Sender::clearAlarm()
{
    if (DEBUG)
    {
        cout << "Clearing the alarm." << endl;
    }
    alarm(0);
    return this;
}

/**
 * @brief Sender::setAlarm Sets an alarm
 * @return this
 */
Sender* Sender::setAlarm(long int time)
{
    struct sigaction sact;

    sigemptyset( &sact.sa_mask );
    sact.sa_flags = 0;
    sact.sa_handler = Sender::handleTimeout;
    sigaction(SIGALRM, &sact, NULL );

    if (time < 1000000)
    {
        if (DEBUG)
        {
            cout << "Setting an alarm for " << time << " microseconds." << endl;
        }
        ualarm(time, 0);
    }
    else
    {
        if (DEBUG)
        {
            cout << "Setting an alarm for " << TIMEOUT << " seconds." << endl;
        }
        alarm(TIMEOUT);
    }
    return this;
}

/**
 * @brief Sender::processAck Processes an ack
 * @param packet The packet containing the ack
 * @return this
 */
Sender* Sender::processAck(PacketWrapper *packet)
{
    if (DEBUG)
    {
        cout << "I am in processAck()" << endl;
    }
    unsigned int bufferAckNumber = packet->getAckNumber();
    windowSize = packet->getWindowSize();

    currentMessage->setAcked(bufferAckNumber - 1);

    int i = currentMessage->getReceiveBase();
    while (currentMessage->isAcked(i))
    {
        if (DEBUG)
        {
            cout << "Packet at " << i  << " is acked." << endl;
        }
        i++;
    }
    if (DEBUG)
    {
        cout << "Setting receive base to: " << i << endl;
    }
    currentMessage->setReceiveBase(i);

    if (currentMessage->getNextSeqNum() < currentMessage->getReceiveBase())
    {
        if (DEBUG)
        {
            cout << "Setting next sequence number to: " << i << endl;
        }
        currentMessage->setNextSeqNum(i);
    }

    return this;
}

bool Sender::noWaitingAcks()
{
    struct pollfd fds;

    int fdcount = 1;
    fds.fd = socket->getSocketFD();
    fds.events = POLLIN;

    if(DEBUG)
    {
        cout << "There are " << poll(&fds, fdcount, 1) << " waiting acks." << endl;
    }
    return (poll(&fds, fdcount, 0) < 1);
}

void Sender::sendPacket(int i)
{
    sendto(socket->getSocketFD(),
        currentMessage->getPacketAt(i)->getPacket(),
        sizeof(Packet), 0, (sockaddr *) &server_addr,
        sizeof(struct sockaddr_in));
    Timer *timer = new Timer(i, TIMEOUT);
    timers.push_back(timer);
    if (timers.size() == 1){
        if (DEBUG)
        {
            cout << "Setting an alarm on packet "  << i << "." << endl;
        }
        setAlarm(timer->getRemainingTime());
    }
    if (currentMessage->isSent(i))
    {
        currentMessage->incrementResentPackets();
    }
    else
    {
        currentMessage->setSent(i);
    }
}

/**
 * @brief Sender::sendUnsentPackets Sends all unsent packets
 * @return this
 */
Sender* Sender::sendUnsentPackets()
{
    if (DEBUG)
    {
        cout << "Receive base is: " << currentMessage->getReceiveBase() << endl;
        cout << "Next Sequence number is: " << currentMessage->getNextSeqNum() << endl;
    }
    int endOfWindow = currentMessage->getReceiveBase() + windowSize;
    int numberOfPackets = currentMessage->getNumberPackets();

    int i;
    for (i = currentMessage->getNextSeqNum();
         i <  numberOfPackets
         && i <= endOfWindow
         && noWaitingAcks()
         ; i++)
    {
        if (DEBUG) {
            cout << "Sending packet at " << i << " of "
                 << currentMessage->getNumberPackets() << "." << endl;
            ((PacketWrapper*)(currentMessage->getPacketAt(i)->getPacket()))->printHeader();
        }
        if (currentMessage->isNotAcked(i))
        {
            sendPacket(i);
        }
        if (DEBUG)
        {
            cout << "Setting next sequence number to: " << i << endl;
        }
        currentMessage->setNextSeqNum(i);
    }

    currentMessage->setNextSeqNum(i);
    setNextTimer();

    return this;
}

void Sender::readAndProcessAck()
{
    if (DEBUG)
    {
        cout << "I am in readAndProcessAck()." << endl;
    }
    PacketWrapper buffer;
    int bytes_received = 0;

    if (DEBUG)
    {
        cout << "Starting to read ack." << endl;
    }
    bytes_received = recv (socket->getSocketFD(), (void*)buffer.getPacket(),
                           sizeof(Packet), 0);

    if (DEBUG)
    {
        cout << "Finished reading ack." << endl;
    }
    // Check if is a good header
    if (bytes_received == sizeof(Packet)
            && buffer.isValid()
            && currentMessage->getTransactionNumber() ==
               buffer.getTransactionNumber())
    {
        // Take care of the acknumber
        processAck(&buffer);
        if (DEBUG) {
            buffer.printHeader();
        }
        setNextTimer();
    }
    else
    {
        if (DEBUG)
        {
            perror("Error reading socket");
        }
    }
}

/**
 * @brief Sender::sendAllPackets Sends all packets and processes acks
 * @return this
 */
Sender* Sender::sendAllPackets()
{

    do {
        sendUnsentPackets();
        readAndProcessAck();
        /// @todo change this to actually reflect when
        /// a message is actually sent.  Message should have
        /// a successfully sent var
    } while (currentMessage->isMoreToSend());

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
