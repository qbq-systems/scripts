#!/bin/bash

if ! command -v curl > /dev/null 2>&1; then
  echo "ERROR: curl not found"
  exit 1
fi

curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash