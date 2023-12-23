FROM ubuntu:14.04
MAINTAINER roycloud123@gmail.com
RUN apt-get install -y apache2 \
    zip \
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip /var/www/html
WORKDIR /var/www/html
RUN unzip carvilla.zip
RUN cp -rvf carvilla-v1.0/* .
CMD ["/usr/bin/httpd","-D","FOREGROUND"]
EXPOSE 80

