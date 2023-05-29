#!/bin/bash

TEMP_DIR=$(mktemp -d)

wget https://github.com/protocolbuffers/protobuf/releases/download/v23.2/protoc-23.2-linux-x86_64.zip -O $TEMP_DIR/file.zip

unzip $TEMP_DIR/file.zip -d $TEMP_DIR

rm -f ~/.local/bin/protoc

mv $TEMP_DIR/bin/protoc ~/.local/bin/

chmod 0550 ~/.local/bin/protoc

rm -rf $TEMP_DIR
