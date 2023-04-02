#!/bin/bash

echo "CREATE DATABASE $DATABASE;" > file
echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> file
echo "GRANT ALL PRIVILEGES ON $DATABASE.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;" >> file
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" >> file
echo "FLUSH PRIVILEGES;" >> file

service mysql start
<file mysql
rm file
service mysql stop

mysqld
