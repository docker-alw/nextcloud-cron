# nextcloud-cron

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/docker-alw/nextcloud-cron/main.svg)](https://results.pre-commit.ci/latest/github/docker-alw/nextcloud-cron/main)
[![dependabot update](https://github.com/docker-alw/nextcloud-cron/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/docker-alw/nextcloud-cron/actions/workflows/dependabot/dependabot-updates)
[![dependabot validate](https://github.com/docker-alw/nextcloud-cron/actions/workflows/dependabot_validate.yml/badge.svg)](https://github.com/docker-alw/nextcloud-cron/actions/workflows/dependabot_validate.yml)
[![Build Main Image](https://github.com/docker-alw/nextcloud-cron/actions/workflows/build_image.yml/badge.svg)](https://github.com/docker-alw/nextcloud-cron/actions/workflows/build_image.yml)

Docker image based on alpine running php with modules to be used for Nextcloud cronjobs.

This image is intented to run within an internal docker network.

## Run

To run this container using the default PHP-FPM configuration just run:
```
docker network create -d bridge --subnet 10.0.1.0/24 "net-app"
docker create --network net-app --name "nextcloud-cron" -v "/path/to/nextcloud-source-code/:/app/nextcloud/" "ghcr.io/docker-alw/nextcloud-cron"
docker start nextcloud-cron
```
