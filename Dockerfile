FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/felicity.zip /var/www/html
WORKDIR /var/www/html
RUN unzip felicity.zip
RUN cp -rvf felicity/* .
RUN rm -rf felicity felicity.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
