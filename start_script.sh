#!/bin/bash

echo 'delete old version'
cd docker
docker-compose down
docker image rmi fe
docker image rmi be
docker image rmi docker-fe
docker image rmi docker-be
docker image rmi postgres
cd ..
cd src

echo 'start be'
cd be
sh ./build_script.sh
cd ..
cd ..
cd docker
cd dockerfiles
cd be
cd ..
cd ..
cd ..
cd src

echo 'start fe'
cd fe
sh ./build_script.sh
cd ..
cd ..
cd docker
cd dockerfiles
cd fe
cd ..
cd ..
cd ..
cd src

echo 'start container'
cd ..
cd docker
docker-compose up