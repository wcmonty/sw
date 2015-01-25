/**
 * @file processor.cpp
 * @author William Montgomery
 * @date January 2014
 * @brief This file encapsulates a Processor of incoming messages in a server
*/

#include "processor.h"

// Set up the Singleton
bool Processor::isSet = false;
Processor* Processor::processor = NULL;

/**
 * @brief Processor::Processor Constructor
 */
Processor::Processor()
{
}

/**
 * @brief Processor::getProcessor Gets the processor or creates a new one
 * @return The processor
 */
Processor* Processor::getProcessor()
{
    if (!isSet)
    {
        processor = new Processor();
        isSet = true;
    }

    return processor;
}

/**
 * @brief Processor::setSocket Setter for socket
 * @param socket The socket
 * @return this
 */
Processor* Processor::setSocket(Socket *socket)
{
    this->socket = socket;

    return this;
}

/**
 * @brief Processor::process Process connections
 * @return
 */
Processor* Processor::process()
{
    while (true){
        acceptConnections();
    }

    return this;
}

/**
 * @brief Processor::acceptConnections Accept a connection when it comes in
 * @return this
 */
Processor* Processor::acceptConnections()
{
    int pid;

    // Accept new connections
    int newsockfd = socket->accept_connections();
    if (newsockfd < 0)
    {
        perror("ERROR on accept");
        exit(1);
    }

    // Fork
    pid = fork();
    if (pid < 0)
    {
        perror("ERROR on fork");
        exit(1);
    }

    // Client process
    if (pid == 0)
    {
        doProcessing(newsockfd);
        exit(0);
    }

    // Parent process
    else
    {
        close(newsockfd);
    }

    return this;
}

/**
 * @brief Processor::doProcessing  Reads messages from socket file descriptor as they come in
 * @param newsockfd The new socket file descriptor
 * @return this
 * @todo I should probably time out connections so that I don't leave child processes open.  It's fine for now.
 */
Processor* Processor::doProcessing (int newsockfd)
{
    Message *inMessage = NULL;
    Message *outMessage = NULL;
    bool keepOpen = false;

    // While messages request that the socket remain open
    do {
        // Read a message
        inMessage = new Message(newsockfd);
        inMessage->readFromSocket();

        // Generate a response and send it
        outMessage = new Message(newsockfd);
        outMessage->setNBytes(inMessage->getNBytes());
        outMessage->setFrom(htonl(inMessage->header.to_IP),  ntohs(inMessage->header.to_Port));
        outMessage->setTo(htonl(inMessage->header.from_IP), ntohs(inMessage->header.from_Port));
        if(inMessage->header.persistent == 0){
            outMessage->header.relayCommand = 1;
        }
        outMessage->writeToSocket();
        keepOpen = inMessage->keepOpen();

        // Clean up
        delete inMessage;
        delete outMessage;
    } while (keepOpen);

    // Clean up
    close (newsockfd);

    return this;
}
