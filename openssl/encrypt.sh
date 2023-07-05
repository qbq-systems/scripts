#!/bin/bash

if ! command -v openssl > /dev/null 2>&1; then
	echo "ERROR: openssl not found"
	exit 1
fi

read -e -p "Input file: " FILE_NAME

openssl enc -aes-256-cbc -salt -pbkdf2 -in "$FILE_NAME" -out "$FILE_NAME.openssl"
