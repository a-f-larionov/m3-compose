@echo off

CALL :publishToLocalMaven m3-lib

CALL :build m3-common-service
CALL :build m3-users-service
CALL :build m3-gameplay-service

docker compose up -d --build

goto :eof

:dockerRestart
SETLOCAL
    ssh root@prod-server-2.ru "cd /var/job/m3-prod/m3-compose && docker compose up -d --build"
ENDLOCAL
EXIT /B


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