#!/bin/bash

echo 'build project'
mvn clean install -DskipTests

echo 'copy jar'
cp ./target/be-0.0.1-SNAPSHOT.jar 'D:/Progetti Personali/graficobollette/docker/dockerfiles/be'