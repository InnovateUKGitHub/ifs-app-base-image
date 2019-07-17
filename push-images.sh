#!/usr/bin/env bash

set -e

NEXUS_USERNAME=$1
NEXUS_PASSWORD=$2
NEXUS_URL=$3

docker login -u ${NEXUS_USERNAME} -p ${NEXUS_PASSWORD} ${NEXUS_URL}

echo "Pushing app base image"
docker push ${NEXUS_URL}/innovateuk/app-base-image:latest

echo "Pushing openjdk image"
docker push ${NEXUS_URL}/innovateuk/openjdk:latest
