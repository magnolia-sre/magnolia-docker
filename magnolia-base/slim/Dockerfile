ARG TOMCAT_VER
ARG JDK_VER

FROM tomcat:${TOMCAT_VER}-${JDK_VER}-slim

MAINTAINER Magnolia SRE Team "https://github.com/magnolia-sre"

ONBUILD COPY tomcat/setenv.sh $CATALINA_HOME/bin/

RUN apt-get update && apt-get install -y wget && \
    rm -Rf $CATALINA_HOME/webapps/* 

VOLUME /var/lib/magnolia

