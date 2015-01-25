/**
 * @file udp_socket.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief This file encapsulates udp socket operations
*/


#include "udp_socket.h"

/**
 * @brief Socket::Socket Constructor for a Socket for a client
 */
UDP_Socket::UDP_Socket()
{
    this->port = 54329;
    initialize();
    bindToPort();
}

/**
 * @brief Socket::Socket Constructor for a Socket for a client
 * @param port The port to bind to
 */
UDP_Socket::UDP_Socket(int port)
{
    this->port = port;
    initialize();
    bindToPort();
}

/**
 * @brief UDP_Socket::~UDP_Socket Destructor that closes the file descriptor
 */
UDP_Socket::~UDP_Socket()
{
    if (socketfd > 0)
    {
        close(socketfd);
    }
}

/**
 * @brief Socket::initialize Initializes the object by calling the socket system call
 * @return this
 */
UDP_Socket* UDP_Socket::initialize()
{
    /* First call to socket() function */
    this->socketfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (socketfd < 0)
    {
        perror("ERROR opening socket");
        exit(1);
    }

    return this;
}

/**
 * @brief UDP_Socket::setNonblocking Sets the file descriptor as non-blocking
 * @return
 */
UDP_Socket* UDP_Socket::setNonblocking()
{
    // Set the socket as non-blocking
    fcntl(this->socketfd, F_SETFL, 0 | O_NONBLOCK);
    return this;
}

/**
 * @brief Socket::bindToPort Binds a socket to a port
 * @return this
 */
UDP_Socket* UDP_Socket::bindToPort()
{
    struct sockaddr_in my_address;

    my_address.sin_family = AF_INET;
    my_address.sin_addr.s_addr = INADDR_ANY;
    my_address.sin_port = htons(port);

    /* Now bind the host address using bind() call.*/
    if (bind(socketfd, (struct sockaddr *) &my_address, sizeof(my_address)) < 0)
    {
         perror("ERROR on binding");
    }

    return this;
}

/**
 * @brief Socket::getSocketFD Getter for socketFD
 * @return the socketFD
 */
int UDP_Socket::getSocketFD()
{
    return socketfd;
}

u_int32_t UDP_Socket::getIP()
{
    struct sockaddr_in socketAddress;
    socklen_t len = sizeof(socketAddress);
    if (getsockname(socketfd, (struct sockaddr *)(&socketAddress), &len)){
        perror("ERROR Could not get socket address");
        exit(1);
    }
    return (ntohl(socketAddress.sin_addr.s_addr));
}

/**
 * @brief UDP_Socket::getPort Getter for the port number
 * @return the port in host format
 */
u_int16_t UDP_Socket::getPort()
{
    struct sockaddr_in socketAddress;
    socklen_t len = sizeof(socketAddress);
    if (getsockname(socketfd, (struct sockaddr *)(&socketAddress), &len)){
        perror("ERROR Could not get socket address");
        exit(1);
    }
    return (ntohs(socketAddress.sin_port));
}
