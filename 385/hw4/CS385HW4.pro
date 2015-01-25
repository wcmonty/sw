TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += src/main.cpp \
    src/runner.cpp \
    src/smallest.cpp \
    src/sparse.cpp \
    src/time.cpp \
    src/treedir.cpp \
    src/ornode.cpp \
    src/notnode.cpp \
    src/links.cpp \
    src/largest.cpp \
    src/groupnode.cpp \
    src/evalnode.cpp \
    src/andnode.cpp \
    src/print.cpp \
    src/size.cpp \
    src/filesearch.cpp \
    src/contentfirstfilesearch.cpp \
    src/directoryfirstfilesearch.cpp \
    src/summary.cpp \
    src/atime.cpp \
    src/amin.cpp \
    src/ctime.cpp \
    src/cmin.cpp \
    src/mmin.cpp \
    src/mtime.cpp \
    src/uid.cpp \
    src/gid.cpp \
    src/type.cpp \
    src/access.cpp

OTHER_FILES +=

HEADERS += \
    src/runner.h \
    src/notnode.h \
    src/ornode.h \
    src/print.h \
    src/smallest.h \
    src/sparse.h \
    src/time.h \
    src/links.h \
    src/largest.h \
    src/andnode.h \
    src/evalnode.h \
    src/groupnode.h \
    src/treedir.h \
    src/size.h \
    src/filesearch.h \
    src/contentfirstfilesearch.h \
    src/directoryfirstfilesearch.h \
    src/summary.h \
    src/atime.h \
    src/amin.h \
    src/ctime.h \
    src/cmin.h \
    src/mmin.h \
    src/mtime.h \
    src/uid.h \
    src/gid.h \
    src/type.h \
    src/access.h

