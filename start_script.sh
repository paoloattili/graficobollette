#!/bin/bash

echo 'delete old version'
cd docker
docker-compose down
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
docker build --no-cache -t be .
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
docker build --no-cache -t fe .
cd ..
cd ..
cd ..
cd src

echo 'start container'
cd ..
cd docker
docker-compose up