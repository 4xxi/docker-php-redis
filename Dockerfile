FROM 4xxi/php:7.2.2-fpm-alpine3.7

RUN apk upgrade --update && apk add \
libc-dev \
zlib-dev \
icu-dev \
autoconf \
gcc \
git \
make

# install redis ext
RUN pecl install redis \
    && docker-php-ext-enable redis