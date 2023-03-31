# vim:set ft=dockerfile:
FROM registry.gitlab.com/docker-alw/nextcloud-php-modules:latest

RUN set -x \
	&& apk --no-cache add php81

VOLUME /app

USER nextcloud

CMD ["/usr/bin/php81", "-f", "/app/nextcloud/cron.php"]
