#!/bin/bash

ffmpeg \
  -hide_banner \
  -loglevel error \
  -i "$1" \
  -b:v "$2" \
  "with_bitrate_$2_$1"
