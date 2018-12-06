ARG TOMCAT_VER
ARG JRE_VER

FROM magnolia/magnolia-base:${TOMCAT_VER}-${JRE_VER}-alpine

ARG MGNL_VER

RUN wget -nv https://nexus.magnolia-cms.com/service/local/repositories/magnolia.public.releases/content/info/magnolia/bundle/magnolia-community-demo-webapp/$MGNL_VER/magnolia-community-demo-webapp-$MGNL_VER.war -O $CATALINA_HOME/webapps/ROOT.war