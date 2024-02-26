# vim:set ft=dockerfile:
FROM registry.gitlab.com/docker-alw/nextcloud-php-modules:latest

RUN set -x \
	&& apk --no-cache add php82

VOLUME /app

USER nextcloud

CMD ["/usr/bin/php82", "-f", "/app/nextcloud/cron.php"]
