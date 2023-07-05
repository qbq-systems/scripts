#!/bin/bash

if ! command -v puttygen > /dev/null 2>&1; then
	echo "ERROR: puttygen not found"
	exit 1
fi

read -e -p "PPK file: " FILE_NAME

puttygen "$FILE_NAME" -O private-openssh -o "$FILE_NAME.pem"
