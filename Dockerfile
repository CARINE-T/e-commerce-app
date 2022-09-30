FROM ubuntu
RUN apt update && apt install apache2 -y
WORKDIR /var/www/html
COPY . .
EXPOSE 82:80
CMD apachectl -D FOREGROUND