#!/bin/bash

read -e -p "File: " FILE_NAME

cuebreakpoints "${FILE_NAME}cue" | sed s/$/0/ | shnsplit -o flac "${FILE_NAME}flac"

cueprint -t "%n %t.flac\n" "${FILE_NAME}cue" > breakpoints.txt

mapfile -t FILE_NAMES < breakpoints.txt

for i in "${!FILE_NAMES[@]}"; do
    OLD_NAME="split-track$(printf "%02d" $((i+1))).flac"
    NEW_NAME=$(echo "${FILE_NAMES[i]}" | sed 's/\//+/g')
    echo "mv $OLD_NAME -> $NEW_NAME"
    mv "$OLD_NAME" "$NEW_NAME"
done

rm -f breakpoints.txt
