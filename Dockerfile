FROM existenz/webstack:8.0

WORKDIR /www

RUN apk add php8-session musl-dev python3-dev libmcrypt-dev build-base gnupg php8-openssl php8-tokenizer php8-cli php8-pdo php8-pdo_mysql npm

ENTRYPOINT ["/init"]

EXPOSE 80

HEALTHCHECK --interval=5s --timeout=5s CMD curl -f http://127.0.0.1/php-fpm-ping || exit 1
