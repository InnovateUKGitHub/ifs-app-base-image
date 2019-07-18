#!/usr/bin/env bash

set -e

NEXUS_USERNAME=$1
NEXUS_PASSWORD=$2
NEXUS_REGISTRY=$3

echo ${NEXUS_USERNAME}
echo ${NEXUS_PASSWORD}
echo ${NEXUS_REGISTRY}

docker login -u ${NEXUS_USERNAME} -p ${NEXUS_PASSWORD} ${NEXUS_REGISTRY}

echo "Pushing app base image"
#docker push ${NEXUS_REGISTRY}/innovateuk/app-base-image:latest

echo "Pushing openjdk image"
#docker push ${NEXUS_REGISTRY}/innovateuk/openjdk:latest
