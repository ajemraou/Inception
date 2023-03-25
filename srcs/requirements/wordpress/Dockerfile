FROM debian:buster

RUN apt update && apt install -y curl && apt install -y wordpress && apt install -y php-fpm

COPY ./tools/wordpress.sh .

RUN chmod +x ./wordpress.sh

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./conf/wp-config-sample.php ./

CMD ["./wordpress.sh"]
