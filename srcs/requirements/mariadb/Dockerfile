FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mariadb.sh ./

RUN chmod +x ./mariadb.sh

CMD ["./mariadb.sh"]
