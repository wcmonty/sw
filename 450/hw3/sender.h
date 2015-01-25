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
#include <signal.h>
#include <time.h>

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
    static Sender* instance;

    u_int32_t server;       /*!< The server address */
    u_int16_t serverPort;   /*!< The server port */
    u_int32_t relay;        /*!< The relay address */
    u_int16_t relayPort;    /*!< The relay port */
    u_int8_t windowSize;    /*!< The server's default windowsize */

    UDP_Socket *socket;     /*!< The socket to send to */
    Message *currentMessage; /*!< The current message that is being sent */
    struct sockaddr_in server_addr; /*!< The struct holding the address of the server or relay */

    unsigned int last_ack;  /*!< The number of the last ack */
    unsigned int last_ack_count;    /*!< The number of times the last number has been ack'ed */

    long int totalTime;     /*!< The total time */
    long int totalBytes;    /*!< The total number of bytes sent */

    Sender(u_int32_t, u_int16_t, u_int32_t, u_int16_t);
public:
    ~Sender();
    static Sender* getSender();
    static Sender* getSender(u_int32_t, u_int16_t, u_int32_t, u_int16_t);

    Sender* send();
    Sender* sendPersistently();
    Sender* sendAndReceiveMessages(char*);
    Sender* sendAllPackets();
    Sender* clearSentButNotAcked();
    Sender* sendUnsentPackets();
    Sender* processAck(PacketWrapper*);
    Sender* setAlarm();
    Sender* clearAlarm();
    static void handleTimeout(int);
};

#endif // SENDER_H
