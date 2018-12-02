@ECHO OFF

REM Check video file
IF NOT EXIST video.mp4 (
  echo "Error: Video file missing"
  goto :endProgram
)

REM Check audio file
IF NOT EXIST audio.m4a (
  echo "Error: Audio file missing"  
  goto :endProgram
)

%~dp0/../ffmpeg -i video.mp4 -i audio.m4a -c copy final.mkv

:endProgram
timeout 5
