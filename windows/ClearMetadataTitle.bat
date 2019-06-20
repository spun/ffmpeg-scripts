@ECHO OFF
ECHO "%~1%"
%~dp0/ffmpeg -loglevel warning -i "%~1" -metadata title="" -codec copy "%~p1%~n1.clear%~x1"
timeout 5
