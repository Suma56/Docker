FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/foxclore.zip /var/www/html
WORKDIR /var/www/html
RUN unzip foxclore.zip
RUN cp -rvf foxclore/* .
RUN rm -rf foxclore foxclore.zi
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
