#-------------------------------------------------
#
# Project created by QtCreator 2013-09-25T15:54:43
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QMAKE_CXXFLAGS += -g

TARGET = Scrabble
TEMPLATE = app


SOURCES += main.cpp\
    dictionary.cpp \
    dictionaryloader.cpp \
    game.cpp \
    board.cpp \
    player.cpp \
    humanplayer.cpp \
    aiplayer.cpp \
    space.cpp \
    letter.cpp \
    trie.cpp \
    trienode.cpp \
    UnitTest.cpp \
    letterpool.cpp \
    dialog.cpp \
    play.cpp \
    move.cpp \
    rack.cpp \
    playerlabel.cpp


HEADERS  += \
    dictionary.h \
    dictionaryloader.h \
    game.h \
    board.h \
    player.h \
    humanplayer.h \
    aiplayer.h \
    space.h \
    letter.h \
    trie.h \
    trienode.h \
    letterpool.h \
    dialog.h \
    play.h \
    move.h \
    rack.h \
    playerlabel.h


FORMS    +=

OTHER_FILES += \
    resources/dictionary-tiny.txt \
    resources/dictionary-small.txt \
    resources/dictionary.txt \
    resources/nameless_anagrams.txt

RESOURCES += \
    text.qrc
