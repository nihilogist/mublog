#!/bin/bash
#Stop any running instances
docker-compose stop

#remove docker container
docker rm mublog_mongrel2_1

#remove docker image
docker rmi mublog_mongrel2

#restart from scratch
docker-compose up
