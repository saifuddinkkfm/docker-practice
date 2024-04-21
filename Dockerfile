FROM php:8.1.0-apache 
WORKDIR /var/www/html

#Mod Rewrite
RUN a2enmod rewrite 

RUN apt-get update -y && apt-get install -y libicu-dev unzip zip

#Composer 
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN docker-php-ext-install gettext intl pdo_mysql