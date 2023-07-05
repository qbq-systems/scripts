#!/bin/bash

if ! command -v openssl > /dev/null 2>&1; then
	echo "ERROR: openssl not found"
	exit 1
fi

read -e -p "Input file: " FILE_NAME
RESULT="${FILE_NAME%.*}"

openssl enc -d -aes-256-cbc -pbkdf2 -in "$FILE_NAME" -out "$RESULT"
