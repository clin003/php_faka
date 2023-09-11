FROM php:8.2-fpm

RUN     /bin/sh -c "mkdir -p /usr/local/etc/php/conf.d" && apt-get update \
        && apt-get install -y \
        libfreetype-dev \
		libjpeg62-turbo-dev \		
        zlib1g-dev libzip-dev \
        libwebp-dev libjpeg-dev libpng-dev libfreetype6-dev \
        && docker-php-ext-install zip  \
        && docker-php-ext-configure gd --with-freetype --with-jpeg \
	    && docker-php-ext-install -j$(nproc) gd \
        && docker-php-ext-install pdo_mysql  \
        && docker-php-ext-enable pdo_mysql  \
        && docker-php-ext-enable zip \
        && docker-php-ext-install opcache  \
        && docker-php-ext-enable opcache 