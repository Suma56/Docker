FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com
RUN yum install -y httpd \
   zip \
  unzip 
ADD https://github.com/praveensirvi1212/webdev/blob/main/2126_antique_cafe.zip /var/www/html
WORKDIR /var/www/html
RUN unzip 2126_antique_cafe.zip
RUN cp -rvf 2126_antique_cafe/* .
RUN rm -rf 2126_antique_cafe 2126_antique_cafe.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
