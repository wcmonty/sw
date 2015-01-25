/**
 * @file message.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief The file holds the method definitions for Message
*/

#include "message.h"
extern int CHANCE;

int Message::session_resent_packets = 0;

/**
 * @brief Message::Message Constructor for a blank message
 */
Message::Message()
{
    initialize();

    this->filename = NULL;
    this->server = 0;
    this->serverPort = 0;
    this->relay = 0;
    this->relayPort = 0;
    this->transactionNumber = 0;
}

/**
 * @brief Message::Message Constructor for a complete message
 * @param filename The filename to send
 * @param server The server ip address in host byte order
 * @param serverPort The server port in host byte order
 * @param relay The relay ip address in host byte order
 * @param relayPort The relay port in host byte order
 * @param myAddress The address of this machine in host byte order
 * @param myPort The port of this machine in host byte order
 *
 * @todo We could probably encapsulate all of these params in
 * a class of some kind.  Would be cleaner.
 */
Message::Message(const char *filename,
                 u_int32_t server,
                 u_int16_t serverPort,
                 u_int32_t relay,
                 u_int16_t relayPort,
                 u_int32_t myAddress,
                 u_int16_t myPort)
{
    initialize();
    srand(time(NULL));

    this->filename = (char*)malloc(strlen(filename) + 1);
    strncpy(this->filename, filename, strlen(filename) + 1);
    this->server = server;
    this->serverPort = serverPort;
    this->relay = relay;
    this->relayPort = relayPort;

    this->myAddress = rand();
    this->myPort = myPort;

    this->transactionNumber = rand();
    makePackets();
}

/**
 * @brief Message::initialize Initializes instance
 * @return this
 */
Message* Message::initialize()
{
    this->resent_packets = 0;

    this->number_packets = 0;
    this->successfully_sent = 0;
    this->receive_base = 0;
    this->next_seq_num = 0;
    return this;
}

/**
 * @brief Message::initialize Initializes from a packet.
 * @param packet The packet
 * @return this
 */
Message* Message::initialize(PacketWrapper *packet)
{
    int length = strlen(packet->getFilename()) + 1;
    this->filename = (char*)malloc(length);
    strncpy(this->filename, packet->getFilename(), length);
    this->transactionNumber = packet->getTransactionNumber();

    return this;
}

/**
 * @brief Message::~Message Destructor
 */
Message::~Message()
{
    while(!packets.empty())
    {
        delete packets.back();
        packets.pop_back();
    }
    free (filename);
}

/**
 * @brief Message::makePackets Make packets out of a file.
 * @return this
 */
void Message::createPacket(unsigned int i, char *mappedFile, struct stat statistics)
{
    PacketWrapper *packet = new PacketWrapper();
    packet->setTransactionNumber(this->transactionNumber);
    packet->setSequenceNumber(i + 1);
    packet->setToIP(server);
    packet->setToPort(serverPort);
    packet->setFilename(filename);

    packet->setFromIP(myAddress);
    packet->setFromPort(myPort);

    packet->setPacketType(1);
    packet->setTotalBytes(statistics.st_size);
    packet->setSaveFile(true);

    packet->setGarbleChance(CHANCE);
    packet->setDropChance(CHANCE);
    packet->setDelayChance(CHANCE);
    packet->setDupeChance(CHANCE);
    packet->setProtocol(PROTOCOL);


    /// @todo set this from const.
    packet->setWindowSize(8);

    // If this is the last packet
    if (i == this->number_packets - 1)
    {
        unsigned int size = statistics.st_size % BLOCKSIZE;
        if (size == 0) size = BLOCKSIZE;
        packet->setNBytes(size);
        packet->setData(mappedFile + (i * BLOCKSIZE), size);
    }
    // If this is not the last packet
    else
    {
        packet->setNBytes(BLOCKSIZE);
        packet->setData(mappedFile + (i * BLOCKSIZE), BLOCKSIZE);
    }

    // Calculate and set the checksum
    packet->doChecksum();

    packets.push_back(packet);
}

/**
 * @brief Message::makePackets Make the packets
 * @return this
 */
Message* Message::makePackets()
{
    struct stat statistics;
    int fd;
    char *mappedFile;

    // Get the size of the file
    if (stat((char *)filename, &statistics) < 0)
    {
       perror("ERROR could not get statistics");
       exit(1);
    }

    // Open the file
    fd = open((char *)filename, O_RDONLY);
    if (fd < 0)
    {
       perror("ERROR could not open file");
       exit(1);
    }

    // Memory map the file to read and write it to the buffer
    mappedFile = (char*)mmap (0, statistics.st_size, PROT_READ, MAP_SHARED, fd, 0);
    if (mappedFile < 0)
    {
        perror("ERROR could not map file");
        exit(1);
    }

    // Figure out how many Packets we need to send.
    if (statistics.st_size % BLOCKSIZE == 0)
    {
        this->number_packets = statistics.st_size / BLOCKSIZE;
    }
    else
    {
        this->number_packets = (statistics.st_size / BLOCKSIZE) + 1;
    }

    // Create the packets and put them in the packets vector
    for (unsigned int i = 0; i < this->number_packets; i++)
    {
        // Initialize the packet
        createPacket(i, mappedFile, statistics);
    }

    return this;
}

