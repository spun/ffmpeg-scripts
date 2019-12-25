@ECHO OFF
ECHO "%~1"
:: Final name of the backup file and its path
SET BACKUP_FILE_NAME="%~n1.backup%~x1"
SET BACKUP_FILE_PATH="%~p1%~n1.backup%~x1"
:: Run rename
REN "%~1" %BACKUP_FILE_NAME%
:: Check if the renaming was successful
IF %errorlevel% gtr 0 (
  ECHO RENAMING FAILED
) ELSE (
  :: Use ffmpeg to clear the title
  %~dp0/ffmpeg -loglevel warning -i %BACKUP_FILE_PATH% -metadata title="" -codec copy "%~1"
)
TIMEOUT 5
