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
Processor* Processor::setSocket(UDP_Socket *socket)
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
    doProcessing(socket->getSocketFD());

    return this;
}

/**
 * @brief Processor::sendAck Sends an ack
 * @param client The client
 * @param struct_size The size of the struct
 * @param packet The original packet that was received
 * @param ackNumber The number of the last received packet
 * @return this
 */
Processor* Processor::sendAck(struct sockaddr_in client, socklen_t struct_size,
                              PacketWrapper *packet, unsigned int ackNumber)
{
    PacketWrapper *ack = new PacketWrapper(packet->getPacket());
    ack->makeAck(ackNumber);
    cout << "Sending ack." << endl;
    /// @todo read this in or adjust dynamically
    ack->setWindowSize(WINDOWSIZE);
    ack->doChecksum();
    ack->printHeader();
    sendto(socket->getSocketFD(), ack->getPacket(), sizeof(Packet), 0,
           (sockaddr *) &client, struct_size);
    delete ack;

    return this;
}

/**
 * @brief Processor::doProcessing  Reads messages from socket file descriptor as they come in
 * @param newsockfd The new socket file descriptor
 * @return this
 */
Processor* Processor::doProcessing (int newsockfd)
{
    Message *message = new Message;
    Packet buffer;

    int bytes_received;

    struct	sockaddr_in client;
    socklen_t struct_size = sizeof(client);

    // While messages request that the socket remain open
    while (true) {
        bytes_received = recvfrom (newsockfd, (void*)&buffer, sizeof(Packet), 0,
                                   (sockaddr *) &client, &struct_size);


        // If all bytes were not sent
        if (bytes_received < (int)sizeof(Packet)) {
            cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
            cout << "Not enough bytes in packet." << endl;
            cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
        }
        // Otherwise process the packet
        else
        {
            PacketWrapper *packet = new PacketWrapper(&buffer);
            cout << "Got a packet." << endl;
            packet->printHeader();

            if (packet->isValid()){

                if(packet->getSequenceNumber() == 1){
                    delete message;
                    message = new Message();
                    sendAck(client, struct_size, packet, 1);
                    message->pushPacket(packet);
                }
                else if (packet->getSequenceNumber() == message->getNumberPackets() + 1)
                {
                    sendAck(client, struct_size, packet, packet->getSequenceNumber());
                    message->pushPacket(packet);
                }
                else
                {
                    sendAck(client, struct_size, packet, message->getNumberPackets());
                }
            }
            else {
                cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
                cout << "Error reading packet" << endl;
                cout << "++++++++++++++++++++++++++++++++++++++++++++++++++" << endl;
            }
        }

        // If this is the last packet in the stream
        if(message->isComplete()){
            cout << "Trying to write a file." << endl;
            message->writeFile();
            delete message;
            message = new Message;
        }
    };

    // Clean up
    close (newsockfd);
    return this;
}
