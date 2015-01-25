#ifndef TIMER_H
#define TIMER_H

class Timer
{
private:
    struct timeval start;
    int messageIndex;
    int timerLength;

public:
    Timer(int, int);
    bool isFinished();
    bool isNotFinished();
    long int getRemainingTime();
    int getIndex();
};

#endif // TIMER_H
