ffmpeg -i "$1" -map 0:a "${1%.*}.m4a"
