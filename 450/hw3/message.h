/**
 * @file message.h
 * @author William Montgomery
 * @date March 2014
 * @brief The file holds the class definition for Message
*/



#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string>
#include <sys/stat.h>
#include <fcntl.h>
#include <vector>
#include <sys/mman.h>
#include <string.h>
#include <time.h>

#include "packetwrapper.h"

// Constants
extern const int PACKET_TYPE;

using namespace std;

/**
 * @brief The Message class Encapsulates a message, including header and payload
 */
class Message
{
private:

    vector<PacketWrapper*> packets; /*!< Container for the packets */
    unsigned int number_packets;    /*!< The number of packets */
    unsigned int receive_base;      /*!< The receive base */
    unsigned int next_seq_num;      /*!< The next sequence number */

    char *filename;                 /*!< The filename to read or write */
    u_int32_t transactionNumber;    /*!< The transaction number for all packets */

    u_int32_t server;               /*!< The server address */
    u_int16_t serverPort;           /*!< The server port */
    u_int32_t relay;                /*!< The relay address */
    u_int16_t relayPort;            /*!< The relay port */
    u_int32_t myAddress;            /*!< The address of this machine */
    u_int16_t myPort;               /*!< The port that the socket is bound to */

    Message* initialize();
    Message* initialize(PacketWrapper*);
    Message* initializePacket(Packet*);
    Message* makePackets();
public:
    Message();
    Message(const char *, u_int32_t, u_int16_t, u_int32_t, u_int16_t, u_int32_t, u_int16_t);
    ~Message();
    Message* writeFile();

    unsigned int getReceiveBase();
    Message* setReceiveBase(unsigned int);
    unsigned int getNextSeqNum();
    Message* setNextSeqNum(unsigned int);


    u_int32_t getTransactionNumber();
    unsigned int getNumberPackets();
    unsigned int getPacketsSent();
    PacketWrapper* getPacketAt(int);
    bool pushPacket(PacketWrapper *packet);
    bool isComplete();
    Message* incrementResentPackets();

    static int session_resent_packets; /*!< The total number of resent packets in a session */
    int resent_packets;                 /*!< The number of resent packets in an instance */
    void setupPacket(unsigned int i, struct stat statistics, char *mappedFile);
    void createPacket(unsigned int i, char *mappedFile, struct stat statistics);
};

#endif // DATA_H
