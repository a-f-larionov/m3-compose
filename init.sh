sleep 15
mysql -uroot -p$MYSQL_ROOT_PASSWORD -hmysql < /var/scripts/dump.sql
