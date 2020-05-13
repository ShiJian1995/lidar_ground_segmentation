#========================================================================================

TARGET = test_csf

TEMPLATE = app

#========================================================================================

QT += core
QT -= gui

#========================================================================================

CONFIG *= link_pkgconfig
CONFIG += c++11

#========================================================================================

DEFINES += QT_DEPRECATED_WARNINGS

#========================================================================================

MAIN_DIR = $$PWD

INCLUDEPATH += /usr/src/gtest/include/gtest/
LIBS += -lgtest

SOURCES += main.cpp

include( $$PWD/../csf/csf.pri )

#========================================================================================