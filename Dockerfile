FROM ubuntu
RUN apt update && apt install apache2 -y
WORKDIR /var/www/html
COPY ./The_Royal_Touch .
EXPOSE 8002:80
CMD apachectl -D FOREGROUND