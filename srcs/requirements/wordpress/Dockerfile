FROM debian:buster

RUN apt update 

RUN apt install -y curl wordpress php-fpm

COPY ./tools/wordpress.sh .

RUN chmod +x ./wordpress.sh

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD ["./wordpress.sh"]
