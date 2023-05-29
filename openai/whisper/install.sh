#!/bin/bash

if ! command -v ffmpeg > /dev/null 2>&1; then
  sudo apt install ffmpeg
fi

pip install git+https://github.com/openai/whisper.git
