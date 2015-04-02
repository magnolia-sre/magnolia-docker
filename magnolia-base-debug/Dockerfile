FROM nicolasbarbe/magnolia-base

MAINTAINER Nicolas Barbé "https://github.com/nicolasbarbe"

# ENV DCEVM_VERSION dcevm-light-jdk7u71-2
RUN echo "deb http://ftp.de.debian.org/debian wheezy-backports main " >> /etc/apt/sources.list 

# Install DCEVM
RUN apt-get  update && apt-get install -y --no-install-recommends  \
	openjdk-7-jre-dcevm 
	# maven

# Setup maven for Magnolia
# RUN mvn org.sonatype.plugins:nexus-m2settings-maven-plugin:1.6.5:download -DnexusUrl=https://nexus.magnolia-cms.com -Dusername=anonymous -Dpassword=anonymous -DtemplateId=magnolia-community-public > /dev/null 

# Install hot swap
# COPY ./jre/hotswap-agent.jar /usr/local/lib/

COPY tomcat/setenv.sh $CATALINA_BASE/bin/setenv.sh
COPY tomcat/ROOT.xml $CATALINA_BASE/conf/Catalina/localhost/ROOT.xml

COPY tomcat/start-debug.sh $CATALINA_BASE/bin/start-debug.sh
RUN chmod +x $CATALINA_BASE/bin/start-debug.sh

# COPY aardwark/aardwark.properties $CATALINA_BASE/webapps/aardwark.properties
# COPY aardwark/aardwark.war $CATALINA_BASE/webapps/aardwark.war

# Exposes JMX and JPDA port for debugging from an IDE
EXPOSE 1043 1099

ENTRYPOINT ["/var/lib/tomcat7/bin/start-debug.sh"]