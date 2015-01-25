#ifndef PACKETWRAPPER_H
#define PACKETWRAPPER_H

#include <iostream>
#include <arpa/inet.h>
#include <strings.h>
#include <string.h>

#include "message_header.h"

using namespace std;

/**
 * @brief The PacketWrapper class Encapsulates a Packet, hiding network byte order
 * from clients and adding methods to the Packet.
 */
class PacketWrapper
{
private:
    Packet packet;  /*!< The packet */
public:
    PacketWrapper();
    PacketWrapper(Packet*);

    PacketWrapper* makeAck();

    u_int32_t getTransactionNumber();
    PacketWrapper* setTransactionNumber(u_int32_t);

    u_int32_t getSequenceNumber();
    PacketWrapper* setSequenceNumber(u_int32_t);

    u_int32_t getAckNumber();
    PacketWrapper* setAckNumber(u_int32_t);

    u_int32_t getFromIP();
    PacketWrapper* setFromIP(u_int32_t);

    u_int32_t getToIP();
    PacketWrapper* setToIP(u_int32_t);

    u_int32_t getNBytes();
    PacketWrapper* setNBytes(u_int32_t);

    u_int32_t getTotalBytes();
    PacketWrapper* setTotalBytes(u_int32_t);

    const char* getFilename();
    PacketWrapper* setFilename(const char*);

    u_int16_t getFromPort();
    PacketWrapper* setFromPort(u_int16_t);

    u_int16_t getToPort();
    PacketWrapper* setToPort(u_int16_t);

    u_int16_t getPacketType();
    PacketWrapper* setPacketType(u_int8_t);

    bool isSaveFile();
    PacketWrapper* setSaveFile(bool);

    PacketWrapper* setDropChance(int8_t);
    PacketWrapper* setDupeChance(int8_t);
    PacketWrapper* setGarbleChance(int8_t);

    CS450Header* getHeader();
    void* getData();
    PacketWrapper* setData(void *, int);

    bool isValid();
    PacketWrapper* doChecksum();
    u_int16_t calculateChecksum();

    PacketWrapper* printHeader();
};

#endif // PACKETWRAPPER_H
