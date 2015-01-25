/**
 * @file packetwrapper.cpp
 * @author William Montgomery
 * @date March 2014
 * @brief Defines the implementation of PacketWrapper
*/

#include "packetwrapper.h"

/**
 * @brief PacketWrapper::PacketWrapper Default constructor
 */
PacketWrapper::PacketWrapper()
{
    bzero(&packet, sizeof(Packet));
    // 32 bit values
    this->packet.header.version = htonl(VERSION);
    this->packet.header.UIN = htonl(UIN);

    // 8 bit values
    this->packet.header.HW_number = HW_NUMBER;
    strncpy(this->packet.header.ACCC, ACCC, 8);
}

/**
 * @brief PacketWrapper::PacketWrapper Constructor from existing packet
 * @param buffer The packet
 */
PacketWrapper::PacketWrapper(Packet *buffer)
{
    bzero(&packet, sizeof(Packet));
    memcpy(&packet, buffer, sizeof(Packet));
}

/*!
 * \brief PacketWrapper::makeAck Makes a packet an ack packet
 * \return This
 */
PacketWrapper* PacketWrapper::makeAck()
{
    u_int32_t temp = this->packet.header.from_IP;
    this->packet.header.from_IP = this->packet.header.to_IP;
    this->packet.header.to_IP = temp;

    u_int16_t temp2 = this->packet.header.from_Port;
    this->packet.header.from_Port = this->packet.header.to_Port;
    this->packet.header.to_Port = temp2;

    this->packet.header.ackNumber = this->packet.header.sequenceNumber;
    this->packet.header.packetType = 2;
    this->packet.header.nbytes = 0;
    this->packet.header.nTotalBytes = 0;
    return this;
}

/**
 * @brief PacketWrapper::getTransactionNumber Getter for transactionNumber
 * @return transactionNumber in host byte order
 */
u_int32_t PacketWrapper::getTransactionNumber()
{
    return ntohl(this->packet.header.transactionNumber);
}

/**
 * @brief PacketWrapper::setTransactionNumber Setter for transactionNumber
 * @param transactionNumber in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setTransactionNumber(u_int32_t transactionNumber)
{
    this->packet.header.transactionNumber = htonl(transactionNumber);
    return this;
}

/**
 * @brief PacketWrapper::getSequenceNumber Getter for sequenceNumber
 * @return sequenceNumber in host byte order
 */
u_int32_t PacketWrapper::getSequenceNumber()
{
    return ntohl(this->packet.header.sequenceNumber);
}

/**
 * @brief PacketWrapper::setSequenceNumber Setter for sequenceNumber
 * @param sequenceNumber in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setSequenceNumber(u_int32_t sequenceNumber)
{
    this->packet.header.sequenceNumber = htonl(sequenceNumber);
    return this;
}

/**
 * @brief PacketWrapper::getAckNumber Getter for ackNumber
 * @return ackNumber in host byte order
 */
u_int32_t PacketWrapper::getAckNumber()
{
    return ntohl(this->packet.header.ackNumber);
}

/**
 * @brief PacketWrapper::setAckNumber Setter for ackNumber
 * @param ackNumber in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setAckNumber(u_int32_t ackNumber)
{
    this->packet.header.ackNumber = htonl(ackNumber);
    return this;
}

/**
 * @brief PacketWrapper::getFromIP Getter for from_IP
 * @return from_IP in host byte order
 */
u_int32_t PacketWrapper::getFromIP()
{
    return ntohl(this->packet.header.from_IP);
}

/**
 * @brief PacketWrapper::setFromIP Setter for from_IP
 * @param fromIP The ip in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setFromIP(u_int32_t fromIP)
{
    this->packet.header.from_IP = htonl(fromIP);
    return this;
}

/**
 * @brief PacketWrapper::getToIP  Getter for to_IP
 * @return to_IP in host byte order
 */
u_int32_t PacketWrapper::getToIP()
{
    return ntohl(this->packet.header.to_IP);
}

/**
 * @brief PacketWrapper::setToIP Setter for to_IP
 * @param toIP in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setToIP(u_int32_t toIP)
{
    this->packet.header.to_IP = htonl(toIP);
    return this;
}

/**
 * @brief PacketWrapper::getNBytes Getter for nbytes
 * @return nBytes in host byte order
 */
