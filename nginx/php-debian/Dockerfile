FROM composer:2.6 as composer

# FROM debian:bullseye
FROM php:7.3.4

# RUN     apt update \
#         && apt install -y \
#         php php-fpm php-mysql php-redis \
#         php-gd php-zip php-opcache php-curl php-mbstring php-intl php-dom php-bcmath php-fileinfo
COPY    --from=composer /usr/bin/composer /usr/bin/composer

# EXPOSE 9000

# ENTRYPOINT ["php" ,"/iwww/dujiaoka/artisan","queue:work"]
# ENTRYPOINT ["php" ,"-m"]
# ENTRYPOINT ["php" ,"/iwww/dujiaoka/artisan","queue:work"]
