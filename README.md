# magnolia-docker
A repository containing docker images for [Magnolia CMS](http://magnolia-cms.com/).

## The base image
A base image is available as a starting point for any containers running Magnolia CMS.

This image is based on Ubuntu 14.10, JDK 7 and Tomcat 8 and includes JDBC drivers for MySQL and PostgreSQL.

It starts automatically an empty Tomcat server and exposes the port 8080.

More details in this [blog post](http://nicolasbarbe.com/2015/01/02/a-docker-image-for-magnolia/).

## Usage
To create a Docker image of your Magnolia project you must create your own Dockerfile which _inherits_ the base image and copies the WAR file to the folder ``` $CATALINA_BASE/webapps```.

Here is a straightforward Dockerfile which takes the official Magnolia WAR file available on sourceforge:

```
FROM nicolasbarbe/magnolia-base

MAINTAINER Nicolas Barbé "https://github.com/nicolasbarbe"

RUN wget -nv http://sourceforge.net/projects/magnolia/files/magnolia/Magnolia%20CE%205.3.7/magnolia-bundled-webapp-5.3.7.war/download?use_mirror=autoselect -O $CATALINA_BASE/webapps/ROOT.war
```

Here, Magnolia CMS is running inside its own container as an author instance and uses Derby to persist the data.

## Important notes
This images are still in early phase of development and not suited to be used in production. For instance, default Tomcat and JVM settings are still used.
