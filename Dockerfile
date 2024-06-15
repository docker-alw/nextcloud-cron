# vim:set ft=dockerfile:

# upstream image provides PHP_VERSION via ENV
# hadolint ignore=DL3007
FROM ghcr.io/docker-alw/nextcloud-php-modules:latest

RUN echo "PHP_VERSION=${PHP_VERSION}" > /php_version

COPY test.sh /test.sh

# hadolint ignore=DL3018
RUN apk --no-cache add "php${PHP_VERSION}"

VOLUME /app

USER nextcloud

ENTRYPOINT ["/usr/bin/php", "-f", "/app/nextcloud/cron.php"]
