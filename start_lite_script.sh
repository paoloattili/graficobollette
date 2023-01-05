#!/bin/bash

cd src

echo 'start be'
cd be
sh ./build_script.sh
cd ..

echo 'restart container'
cd ..
cd docker
docker-compose down
docker-compose up