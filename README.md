# nextcloud-cron

Docker image based on alpine running php with modules to be used for Nextcloud cronjobs.

This image is intented to run within an internal docker network.

[![pipeline status](https://gitlab.com/docker-alw/nextcloud-cron/badges/main/pipeline.svg)](https://gitlab.com/docker-alw/nextcloud-cron/-/commits/main)

## Run

To run this container using the default PHP-FPM configuration just run:
```
docker network create -d bridge --subnet 10.0.1.0/24 "net-app"
docker create --network net-app --name "nextcloud-cron" -v "/path/to/nextcloud-source-code/:/app/nextcloud/" "registry.gitlab.com/docker-alw/nextcloud-cron"
docker start nextcloud-cron
```
