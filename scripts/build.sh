#!/bin/bash

if [ -d "build" ]; 
then
	rm -rf build/*
else
        mkdir -p build
fi

cd build

qmake ..

make -j $(($(nproc) - 1))
