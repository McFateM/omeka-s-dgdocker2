#! /bin/bash

## docker-reset.sh

docker stop $(docker ps -q); 
docker rm -v $(docker ps -qa); 
docker image rm -f $(docker image ls -q); 
docker system prune --force;
# docker volume prune --force;    ## This line, if enabled, will delete all your persistent data.  Use with caution!
