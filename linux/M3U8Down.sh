#!/bin/bash

# Check the number of parameters
if [ $# -ne 1 ]; then
  echo "Wrong number of parameters: $0 <m3u8_file>"
  exit 1
fi

# Start time input prompt
while true; do
  read -p "Start time [in seconds] (default - 0): " start_time

  if [ -z "$start_time" ]; then
    start_time=0
    break
  elif [[ "$start_time" =~ ^[0-9]*$ ]]; then
    break
  else
    echo "$start_time is not a valid number"
  fi
done

# Extract the filename and path of the provided M3U8 file
m3u8_file="$1"
filename=$(basename -- "$m3u8_file")
filename_noext="${filename%.*}"
dirname=$(dirname -- "$m3u8_file")

echo "Running command..."
ffmpeg -loglevel warning -protocol_whitelist "file,http,tcp,https,tls" -i $m3u8_file -ss $start_time -bsf:a aac_adtstoasc -c copy "$dirname/$filename_noext.mp4"

echo "Done"
sleep 5s
