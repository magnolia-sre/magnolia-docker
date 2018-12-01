ARG TOMCAT_VER
ARG JDK_VER
ARG DB_TYPE

FROM magnolia-sre/magnolia-base:${TOMCAT_VER}-${JDK_VER}-${DB_TYPE}-alpine

ARG MGNL_VERSION

RUN wget -nv https://nexus.magnolia-cms.com/service/local/repositories/magnolia.public.releases/content/info/magnolia/magnolia-empty-webapp/$MGNL_VERSION/magnolia-empty-webapp-${MGNL_VERSION}.war -O $CATALINA_HOME/webapps/ROOT.war