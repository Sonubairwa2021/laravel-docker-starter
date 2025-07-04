FROM php:8.2-fpm

# Install dependencies and extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    curl \
    libzip-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpq-dev \
    git \
    vim \
    libcurl4-openssl-dev \
    libssl-dev \
    libmcrypt-dev \
    default-mysql-client \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd zip

WORKDIR /var/www
