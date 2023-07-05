#!/bin/bash

if ! command -v curl > /dev/null 2>&1; then
  echo "ERROR: curl not found"
  exit 1
fi

curl -fsSL https://get.pnpm.io/install.sh | bash
