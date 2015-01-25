/**
 * @file processor.h
 * @author William Montgomery
 * @date January 2014
 * @brief This file defines the Processor class
*/

#ifndef PROCESSOR_H
#define PROCESSOR_H

#include "socket.h"
#include "message.h"

/**
 * @brief The Processor class Encapsulates a processor of messages
 */
class Processor
{
private:
    static bool isSet;
    static Processor *processor;

    Socket *socket;
    Processor();
    Processor* acceptConnections();
    Processor* doProcessing(int);
public:
    static Processor* getProcessor();
    Processor* setSocket(Socket*);
    Processor* process();
};

#endif // PROCESSOR_H
