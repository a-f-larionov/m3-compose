rem @echo off

CALL :publishToLocalMaven m3-lib

CALL :buildAndCopyToServer m3-common-service
CALL :buildAndCopyToServer m3-users-service
CALL :buildAndCopyToServer m3-map-service
REM CALL :buildAndCopyToServer m3-stuff-service
REM CALL :buildAndCopyToServer m3-payment-service

REM CALL :dockerRestart

docker compose up -d --build


goto :eof

:dockerRestart
SETLOCAL
    ssh root@prod-server-2.ru "cd /var/job/m3/m3-compose && docker compose up -d --build"
ENDLOCAL
EXIT /B

:buildAndCopyToServer
SETLOCAL
SET PROJECT_FOLDER=%1

call :build %PROJECT_FOLDER%
call :copyToServer %PROJECT_FOLDER%

ENDLOCAL
EXIT /B

:build
SETLOCAL
SET PROJECT_FOLDER=%1

echo build %PROJECT_FOLDER%
cd ..
cd %PROJECT_FOLDER%

call gradle build --warning-mode all -x test

cd ..
cd m3-compose

ENDLOCAL
EXIT /B

:copyToServer
SETLOCAL
SET PROJECT_FOLDER=%1

echo "start copy to server"
ssh root@prod-server-2.ru "mkdir /var/job/m3/%PROJECT_FOLDER%/build
ssh root@prod-server-2.ru "mkdir /var/job/m3/%PROJECT_FOLDER%/build/libs
cd ..
scp -pr ./%PROJECT_FOLDER%/build/libs/%PROJECT_FOLDER%-0.0.1-SNAPSHOT.jar root@prod-server-2.ru:/var/job/m3/%PROJECT_FOLDER%/build/libs/%PROJECT_FOLDER%-0.0.1-SNAPSHOT.jar
cd m3-compose

ENDLOCAL
EXIT /B

:publishToLocalMaven
SETLOCAL
SET PROJECT_FOLDER=%1

echo publishToMaven $PROJECT_FOLDER
cd ..
cd %PROJECT_FOLDER%
call gradle publishToMavenLocal -x test
cd ..
cd m3-compose

ENDLOCAL
EXIT /B