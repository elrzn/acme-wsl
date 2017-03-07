#!/bin/sh

workspace=plan9port

sudo apt install \
	gcc \
	git \
	libfontconfig1-dev \
	libx11-dev \
	libxext-dev \
	libxt-dev

if [ ! -d "${workspace}" ]; then
	git clone "https://github.com/9fans/${workspace}"
fi

cd "${workspace}"

./INSTALL
