echo "wait for mysql connect $MYSQL_DATABASE"

while ! mysqladmin ping -h"$MYSQL_HOST" --silent ; do
    echo "wait for mysql connect $MYSQL_DATABASE"
    sleep 1
done

echo "mysql show databases"
dbvar=$(mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -e "show databases")

echo $dbvar

echo "look fo db $MYSQL_DATABASE"
if [[ $dbvar == *"$MYSQL_DATABASE"* ]]; then
  echo "db $MYSQL_DATABASE exists! continue... "
else
  echo "db $MYSQL_DATABASE does not found! exit script"
  return
fi

echo "look tables from db $MYSQL_DATABASE"

dbvar=$(mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -e "show tables from $MYSQL_DATABASE")

echo $dbvar

if [ "$dbvar" = "" ]; then
  echo "no tables found"
  echo "apply dump.sql"

  mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < ./dump.sql

  echo "finished!"

else

  echo "db $MYSQL_DATABASE have already data! exit script."
  echo "finished!"
fi
