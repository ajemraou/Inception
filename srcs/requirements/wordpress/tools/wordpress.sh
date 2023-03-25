#!/bin/bash
rm -rf /var/www/html/wordpress 2> /dev/null
curl -o ./wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf ./wordpress.tar.gz -C /var/www/html \
    && rm ./wordpress.tar.gz \

mv ./wp-config-sample.php /var/www/html/wordpress/wp-config-sample.php

mkdir -p /run/php

echo "[ ok ] php-fpm7.3 is running."

/usr/sbin/php-fpm7.3 -F