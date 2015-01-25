/**
 * @file message.cpp
 * @author William Montgomery
 * @date January 2014
 * @brief The file holds the method definitions for Message
*/

#include "message.h"

/**
 * @brief Message::Message Constructor
 * @param socketfd The socket file descriptor
 */
Message::Message(int socketfd){
    this->socketfd = socketfd;
    this->persistent = false;
    initialize();
}

/**
 * @brief Message::Message Constructor
 * @param socketfd The socket file descriptor
 * @param persistent True if the connection should remain open
 */
Message::Message(int socketfd, bool persistent){
    this->socketfd = socketfd;
    this->persistent = persistent;
    initialize();
}

/**
 * @brief Message::initialize Initializes instance variables
 */
void Message::initialize()
{
    this->size = 0;
    this->buffer = NULL;
    this->from_IP = 0;
    this->from_Port = 0;
    this->to_IP = 0;
    this->to_Port = 0;

    this->relayCommand = 0;
    this->closeConnection = true;
    this->save = false;
}

/**
 * @brief Message::~Message Destructor
 */
Message::~Message()
{
    if (buffer != NULL)
    {
        free (buffer);
    }
}

/**
 * @brief Message::writeToSocket Write to a socket with no file
 * @return this
 */
Message* Message::writeToSocket()
{
    // Set up the header
    strcpy(header.filename, "");
    initializeHeader();
    header.nbytes = htonl(0);

    // Exit on bad writes
    if (write(socketfd, &header, sizeof(header)) < 0)
    {
        perror("ERROR writing to socket");
        exit(1);
    }

    return this;
}

/**
 * @brief Message::writeToSocket Write to a socket with an attached file
 * @param filename The name of the file
 * @return this
 */
Message* Message::writeToSocket(const char* filename)
{
    struct stat statistics;
    int fd;
    char *mappedFile;

    // Get the size of the file
    if (stat(filename, &statistics) < 0)
    {
        perror("ERROR could not get statistics");
        exit(1);
    }

    // Open the file
    fd = open(filename, O_RDONLY);
    if (fd < 0)
    {
        perror("ERROR could not open file");
        exit(1);
    }

    // Initialize the header
    unsigned long size = sizeof(header) + statistics.st_size;
    initializeHeader();
    strncpy(header.filename, filename, 20);
    header.nbytes = htonl(statistics.st_size);
    header.saveFile = htonl(1);

    // Create a buffer to write and copy the header in
    buffer = (char*)malloc(size);
    memcpy(buffer, &header, sizeof(header));

    // Memory map the file to read and write it to the buffer
    mappedFile = (char*)mmap (0, statistics.st_size, PROT_READ, MAP_SHARED, fd, 0);
    if (mappedFile < 0)
    {
        perror("ERROR could not map file");
        exit(1);
    }
    memcpy(buffer + sizeof(header), mappedFile, statistics.st_size);

    // Write it out to the file descriptor
    if (write(socketfd, buffer, size) < 0)
    {
        perror("ERROR writing to socket");
        exit(1);
    }

    // Clean up
    free (buffer);
    buffer = NULL;

    return this;
}

/**
 * @brief Message::readNBytesFromSocket  Read a number of bytes from a socket
 * @param location  The location to read it into
 * @param number The number of bytes to read
 * @return The number of bytes read
 */
unsigned int Message::readNBytesFromSocket(void *location, long int number)
{
    // Read the bytes
    unsigned int bytesRead = read(socketfd, location, number);

    if (bytesRead < number)
    {
        perror("ERROR reading from socket");
        exit(1);
    }
    return bytesRead;
}

/**
 * @brief Message::readHeaderFromSocket Read the header from a socket
 * @return The number of bytes read
 */
unsigned int Message::readHeaderFromSocket()
{
    return readNBytesFromSocket(&header, sizeof(message_header));
}

/**
 * @brief Message::readBodyFromSocket Read a body from a socket
 * @return The number of bytes read
 */
unsigned int Message::readBodyFromSocket()
{
    return readNBytesFromSocket(buffer, ntohl(header.nbytes));
}

/**
 * @brief Message::readFromSocket Read a header and possibly a file
 * @return this
 */
