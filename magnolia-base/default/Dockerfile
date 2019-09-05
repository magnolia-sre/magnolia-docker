ARG TOMCAT_VER
ARG JRE_VER

FROM tomcat:${TOMCAT_VER}-${JRE_VER}

MAINTAINER Magnolia SRE Team "https://github.com/magnolia-sre"

ONBUILD COPY files/setenv.sh $CATALINA_HOME/bin/

RUN apt-get update && apt-get install -y wget && \
    rm -Rf $CATALINA_HOME/webapps/* 

VOLUME /var/lib/magnolia
