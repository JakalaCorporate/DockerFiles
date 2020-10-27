FROM php:7.3-alpine

LABEL maintener="noc@lpweb.it"

ENV TZ=Europe/Rome
RUN apk add tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apk del tzdata

RUN apk add --update --no-cache \
    coreutils \
    apache-ant \
    nodejs npm \
    python2 \
    gcc \
    make \
    openjdk9 \
    curl

RUN apk add --no-cache libpng libpng-dev libzip libzip-dev postgresql-dev && \
    docker-php-ext-install gd zip pdo pdo_pgsql pdo_mysql && \
    apk del libpng-dev libzip-dev

RUN echo "$(curl -sS https://composer.github.io/installer.sig) -" > composer-setup.php.sig \
        && curl -sS https://getcomposer.org/installer | tee composer-setup.php | sha384sum -c composer-setup.php.sig \
        && php composer-setup.php && rm composer-setup.php* \
        && chmod +x composer.phar && mv composer.phar /usr/bin/composer

RUN mkdir /.npm && chown -R 1000:1000 /.npm
