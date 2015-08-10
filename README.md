# magnolia-docker
A repository containing docker images for [Magnolia CMS](http://magnolia-cms.com/).

## The base image
A base image is available as a starting point for any containers running Magnolia CMS.

This image is based on Debian Jessie, JDK 8 and Tomcat 8 and includes JDBC drivers for MySQL and PostgreSQL.

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

## Configuration
The configuration of the image is done through these environment variables:

- `CLUSTER_ID`: Unique identifier of the node in the cluster. This cluster Id is automatically generated and can be overriden if needed through this variable.
- `DB_SCHEMA`: Database schema. Only relevant if your Magnolia instance is using a SQL database.
- `DB_USERNAME`: Database username. Only relevant if your Magnolia instance is using a SQL database.
- `DB_PASSWORD`: Database password. Only relevant if your Magnolia instance is using a SQL database.
- `DEVELOP_MODE`: Run magnolia in development mode.

You can override the default Tomcat settings either copying a new setenv.sh file in the container or mounting a volume to load the file from the host.

## Important notes
This images are still in early phase of development and not suited to be used in production. For instance, default Tomcat and JVM settings are still used.
