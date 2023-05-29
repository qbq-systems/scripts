#!/bin/bash

if ! command -v ffmpeg > /dev/null 2>&1; then
  sudo apt install ffmpeg
fi

rm -rf whisper.cpp
git clone https://github.com/ggerganov/whisper.cpp

cd whisper.cpp
bash ./models/download-ggml-model.sh medium
make main
./main -m models/ggml-medium.bin -f samples/jfk.wav
