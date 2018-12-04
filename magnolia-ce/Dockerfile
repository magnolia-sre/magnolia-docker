ARG TOMCAT_VER
ARG JDK_VER
ARG DB_TYPE

FROM magnolia-sre/magnolia-base:${TOMCAT_VER}-${JDK_VER}-${DB_TYPE}-alpine

ARG MGNL_VERSION

RUN wget -nv https://nexus.magnolia-cms.com/service/local/repositories/magnolia.public.releases/content/info/magnolia/magnolia-empty-webapp/$MGNL_VERSION/magnolia-empty-webapp-${MGNL_VERSION}.war -O $CATALINA_HOME/webapps/ROOT.war

# Install JDBC drivers
RUN mkdir $CATALINA_HOME/lib/jdbc && \
    if [ "x$DB_TYPE" = "xpostgresql" ] ; then wget -nv $POSTG_JDBC -O $CATALINA_HOME/lib/$POSTGRESQL_JDBC_PACKAGE.jar ; fi && \
    if [ "x$DB_TYPE" = "xmysql" ] ; then wget -nv -O - $MYSQL_JDBC | tar -C /tmp -xvzf - $MYSQL_JDBC_PACKAGE/$MYSQL_JDBC_PACKAGE-bin.jar && mv /tmp/$MYSQL_JDBC_PACKAGE/$MYSQL_JDBC_PACKAGE-bin.jar $CATALINA_HOME/lib ; fi 



ENV POSTG_JDBC=http://jdbc.postgresql.org/download/$POSTGRESQL_JDBC_PACKAGE.jar
ENV MYSQL_JDBC=http://dev.mysql.com/get/Downloads/Connector-J/$MYSQL_JDBC_PACKAGE.tar.gz 