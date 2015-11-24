#!/bin/bash

# Install ImageMAgick 6.9.x on Debian Wheezy

# Update everything:
apt-get update

# Install everything:
apt-get install build-essential checkinstall libx11-dev libxext-dev zlib1g-dev libpng12-dev libjpeg-dev libfreetype6-dev libxml2-dev

# Install ImageMagick:as package
apt-get install imagemagick

# WGET, unzip, configure and compile:
wget http://www.imagemagick.org/download/ImageMagick.tar.gz
tar -xzvf ImageMagick.tar.gz
cd ImageMagick-6.9.2-6
./configure
make
make install

# To avoid an error like:
# convert: error while loading shared libraries: libMagickCore-6.Q16.so.2: cannot open shared object file: No such file or directory
ldconfig /usr/local/lib
