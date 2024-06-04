QT += core
QT -= gui

TEMPLATE = lib
CONFIG += plugin
TARGET = personPlugin

HEADERS += \
    programmer.h\
    IPerson.h


SOURCES += \
    Programmer.cpp

OTHER_FILES += programmer.json

win32 {
    CONFIG(debug, release|debug):DESTDIR = ../debug/plugins/
    CONFIG(release, release|debug):DESTDIR = ../release/plugins/
} else {
    #非 Windows 平台
    DESTDIR = ../plugins/
}
