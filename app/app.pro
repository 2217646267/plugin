QT += core
QT -= gui

CONFIG += c++11

TEMPLATE = app
CONFIG += console
TARGET = app2

INCLUDEPATH += $$PWD/..

SOURCES += main.cpp

win32 {
    debug:DESTDIR = ../debug/
    release:DESTDIR = ../release/
} else {
    DESTDIR = ../plugin
}
