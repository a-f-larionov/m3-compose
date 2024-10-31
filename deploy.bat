rem @echo off

cd ..
call mvn clean install -maven.test.skip

call :copyToServer m3-common-service
call :copyToServer m3-users-service
call :copyToServer m3-game-service

cd m3-compose

ssh root@prod-server-2.ru "cd /var/job/m3/m3-compose && docker compose up -d --build"

goto :eof
                      

:copyToServer
SETLOCAL
SET PROJECT_FOLDER=%1

echo "start copy to server"
@ssh root@prod-server-2.ru "mkdir /var/job/m3/%PROJECT_FOLDER%/target

scp -pr ./%PROJECT_FOLDER%/target/%PROJECT_FOLDER%-1.0-SNAPSHOT.jar root@prod-server-2.ru:/var/job/m3/%PROJECT_FOLDER%/target/%PROJECT_FOLDER%-1.0-SNAPSHOT.jar

ENDLOCAL
EXIT /B