/**
 * @file socket.cpp
 * @author William Montgomery
 * @date January 2014
 * @brief This file encapsulate socket operations
*/


#include "socket.h"

/**
 * @brief Socket::Socket Constructor for a Socket for a client
 */
Socket::Socket()
{
    this->port = 0;
    initialize();
}

/**
 * @brief Socket::Socket Constructor for a Socket for a client
 * @param port The port to bind to
 */
Socket::Socket(int port)
{
    this->port = port;
    initialize();
    bindToPort();
}

/**
 * @brief Socket::initialize Initializes the object by calling the socket system call
 * @return this
 */
Socket* Socket::initialize()
{
    /* First call to socket() function */
    this->socketfd = socket(AF_INET, SOCK_STREAM, 0);
    if (socketfd < 0)
    {
        perror("ERROR opening socket");
        exit(1);
    }

    return this;
}

/**
 * @brief Socket::bindToPort Binds a socket to a port
 * @return this
 */
Socket* Socket::bindToPort()
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
 * @brief Socket::start_listening Starts listening to a socketfd
 * @param num_connections
 * @return this
 */
Socket* Socket::start_listening(int num_connections)
{
    listen(this->socketfd, num_connections);

    return this;
}

/**
 * @brief Socket::accept_connections Start accepting connections.
 * @return this
 * @pre socketfd must be created
 */
int Socket::accept_connections()
{
    struct sockaddr client_addr;
    unsigned int clilen = sizeof(client_addr);
    int returnval = accept(socketfd, &client_addr, &clilen);
    cout << "returnval is: " << returnval << endl;

    return returnval;

}

/**
 * @brief Socket::connectToRemote  Connects to a remote server
 * @param remote_address  The ip address of the server
 * @param remote_port   The port number of the server
 * @return this
 */
Socket* Socket::connectToRemote(u_int32_t remote_address, u_int16_t remote_port)
{
    struct sockaddr_in server_address;
    memset(&server_address, 0, sizeof(server_address));
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = htonl(remote_address);
    server_address.sin_port = htons(remote_port);

    if (connect(socketfd, (struct sockaddr *) &server_address, sizeof(server_address)) < 0)
    {
        perror("ERROR on connecting");
    }

    return this;
}

/**
 * @brief Socket::disconnect Disconnects a socketfd
 * @return this
 */
Socket* Socket::disconnect()
{
    close(socketfd);

    return this;
}

/**
 * @brief Socket::getSocketFD Getter for socketFD
 * @return the socketFD
 */
int Socket::getSocketFD()
{
    return socketfd;
}

u_int32_t Socket::getIP()
{
    struct sockaddr_in socketAddress;
    socklen_t len = sizeof(socketAddress);
    if (getsockname(socketfd, (struct sockaddr *)(&socketAddress), &len)){
        perror("ERROR Could not get socket address");
        exit(1);
    }
    return (ntohl(socketAddress.sin_addr.s_addr));
}

u_int16_t Socket::getPort()
{
    struct sockaddr_in socketAddress;
    socklen_t len = sizeof(socketAddress);
    if (getsockname(socketfd, (struct sockaddr *)(&socketAddress), &len)){
        perror("ERROR Could not get socket address");
        exit(1);
    }
    return (ntohs(socketAddress.sin_port));

}
