/**
 * @file message.h
 * @author William Montgomery
 * @date January 2014
 * @brief The file holds the class definition for Message
*/

#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <arpa/inet.h>

#include "message_header.h"

// Constants
extern const int PACKET_TYPE;

using namespace std;

/**
 * @brief The Message class Encapsulates a message, including header and payload
 */
class Message
{
private:
    char *buffer;
    size_t size;
    int socketfd;

    u_int32_t from_IP;
    u_int16_t from_Port;

    u_int32_t to_IP;
    u_int16_t to_Port;

    int relayCommand;
    bool persistent;
    bool closeConnection;
    bool save;

    Message* initializeHeader();
    unsigned int readNBytesFromSocket(void *, long int);
    unsigned int readBodyFromSocket();
    unsigned int readHeaderFromSocket();

public:
    message_header header;

    Message(int);
    Message(int, bool);
    void initialize();
    ~Message();

    Message* writeToSocket();
    Message* writeToSocket(const char*);
    Message* readFromSocket();

    bool keepOpen();
    unsigned long getNBytes();
    Message* setNBytes(unsigned long);

    Message* setFrom(u_int32_t, u_int16_t);
    Message* setTo(u_int32_t, u_int16_t);

    Message* printHeader();
};

#endif // DATA_H