u_int32_t PacketWrapper::getNBytes()
{
    return ntohl(this->packet.header.nbytes);
}

/**
 * @brief PacketWrapper::setNBytes Setter for nBytes
 * @param nBytes in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setNBytes(u_int32_t nBytes)
{
    this->packet.header.nbytes = htonl(nBytes);
    return this;
}

/**
 * @brief PacketWrapper::getTotalBytes Getter for nTotalBytes
 * @return nTotalBytes in host byte order
 */
u_int32_t PacketWrapper::getTotalBytes()
{
    return ntohl(this->packet.header.nTotalBytes);
}

/**
 * @brief PacketWrapper::setTotalBytes Setter for nTotalBytes
 * @param totalBytes nTotalBytes in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setTotalBytes(u_int32_t totalBytes)
{
    this->packet.header.nTotalBytes = htonl(totalBytes);
    return this;
}

/**
 * @brief PacketWrapper::getFilename Getter for filename
 * @return A pointer to the filename
 */
const char* PacketWrapper::getFilename()
{
    return this->packet.header.filename;
}

/**
 * @brief PacketWrapper::setFilename Setter for filename
 * @param filename A pointer to the filename
 * @return this
 */
PacketWrapper* PacketWrapper::setFilename(const char *filename)
{
    strncpy(this->packet.header.filename, filename, 31);
    return this;
}

/**
 * @brief PacketWrapper::getFromPort Getter for from_Port
 * @return from_Port in host byte order
 */
u_int16_t PacketWrapper::getFromPort()
{
    return ntohs(this->packet.header.from_Port);
}

/**
 * @brief PacketWrapper::setFromPort Setter for from_Port
 * @param fromPort from_Port in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setFromPort(u_int16_t fromPort)
{
    this->packet.header.from_Port = htons(fromPort);
    return this;
}

/**
 * @brief PacketWrapper::getToPort Getter for to_Port
 * @return to_Port in host byte order
 */
u_int16_t PacketWrapper::getToPort()
{
    return ntohs(this->packet.header.to_Port);
}

/**
 * @brief PacketWrapper::setToPort Setter for to_Port
 * @param toPort to_Port in host byte order
 * @return this
 */
PacketWrapper* PacketWrapper::setToPort(u_int16_t toPort)
{
    this->packet.header.to_Port = htons(toPort);
    return this;
}

/**
 * @brief PacketWrapper::getPacketType Getter for packet type
 * @return The packet type
 */
u_int16_t PacketWrapper::getPacketType()
{
    return this->packet.header.packetType;
}

/**
 * @brief PacketWrapper::setPacketType Setter for packet type
 * @param type The type to set to
 * @return this
 */
PacketWrapper* PacketWrapper::setPacketType(u_int8_t type)
{
    this->packet.header.packetType = type;
    return this;
}

/**
 * @brief PacketWrapper::isSaveFile Is the file to be saved?
 * @return true if the file should be saved
 */
bool PacketWrapper::isSaveFile()
{
    return this->packet.header.saveFile != 0;
}

/**
 * @brief PacketWrapper::setSaveFile Setter the save status
 * @return this
 */
PacketWrapper* PacketWrapper::setSaveFile(bool value)
{
    this->packet.header.saveFile = value;
    return this;
}

/**
 * @brief PacketWrapper::setDropChance Setter for dropChance
 * @param chance dropChance
 * @return this
 */
PacketWrapper* PacketWrapper::setDropChance(int8_t chance)
{
    if (chance > 100) chance = 100;
    this->packet.header.dropChance = chance;
    return this;
}

/**
 * @brief PacketWrapper::setDupeChance Setter for dupeChance
 * @param chance dupeChance
 * @return this
 */
PacketWrapper* PacketWrapper::setDupeChance(int8_t chance)
{
    if (chance > 100) chance = 100;
    this->packet.header.dupeChance = chance;
    return this;
}

/**
 * @brief PacketWrapper::setGarbleChance Setter for garbleChance
 * @param chance garbleChance
 * @return this
 */
