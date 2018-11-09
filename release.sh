#!/usr/bin/env bash

docker pull ubuntu

docker build -t hunkier/java-oracle:server_jre_10 ./server_jre/ && docker push hunkier/java-oracle:server_jre_10
docker build -t hunkier/java-oracle:jre_10 ./jre/ && docker push hunkier/java-oracle:jre_10
docker build -t hunkier/java-oracle:jdk_10 ./jdk/ && docker push hunkier/java-oracle:jdk_10

docker tag hunkier/java-oracle:server_jre_10 hunkier/java-oracle:latest
docker push hunkier/java-oracle:latest
