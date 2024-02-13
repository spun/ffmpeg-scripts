#!/bin/sh

FILEPATH=$1
DIR="$(dirname "${FILEPATH}")"
FILE="$(basename "${FILEPATH}")"
FILENAME=${FILE%.*}
ffmpeg -i "$FILEPATH" -q:a 0 -map a "${DIR}/${FILENAME}.mp3"
