FROM php:7.4-apache
RUN apt-get update \
 && docker-php-ext-install mysqli pdo pdo_mysql
COPY . /var/www/html
#COPY vhost.conf /etc/apache2/sites-available/000-default.conf
