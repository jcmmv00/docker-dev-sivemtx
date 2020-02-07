#!/bin/bash

rm .env
DOCKER_USER=asesoftware
DOCKER_PASS=jm1gY4PQhYUdG4j5byoXjk=mrrCR05IO
DOCKER_HOST=asesoftware.azurecr.io

mkdir maven.m2
cd maven.m2
maven_m2_path=$PWD
cd ..
echo "maven_m2_path="$maven_m2_path >> .env

mkdir mysources
cd mysources
my_sources_path=$PWD
cd ..
echo "my_sources_path="$my_sources_path >> .env

mkdir target
cd target
target_path=$PWD
cd ..
echo "target_path="$target_path >> .env

docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST

docker-compose up
