#!/bin/bash

echo "CREATE DATABASE $DATABASE;" > file
echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> file
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;" >> file
echo "FLUSH PRIVILEGES;" >> file

service mysql start
<file mysql -u root
rm file
service mysql stop

mysqld
