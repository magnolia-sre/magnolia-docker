ARG TOMCAT_VER
ARG JRE_VER

FROM tomcat:${TOMCAT_VER}-${JRE_VER}-alpine

MAINTAINER Magnolia SRE Team "https://github.com/magnolia-sre"

ONBUILD COPY tomcat/setenv.sh $CATALINA_HOME/bin/

RUN apk add --update wget && \
    rm -rf /var/cache/apk/* \
    rm -Rf $CATALINA_HOME/webapps/* 

VOLUME /var/lib/magnolia

