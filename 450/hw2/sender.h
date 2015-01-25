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
#include "udp_socket.h"

extern const int MAX_PARAM_SIZE;
extern int TIMEOUT;
extern int SLEEPTIME;

/**
 * @brief The Sender class Encapsulates the sender of messages
 */
class Sender
{

private:
    u_int32_t server;       /*!< The server address */
    u_int16_t serverPort;   /*!< The server port */
    u_int32_t relay;        /*!< The relay address */
    u_int16_t relayPort;    /*!< The relay port */

    long int totalTime;     /*!< The total time */
    long int totalBytes;    /*!< The total number of bytes sent */

public:
    Sender(u_int32_t, u_int16_t, u_int32_t, u_int16_t);
    Sender* send();
    Sender* sendPersistently();
    Sender* sendAndReceiveMessages(char*);
    Sender* sendPacket(UDP_Socket *, Message *, unsigned int, struct sockaddr_in *);
};

#endif // SENDER_H
