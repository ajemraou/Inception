#!/bin/bash

echo "CREATE DATABASE $db;" > file

echo "CREATE USER '$admin'@'%' IDENTIFIED BY '$admin_password';" >> file
echo "GRANT ALL PRIVILEGES ON *.* TO '$admin'@'%' WITH GRANT OPTION;" >> file
echo "FLUSH PRIVILEGES;" >> file

echo "CREATE USER '$usr'@'%' IDENTIFIED BY '$usr_password';" >> file
echo "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX ON *.* TO '$usr'@'%' WITH GRANT OPTION;" >> file
echo "FLUSH PRIVILEGES;" >> file

service mysql start
<file mysql -u root
rm file
service mysql stop

mysqld
