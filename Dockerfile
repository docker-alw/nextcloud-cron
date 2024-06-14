# vim:set ft=dockerfile:
# hadolint ignore=DL3007
FROM ghcr.io/docker-alw/nextcloud-php-modules:latest

COPY test.sh /test.sh

ARG PHP_VERSION=83

# hadolint ignore=DL3018
RUN apk --no-cache add php${PHP_VERSION}

VOLUME /app

USER nextcloud

CMD ["/usr/bin/php", "-f", "/app/nextcloud/cron.php"]
