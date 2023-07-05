#!/bin/bash

if ! command -v nvm > /dev/null 2>&1; then
  echo "ERROR: nvm not found"
  exit 1
fi

nvm install 19.9.0
