#!/bin/bash

if ! command -v pip > /dev/null 2>&1; then
  echo "ERROR: pip not found"
  exit 1
fi

pip install docker-compose