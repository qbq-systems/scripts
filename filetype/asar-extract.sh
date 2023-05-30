#!/bin/bash

if ! command -v npx > /dev/null 2>&1; then
	echo "ERROR: npx not found"
	exit 1
fi

read -p "Asar file: " FILE_NAME
read -p "Dst dir: " DST_DIR

if [ ! -d "$DST_DIR" ]; then
	mkdir -p "$DST_DIR"
fi

npx @electron/asar extract $FILE_NAME "$DST_DIR"