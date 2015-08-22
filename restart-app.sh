#!/bin/bash
#Stop any running instances
docker-compose stop

#remove zeromq master
docker rm mublog_zeromqmain_1
docker rmi mublog_zeromqmain

#remove docker container for main server
docker rm mublog_mongrel2_1
docker rmi mublog_mongrel2

#remove docker container for sample handler
docker rm mublog_samplehandler_1
docker rmi mublog_samplehandler

#restart from scratch
docker-compose up
