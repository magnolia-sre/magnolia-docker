ARG TOMCAT_VER
ARG JDK_VER
ARG DB_TYPE

FROM tomcat:${TOMCAT_VER}-${JDK_VER}-alpine

MAINTAINER Magnolia SRE Team "https://github.com/magnolia-sre"

ENV IS_AUTHOR="true"

COPY tomcat/setenv.sh $CATALINA_HOME/bin/

RUN apk add --update \
    wget && \
    rm -rf /var/cache/apk/* \
    rm -Rf $CATALINA_HOME/webapps/* && \
    wget -nv https://nexus.magnolia-cms.com/service/local/repositories/magnolia.public.releases/content/info/magnolia/magnolia-empty-webapp/5.7.1/magnolia-empty-webapp-5.7.1.war -O $CATALINA_HOME/webapps/ROOT.war

VOLUME /var/lib/magnolia
