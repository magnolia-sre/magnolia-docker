#!/bin/bash

docker build --build-arg MGNL_VER=$1  \
			 --build-arg TOMCAT_VER=$2  \
             --build-arg JRE_VER=$3  \
             --build-arg DIST=${4:+$4}  \
             --tag magnolia/magnolia-ce:$1-$2-$3${4:+-$4} .