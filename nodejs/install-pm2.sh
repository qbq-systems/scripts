#!/bin/bash

if ! command -v pnpm > /dev/null 2>&1; then
  echo "ERROR: pnpm not found"
  exit 1
fi

pnpm install -g pm2
