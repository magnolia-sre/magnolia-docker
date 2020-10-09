# ----------------------------------------------------------
# Magnolia Docker Image
# ----------------------------------------------------------
#
# https://github.com/docker-library/tomcat/blob/46fb91d392f48c4e606cb6f845c4be37d6bacffc/9.0/jdk11/openjdk-slim/Dockerfile
FROM tomcat:9.0.38-jdk11-openjdk-slim

MAINTAINER sre@magnolia-cms.com

ENV JAVA_OPTS="-Dmagnolia.home=/opt/magnolia -Dmagnolia.resources.dir=/opt/magnolia -Dmagnolia.update.auto=true -Dmagnolia.author.key.location=/opt/magnolia/activation-key/magnolia-activation-keypair.properties"

# Copy Tomcat setenv.sh
COPY src/main/docker/tomcat-setenv.sh $CATALINA_HOME/bin/setenv.sh
RUN chmod +x $CATALINA_HOME/bin/setenv.sh

# This directory is used for Magnolia property "magnolia.home"
RUN mkdir /opt/magnolia
RUN chmod 755 /opt/magnolia

ARG ARTIFACT_VERSION

RUN rm -rf $CATALINA_HOME/webapps/ROOT
COPY webapp/target/ROOT.war $CATALINA_HOME/webapps/
