#!/bin/bash

if ! command -v iconv > /dev/null 2>&1; then
	echo "ERROR: iconv not found"
	exit 1
fi

read -e -p "File: " FILE_NAME

iconv -f windows-1251 -t UTF-8 "$FILE_NAME" -o "$FILE_NAME.utf-8"
