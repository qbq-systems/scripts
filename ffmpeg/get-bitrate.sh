#!/bin/bash

ffprobe \
  -v error \
  -select_streams v:0 \
  -show_entries stream=bit_rate \
  -of default=noprint_wrappers=1:nokey=1 \
  "$1"
