#!/bin/bash

TEMP_DIR=$(mktemp -d)

sudo apt install -y \
  build-essential \
  libffi-dev \
  libbz2-dev \
  libgdbm-dev \
  libncurses5-dev \
  libnss3-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  wget \
  zlib1g-dev

wget https://www.python.org/ftp/python/3.9.16/Python-3.9.16.tgz -O $TEMP_DIR/file.tgz

tar xzf $TEMP_DIR/file.tgz -C $TEMP_DIR

cd $TEMP_DIR/Python-3.9.16

./configure --enable-optimizations

sudo make -j12 altinstall
