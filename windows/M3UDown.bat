@ECHO OFF
ECHO "%~1"
%~dp0/ffmpeg -loglevel warning -protocol_whitelist "file,http,tcp,https,tls" -i "%~1" -bsf:a aac_adtstoasc -c copy "%~p1%~n1.mp4"
timeout 5
