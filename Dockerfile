FROM ubuntu:latest
MAINTAINER sumalearn066@gmail.com
RUN apt-get update && apt-get install -y git && apt-get install -y apache2
RUN rm -rvf /var/www/*
RUN git clone https://github.com/Suma56/webdev /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
