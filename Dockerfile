# vim:set ft=dockerfile:
FROM registry.gitlab.com/docker-alw/nextcloud-php-modules:latest

RUN set -x \
	&& apk --no-cache add php7

VOLUME /app

USER nextcloud

CMD ["/usr/bin/php7", "-f", "/app/nextcloud/cron.php"]
