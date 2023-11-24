@echo off

CALL :publishToLocalMaven m3-lib

CALL :build m3-common-service
CALL :build m3-users-service
CALL :build m3-gameplay-service

goto :eof
s
:build
SETLOCAL
SET PROJECT_FOLDER=%1

echo build %PROJECT_FOLDER%
cd ..
cd %PROJECT_FOLDER%
call gradle build -x test
cd ..
cd m3-compose

ENDLOCAL
EXIT /B


:publishToLocalMaven
SETLOCAL
SET PROJECT_FOLDER=%1

echo publishToMavenLocal %PROJECT_FOLDER%
cd ..
cd %PROJECT_FOLDER%
call gradle publishToMavenLocal -x test
cd ..
cd m3-compose

ENDLOCAL
EXIT /B