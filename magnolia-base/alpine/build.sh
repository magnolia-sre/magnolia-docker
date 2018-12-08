#!/bin/bash
docker build --build-arg TOMCAT_VER=$1  \
             --build-arg JRE_VER=$2  \
             --tag magnolia/magnolia-base:$1-$2-alpine .