Message* Message::readFromSocket()
{
    // Read the header
    readHeaderFromSocket();

    // If there is a attached file, read it
    if (ntohl(header.nbytes) > 0 && ntohl(header.packetType) == 1)
    {
        buffer = (char*) malloc((size_t)ntohl(header.nbytes));

        readBodyFromSocket();

        /** @todo write to a file if header.saveFile is set **/
        if(header.saveFile)
        {

            char filename[255] = "./files/";
            strncpy(filename + 8, header.filename, 20);
            cout << "Trying to open: " << filename << endl;
            int fd = open(filename, O_RDWR | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
            if (fd < 0)
            {
                perror("ERROR opening file for writing");
                exit(1);
            }
            write(fd, buffer,(size_t)ntohl(header.nbytes));

            close (fd);
        }

        printHeader();

        free (buffer);
        buffer = NULL;
    }

    return this;
}

/**
 * @brief Message::keepOpen Getter for persistent
 * @return True if the connection should be kept open
 */
bool Message::keepOpen()
{
    return header.persistent != 0;
}

/**
 * @brief Message::getNBytes Getter for the number of bytes
 * @return The number of bytes that follow the header
 */
unsigned long Message::getNBytes()
{
    return ntohl(header.nbytes);
}

/**
 * @brief Message::setNBytes Setter for the number of bytes
 * @param nBytes The number of bytes
 * @return this
 */
Message* Message::setNBytes(unsigned long nBytes)
{
    header.nbytes = htonl(nBytes);
    return this;
}

/**
 * @brief Message::setFrom  Setter for "from" fields
 * @param from_IP The IP address the message is coming from
 * @param from_Port  The port the message is coming from
 * @return this
 */
Message* Message::setFrom(u_int32_t from_IP, u_int16_t from_Port)
{
    this->from_IP = from_IP;
    this->from_Port = from_Port;
    return this;
}

/**
 * @brief Message::setTo  Setter for "from" fields
 * @param to_IP The IP address the message is going to
 * @param to_Port  The port the message is going to
 * @return this
 */
Message* Message::setTo(u_int32_t to_IP, u_int16_t to_Port)
{
    this->to_IP = to_IP;
    this->to_Port = to_Port;
    return this;
}

/**
 * @brief Message::initializeHeader Initializes the header
 * @return this
 */
Message* Message::initializeHeader()
{
    bzero(&header, sizeof(header));
    header.version = htonl(VERSION);
    header.UIN = htonl(UIN);
    header.HW_number = htonl(HW_NUMBER);
    header.transactionNumber = htonl(TRANSACTIONNUMBER);
    strcpy(header.ACCC, ACCC);
    header.packetType = htonl(PACKET_TYPE);
    header.relayCommand = htonl(relayCommand);
    header.from_IP = htonl(from_IP);
    header.from_Port = htons(from_Port);
    header.to_IP = htonl(to_IP);
    header.to_Port = htons(to_Port);

    if(persistent){
        header.persistent = htonl(1);
    }

    return this;
}

/**
 * @brief Message::printHeader Prints the header
 * @return this
 */
Message* Message::printHeader()
{
    cout << "###########################" << endl;
    cout << "Version: " << ntohl(header.version) << endl;
    cout << "UIN: " << ntohl(header.UIN) << endl;
    cout << "HW_number: " << ntohl(header.HW_number) << endl;
    cout << "transactionNumber: " << ntohl(header.transactionNumber) << endl;
    cout << "ACCC: " << header.ACCC << endl;
    cout << "filename: " << header.filename << endl;
    cout << "from_IP: " << ntohl(header.from_IP) << endl;
    cout << "to_IP: " << ntohl(header.to_IP) << endl;
    cout << "packetType: " << ntohl(header.packetType) << endl;
    cout << "nBytes: " << ntohl(header.nbytes) << endl;
    cout << "relayCommand: " << ntohl(header.relayCommand) << endl;
    cout << "persistent: " << ntohl(header.persistent) << endl;
    cout << "saveFile: " << ntohl(header.saveFile) << endl;
    cout << "from_Port: " << ntohs(header.from_Port) << endl;
    cout << "to_Port: " << ntohs(header.to_Port) << endl;
    cout << "trueFromIP: " << ntohl(header.trueFromIP) << endl;
    cout << "trueToIP: " << ntohl(header.trueToIP) << endl;

    return this;
}
