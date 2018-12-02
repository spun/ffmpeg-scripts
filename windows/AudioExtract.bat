@ECHO OFF
ECHO "%~1"
%~dp0/ffmpeg -i "%~1" -q:a 0 -map a "%~p1%~n1.mp3"
timeout 5
