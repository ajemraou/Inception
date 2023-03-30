FROM debian:latest

RUN apt update && apt install -y nginx && apt install certbot python3-certbot-nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl genrsa -out /etc/nginx/ssl/server.key
RUN openssl req -new -key /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.csr -subj "/C=US/ST=California/L=San Francisco/O=Example Inc./OU=IT Department/CN=localhost.com"
RUN openssl x509 -req -days 365 -in /etc/nginx/ssl/server.csr -signkey /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt

COPY ./conf/default /etc/nginx/sites-enabled/default


CMD ["nginx", "-g", "daemon off;"]