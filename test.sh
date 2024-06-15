#!/bin/ash
# shellcheck shell=dash

set -x -e -o pipefail

# shellcheck disable=SC1091
. /php_version

id | grep "(nextcloud)"
id -u | grep "960"
test -e "/usr/bin/php${PHP_VERSION}"
test -L "/var/log/php${PHP_VERSION}/error.log"
# shellcheck disable=SC2010
ls -l "/var/log/php${PHP_VERSION}/error.log" | grep "/dev/stderr"

php -n -v | tr -d '.' | grep " ${PHP_VERSION}"
