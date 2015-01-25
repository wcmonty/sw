TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    runner.cpp \
    chunker.cpp \
    semaphore.cpp \
    chunk.cpp

HEADERS += \
    runner.h \
    chunker.h \
    semaphore.h \
    chunk.h

QMAKE_CXXFLAGS += -std=c++0x -pthread
LIBS += -pthread
