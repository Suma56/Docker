FROM ubuntu:latest
MAINTAINER choudharysirvi1212@gmail.com
RUN apt-get update && apt-get install -y git && apt-get install -y apache2
RUN rm -rvf /var/www/*
RUN git clone https://github.com/praveensirvi1212/webdev /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
