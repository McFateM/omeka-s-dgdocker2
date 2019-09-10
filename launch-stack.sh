#! /bin/bash

## launch-stack.sh

## Clean-up and create the 'web' network

cd /opt/
source docker-reset.sh
docker network create web

## Start Traefik, Portainer and Who Am I

cd /opt/dockerized-server
docker-compose up -d

## Start Omeka-S, Solr, MariaDB and PHPMyAdmin

cd ../omeka-s-docker
docker-compose up -d

