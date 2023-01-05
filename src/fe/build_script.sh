#!/bin/bash

echo 'build project'
ng build --prod

echo 'copy jar'
cp -r ./dist 'D:/Progetti Personali/graficobollette/docker/dockerfiles/fe'
