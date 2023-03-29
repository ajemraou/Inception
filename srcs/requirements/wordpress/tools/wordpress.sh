#!/bin/bash

rm -rf /var/www/html/wordpress 2> /dev/null
curl -o ./wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf ./wordpress.tar.gz -C /var/www/html \
    && rm ./wordpress.tar.gz \

mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

perl -pi -e "s/database_name_here/$DATABASE/g" /var/www/html/wordpress/wp-config.php
perl -pi -e "s/username_here/$MYSQL_USER/g" /var/www/html/wordpress/wp-config.php
perl -pi -e "s/password_here/$MYSQL_PASSWORD/g" /var/www/html/wordpress/wp-config.php
perl -pi -e "s/localhost/mariadb/g" /var/www/html/wordpress/wp-config.php


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html/wordpress

wp core install --url=$DOMAIN_NAME/ --title=$TITLE --admin_user=$ADMIN_USR --admin_password=$ADMIN_PWD --admin_email=$ADMIN_EMAIL --skip-email --allow-root

wp user create $USR $EMAIL --role=author --user_pass=$USR_PWD --allow-root

cd

mkdir -p /run/php

echo "[ ok ] php-fpm7.3 is running."

/usr/sbin/php-fpm7.3 -F