/**
 * @brief Message::writeFile Writes a file to disk.  Uses the filename in the first packet.
 * @return this
 */
Message* Message::writeFile()
{
    // If the first packet indicates we should save the file
    // and there is a filename
    if(packets.front()->isSaveFile() && strlen(packets.front()->getFilename()))
    {
        char filename[255] = "./";
        strncpy(filename + 2, this->filename, 32);

        // Open the file
        int fd = open(filename, O_RDWR | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
        if (fd < 0)
        {
            perror("ERROR opening file for writing");
            exit(1);
        }

        // Write each packet to the file
        for (unsigned int i = 0; i < number_packets; i++)
        {
            write(fd, packets[i]->getData(), packets[i]->getNBytes());
        }

        close (fd);
    }

    return this;
}

/**
 * @brief Message::getReceiveBase Getter for receive_base
 * @return The receive_base
 */
unsigned int Message::getReceiveBase()
{
    return receive_base;
}

/**
 * @brief Message::setReceiveBase Setter for receive_base
 * @param receive_base The new base
 * @return this
 */
Message* Message::setReceiveBase(unsigned int receive_base)
{
    this->receive_base = receive_base;
    return this;
}

/**
 * @brief Message::getNextSeqNum Getter for next_seq_num
 * @return next_seq_num
 */
unsigned int Message::getNextSeqNum()
{
    return next_seq_num;
}

/**
 * @brief Message::setNextSeqNum Setter for next_seq_num
 * @param next_seq_num The next sequence number
 * @return this
 */
Message* Message::setNextSeqNum(unsigned int next_seq_num)
{
    this->next_seq_num = next_seq_num;
    return this;
}

Message* Message::setAcked(unsigned int i)
{
    if (packets[i]->receivedAck == false)
    {
        packets[i]->receivedAck = true;
        successfully_sent++;
    }
    return this;
}

bool Message::isAcked(unsigned int i)
{

    return packets.size() > i && packets[i]->receivedAck;
}

bool Message::isNotAcked(unsigned int i)
{
    return !(isAcked(i));
}

bool Message::isSent(unsigned int i)
{
    return packets[i]->isSent();
}

bool Message::isNotSent(unsigned int i)
{
    return !(packets[i]->isSent());
}

Message* Message::setSent(unsigned int i)
{
    packets[i]->setSent();
    return this;
}


/**
 * @brief Message::getTransactionNumber Getter for transaction number
 * @return The transaction number
 */
u_int32_t Message::getTransactionNumber()
{
    return this->transactionNumber;
}

/**
 * @brief Message::getNumberPackets Getter for the number of packets
 * @return The number of packets
 */
unsigned int Message::getNumberPackets()
{
    return this->number_packets;
}

/**
 * @brief Message::getPacketAt Getter for an indexed packet
 * @param position The position, starting from 0
 * @return A pointer to the packet
 */
PacketWrapper* Message::getPacketAt(int position)
{
    return packets[position];
}

/**
 * @brief Message::pushPacket Pushes a packet onto the end of the message.
 * If there packet is not the next one, it is deleted.
 * @param packet The packet to push
 * @return true if successful, false otherwise
 */
bool Message::pushPacket(PacketWrapper *packet)
{
    // If there are packets in the message
    if (number_packets)
    {
        int index = packet->getSequenceNumber() - 1;
        if (packets[index] == NULL)
        {
            cout << "Pushing a packet." << endl;
            packets[index] = packet;
            number_packets++;
            return true;
        }
        else
        {
            cout << "Received a duplicate packet with sequence number"
                 << packet->getSequenceNumber() << endl;
            delete packet;
        }
    }
    // If there are no packets in the message and this is the first packet
    else if (packet->getSequenceNumber() == 1)
    {
        initialize(packet);
        // Make it big enough that all packets will fit
        unsigned int expectedNumberOfPackets = (packet->getTotalBytes() / BLOCKSIZE) + 1;
        packets.resize(expectedNumberOfPackets, NULL);
        packets[0] = packet;
        number_packets = 1;
        return true;
    }
    // Otherwise
    else
    {
        delete packet;
    }
    return false;
}

/**
 * @brief Message::isComplete Whether or not the message is complete
 * @return true if all of the packets have been pushed
 */
bool Message::isComplete()
{
    cout << "Checking if message is complete." << endl;
    if (!(packets.empty())) {
        cout << "packets.front()->getTotalBytes() : " << packets.front()->getTotalBytes() << endl;
        cout << "number_packets * BLOCKSIZE: " << number_packets * BLOCKSIZE << endl;
    }

    bool returnVal = number_packets &&
            packets.front()->getTotalBytes() <= number_packets * BLOCKSIZE;
    if (!returnVal)
    {
        for (unsigned int i = 0; i < number_packets; i++)
        {
            if (packets[i] == NULL)
            {
                cout << "Missing packet " << i << endl;
            }
        }
    }

    return returnVal;
}

bool Message::isAllSent()
{
    return number_packets == successfully_sent;
}

bool Message::isMoreToSend()
{
    return !isAllSent();
}

/**
 * @brief Message::incrementResentPackets Increments counters for the number
 * of resent packets
 * @return this
 */
Message* Message::incrementResentPackets()
{
    session_resent_packets += 1;
    resent_packets += 1;

    return this;
}
