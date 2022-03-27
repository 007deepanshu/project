FROM centos:latest
MAINTAINER rajputdeepanshu70@gmail.com
Run yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf makrups-kindle.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
