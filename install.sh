#!/bin/sh

workspace=plan9port

sudo apt install git gcc \
	libx11-dev \
	libxt-dev \
	libfontconfig1-dev \
	libxext-dev

if [ ! -d "${workspace}" ]; then
	git clone "https://github.com/9fans/${workspace}"
fi

cd "${workspace}"
./INSTALL
