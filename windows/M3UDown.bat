@echo off
echo "%~1"
:: default start time value
set startTime=0
:get_start_time
    :: start time input prompt
    set /p startTime=Start time [in seconds] (default - %startTime%): 
    :: check if received value is a valid number. Source: https://stackoverflow.com/a/17584764
    set "var="&for /f "delims=0123456789" %%i in ("%startTime%") do set var=%%i
    if defined var (
        echo "%startTime%" is not a valid number
        echo:
        :: restore default and ask again
        set startTime=0
        goto :get_start_time
    )
echo Running command...
%~dp0/ffmpeg -loglevel warning -protocol_whitelist "file,http,tcp,https,tls" -i "%~1" -ss %startTime% -bsf:a aac_adtstoasc -c copy "%~p1%~n1.mp4"
timeout 5
