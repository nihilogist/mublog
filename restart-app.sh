#!/bin/bash
#Stop any running instances
docker-compose stop

#remove docker container for main server
docker rm mublog_mongrel2_1
docker rmi mublog_mongrel2

#remove docker container for sample handler
docker rm mublog_thoughtservice_1
docker rmi mublog_thoughtservice

#restart from scratch
docker-compose up
