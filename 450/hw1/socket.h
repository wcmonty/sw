/**
 * @file socket.h
 * @author William Montgomery
 * @date January 2014
 * @brief This file defines the Socket class
*/

#ifndef SOCKET_H
#define SOCKET_H

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <strings.h>
#include <netinet/in.h>
#include <string.h>


using namespace std;

/**
 * @brief The Socket class Encapsulats a socket connection
 */
class Socket
{
private:
    int port;
    int socketfd;
    u_int32_t destinationIP;
    u_int16_t destinationPort;

    Socket* initialize();
    Socket* bindToPort();
public:
    Socket();
    Socket(int);
    Socket* start_listening(int);
    int accept_connections();
    Socket* connectToRemote(u_int32_t, u_int16_t);
    Socket* disconnect();
    int getSocketFD();
    u_int32_t getIP();
    u_int16_t getPort();
};

#endif // SOCKET_H
