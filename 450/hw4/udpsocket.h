/**
 * @file udpsocket.h
 * @author William Montgomery
 * @date March 2014
 * @brief This file defines the Socket class
*/

#ifndef UDP_SOCKET_H
#define UDP_SOCKET_H

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <strings.h>
#include <netinet/in.h>
#include <string.h>
#include <fcntl.h>


using namespace std;

/**
 * @brief The Socket class Encapsulates a socket connection
 */
class UDP_Socket
{
private:
    int port;       /*!< The port number */
    int socketfd;   /*!< The socket file descriptor */

    u_int32_t destinationIP;    /*!< The destination ip address */
    u_int16_t destinationPort;  /*!< The destination port number */

    UDP_Socket* initialize();
public:
    UDP_Socket();
    ~UDP_Socket();

    UDP_Socket(int);
    UDP_Socket* start_listening(int);
    int accept_connections();
    UDP_Socket* bindToPort();
    UDP_Socket* setNonblocking();

    int getSocketFD();
    u_int32_t getIP();
    u_int16_t getPort();
};

#endif // UDP_SOCKET_H