PacketWrapper* PacketWrapper::setGarbleChance(int8_t chance)
{
    if (chance > 100) chance = 100;
    this->packet.header.garbleChance = chance;
    return this;
}

/**
 * @brief PacketWrapper::getHeader Getter for header
 * @return A pointer to the header
 */
CS450Header* PacketWrapper::getHeader()
{
    return &(this->packet.header);
}

/**
 * @brief PacketWrapper::getData Getter for data
 * @return A pointer to the data
 */
void* PacketWrapper::getData()
{
    return &(this->packet.data);
}

/**
 * @brief PacketWrapper::setData Setter for data
 * @param data The data to set
 * @param nBytes The number of bytes to set
 * @return this
 */
PacketWrapper* PacketWrapper::setData(void *data, int nBytes)
{
    if (nBytes < BLOCKSIZE)
    {
        bzero(this->packet.data, BLOCKSIZE);
    }
    memcpy(this->packet.data, data, nBytes);
    return this;
}

/**
 * @brief PacketWrapper::isValid Validates checksum
 * @return true if valid, false otherwise
 */
bool PacketWrapper::isValid()
{
    cout << "Checksum in header is: " << this->packet.header.checksum << endl;
    cout << "Checksum is: " << calculateChecksum() << endl;
    return calculateChecksum() == 0;
}

/**
 * @brief PacketWrapper::calculateChecksum Calculates a checksum of a packet
 * @return the checksum
 */
u_int16_t PacketWrapper::calculateChecksum()
{
    u_int16_t *data16 = (u_int16_t *) &(this->packet);
    u_int32_t sum = 0;
    const u_int32_t max16 = 0xffff;

    int loopSize = sizeof(Packet) / 2;
    for (int i = 0; i < loopSize; i++){
        sum += data16[i];

        if (sum > max16)
        {
            sum -= max16;
        }
    }

    return (u_int16_t)(~sum);
}

/**
 * @brief PacketWrapper::doChecksum Calculates and sets the checksum
 * @return this
 */
PacketWrapper* PacketWrapper::doChecksum()
{
    this->packet.header.checksum = 0;
    this->packet.header.checksum = calculateChecksum();
    return this;
}

/**
 * @brief PacketWrapper::printHeader Prints out a header
 * @return this
 */
PacketWrapper* PacketWrapper::printHeader()
{
    cout << "************ HEADER *******************" << endl;
    cout << "version: " << ntohl(packet.header.version) << endl;
    cout << "UIN: " << ntohl(packet.header.UIN) << endl;
    cout << "transactionNumber: " << ntohl(packet.header.transactionNumber) << endl;
    cout << "sequenceNumber: " << ntohl(packet.header.sequenceNumber) << endl;
    cout << "ackNumber: " << ntohl(packet.header.ackNumber) << endl;
    cout << "from_IP: " << ntohl(packet.header.from_IP) << endl;
    cout << "to_IP: " << ntohl(packet.header.to_IP) << endl;
    cout << "nbytes: " << ntohl(packet.header.nbytes) << endl;
    cout << "nTotalBytes: " << ntohl(packet.header.nTotalBytes) << endl;
    cout << "filename: " << packet.header.filename << endl;

    // Then the 16-bit ones - An even number of these.
    cout << "from_Port: " << ntohs(packet.header.from_Port) << endl;
    cout << "to_Port: " << ntohs(packet.header.to_Port) << endl;
    cout << "checksum: " << ntohs(packet.header.checksum) << endl;
    cout << "packetType: " << (int)packet.header.packetType << endl;
    cout << "relayCommand: " << (int)packet.header.relayCommand << endl;
    cout << "saveFile: " << (int)packet.header.saveFile << endl;
    cout << "ACCC: " << packet.header.ACCC << endl;
    cout << "dropChance: " << (int)packet.header.dropChance << endl;
    cout << "dupeChance: " << (int)packet.header.dupeChance << endl;
    cout << "garbleChance: " << (int)packet.header.garbleChance << endl;
    cout << "protocol: " << (int)packet.header.protocol << endl;
    cout << "********** END HEADER *****************" << endl;

    return this;
}
