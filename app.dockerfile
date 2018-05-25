FROM php:7.2-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    mysql-client --no-install-recommends \
    && docker-php-ext-install pdo_mysql

ADD . /var/www

RUN chown -R www-data:www-data /var/www