FROM debian:jessie

MAINTAINER Nicolas Barbé "https://github.com/nicolasbarbe"

ENV MYSQL_JDBC_PACKAGE mysql-connector-java-5.1.36
ENV POSTGRESQL_JDBC_PACKAGE postgresql-9.4-1201.jdbc41

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list

# Install Apache Tomcat 8 and openjdk-8-jdk
RUN apt-get update && apt-get install -y --no-install-recommends  \
	openjdk-8-jre-headless  \
	tomcat8 \
	wget && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

# Configure Apache Tomcat environment variables
ENV CATALINA_HOME /usr/share/tomcat8
ENV CATALINA_BASE /var/lib/tomcat8
ENV CATALINA_TMPDIR /tmp/tomcat8

# Make sure that the temporary directory exists
RUN mkdir -p $CATALINA_TMPDIR              

# Remove all webapps from the default Tomcat installation
RUN rm -rf $CATALINA_BASE/webapps/*

# Copy tomcat configuration files from the project to the container
COPY tomcat/setenv.sh  $CATALINA_BASE/bin/setenv.sh    

# Install JDBC drivers
RUN mkdir $CATALINA_HOME/lib/jdbc
RUN wget -nv http://jdbc.postgresql.org/download/$POSTGRESQL_JDBC_PACKAGE.jar -O $CATALINA_HOME/lib/$POSTGRESQL_JDBC_PACKAGE.jar 
RUN wget -nv -O - http://dev.mysql.com/get/Downloads/Connector-J/$MYSQL_JDBC_PACKAGE.tar.gz  | tar -C /tmp -xvzf - $MYSQL_JDBC_PACKAGE/$MYSQL_JDBC_PACKAGE-bin.jar 
RUN mv /tmp/$MYSQL_JDBC_PACKAGE/$MYSQL_JDBC_PACKAGE-bin.jar $CATALINA_HOME/lib

# Start the tomcat instance
ENTRYPOINT ["/usr/share/tomcat8/bin/catalina.sh", "run"]
CMD [""]

# Expose the ports
EXPOSE 8080