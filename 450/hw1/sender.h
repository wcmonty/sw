/**
 * @file sender.h
 * @author William Montgomery
 * @date January 2014
 * @brief This file defines the Sender class
*/
#ifndef SENDER_H
#define SENDER_H

#include <iomanip>
#include <netdb.h>

#include "message.h"
#include "socket.h"

extern const int MAX_PARAM_SIZE;

/**
 * @brief The Sender class Encapsulates the sender of messages
 */
class Sender
{

private:
    u_int32_t server;
    u_int16_t serverPort;
    u_int32_t relay;
    u_int16_t relayPort;

    long int totalTime;
    long int totalBytes;

public:
    Sender(u_int32_t, u_int16_t, u_int32_t, u_int16_t);
    Sender* send();
    Sender* sendPersistently();
    Sender* sendAndReceiveMessage(Socket*, char*, bool);
};

#endif // SENDER_H
