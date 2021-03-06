#========================================================================================

TARGET = lidar_ground_segmentation

#========================================================================================

DEFINES += GUI
DEFINES += TRACE
DEFINES += QT_DEPRECATED_WARNINGS

#========================================================================================

QT += core
QT += gui

#========================================================================================

TEMPLATE += app

CONFIG *= link_pkgconfig
CONFIG += c++11

#========================================================================================

MAIN_DIR = $$PWD

SOURCES += main.cpp

#========================================================================================

include( $$PWD/csf/csf.pri )
contains( DEFINES, GUI ): include( $$PWD/plot/plot.pri )

#========================================================================================

OTHER_FILES += ../*.md
OTHER_FILES += ../data/*.txt
OTHER_FILES += cfg/*
OTHER_FILES += ../scripts/*

#========================================================================================
