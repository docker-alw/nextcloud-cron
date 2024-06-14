# vim:set ft=dockerfile:
# hadolint ignore=DL3007
FROM ghcr.io/docker-alw/nextcloud-php-modules:latest

COPY test.sh /test.sh

# hadolint ignore=DL3018
RUN apk --no-cache add php83

VOLUME /app

USER nextcloud

CMD ["/usr/bin/php83", "-f", "/app/nextcloud/cron.php"]
