FROM php:8.1.0-apache
WORKDIR /var/www/html

# Mod Rewrite
RUN a2enmod rewrite

# Linux Libraries
RUN apt-get update -y && apt-get install -y \
    libicu-dev \
    libmariadb-dev \
    unzip \
    zip \
    zlib1g-dev \
    libpng-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer 

# PHP Extensions
RUN docker-php-ext-install gettext intl pdo_mysql gd

# Configure GD with Freetype and JPEG support
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
