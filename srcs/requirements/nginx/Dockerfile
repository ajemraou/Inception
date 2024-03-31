FROM debian:buster

RUN apt update 
RUN apt install -y nginx certbot python3-certbot-nginx
RUN mkdir -p /etc/nginx/ssl
RUN openssl genrsa -out /etc/nginx/ssl/server.key
RUN openssl req -new -key /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.csr -subj "/C=MA/ST=Benguerir/L=Bg/O=Example Inc./OU=1337/CN=ajemraou.42.fr"
RUN openssl x509 -req -days 365 -in /etc/nginx/ssl/server.csr -signkey /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt

COPY ./conf/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]