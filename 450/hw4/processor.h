/**
 * @file processor.h
 * @author William Montgomery
 * @date January 2014
 * @brief This file defines the Processor class
*/

#ifndef PROCESSOR_H
#define PROCESSOR_H

#include "udpsocket.h"
#include "message.h"
#include "packetwrapper.h"

extern u_int8_t WINDOWSIZE;

/**
 * @brief The Processor class Encapsulates a processor of messages
 */
class Processor
{
private:
    static bool isSet;
    static Processor *processor;

    UDP_Socket *socket;
    Processor();
    Processor* acceptConnections();
    Processor* doProcessing(int);
public:
    static Processor* getProcessor();
    Processor* setSocket(UDP_Socket*);
    Processor* process();
    Processor* sendAck(struct sockaddr_in, socklen_t struct_size, PacketWrapper *, unsigned int);
};

#endif // PROCESSOR_H
