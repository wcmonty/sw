TEMPLATE = app
QMAKE_CXXFLAGS += -std=c++03
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    bstnode.cpp \
    bst.cpp

HEADERS += \
    bstnode.h \
    bst.h

OTHER_FILES += \
    mainpage.dox

