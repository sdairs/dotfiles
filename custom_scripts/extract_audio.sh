#!/bin/zsh

# Check if the input file is provided
if [ -z "$1" ]; then
  echo "Error: Please provide the input file as the first argument." >&2
  exit 1
fi

ffmpeg -i "$1" -map 0:a "${1%.*}.m4a"
