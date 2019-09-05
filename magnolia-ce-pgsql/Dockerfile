ARG TOMCAT_VER
ARG JRE_VER
ARG DIST

FROM magnolia/magnolia-base:${TOMCAT_VER}-${JRE_VER}${DIST:+-$DIST}

ARG MGNL_VER
ENV POSTGRESQL_VER 42.2.5

COPY files/repo.xml /etc/magnolia/repo.xml

RUN mkdir $CATALINA_HOME/lib/jdbc && \
    wget -nv https://jdbc.postgresql.org/download/postgresql-$POSTGRESQL_VER.jar -O $CATALINA_HOME/lib/postgresql-$POSTGRESQL_VER.jar && \
    wget -nv https://nexus.magnolia-cms.com/service/local/repositories/magnolia.public.releases/content/info/magnolia/bundle/magnolia-community-demo-webapp/$MGNL_VER/magnolia-community-demo-webapp-$MGNL_VER.war -O $CATALINA_HOME/webapps/ROOT.war