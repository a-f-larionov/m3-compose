echo data: $1


#uname -a
#uname -m
##uname -r

#cat /etc/os-release
#lsb_release -a


sleep 15
mysql -uroot -p$MYSQL_ROOT_PASSWORD -hmysql < /var/scripts/dump.sql


sleep 1900