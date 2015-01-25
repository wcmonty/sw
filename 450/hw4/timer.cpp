#include <stdlib.h>
#include <sys/time.h>

#include "timer.h"

Timer::Timer(int messageIndex, int timerLength)
{
    this->messageIndex = messageIndex;
    this->timerLength = timerLength;
    gettimeofday(&(this->start), NULL);
}


bool Timer::isFinished()
{
    struct timeval now;

    gettimeofday(&now, NULL);
    long int time = (now.tv_usec + 1000000 * now.tv_sec) - (start.tv_usec + 1000000 * start.tv_sec);
    return time > (timerLength * 1000000);
}

bool Timer::isNotFinished()
{
    return !isFinished();
}


long int Timer::getRemainingTime()
{
    struct timeval now;

    gettimeofday(&now, NULL);
    long int time = (now.tv_usec + 1000000 * now.tv_sec) - (start.tv_usec + 1000000 * start.tv_sec);

    time = (timerLength * 1000000) - time;

    return time >= 1 ? time : 1;
}

int Timer::getIndex()
{
    return this->messageIndex;
}
