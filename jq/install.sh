#!/bin/bash

if ! command -v wget > /dev/null 2>&1; then
  echo "ERROR: wget not found"
  exit 1
fi

wget https://github.com/jqlang/jq/releases/download/jq-1.6/jq-linux64 -O jq
chmod +x jq
mv jq ~/.local/bin/
