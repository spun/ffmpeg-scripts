#!/bin/sh

FILEPATH=$1
DIR="$(dirname "${FILEPATH}")"
FILE="$(basename "${FILEPATH}")"
FILENAME=${FILE%.*}
ffmpeg -loglevel warning -protocol_whitelist "file,http,tcp,https,tls" -i $FILEPATH -bsf:a aac_adtstoasc -c copy "${DIR}/${FILENAME}.mp4"
