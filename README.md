# magnolia-docker
A repository containing docker images for [Magnolia CMS](http://magnolia-cms.com/).

## The base image
A base image is available as a starting point for any containers running Magnolia CMS.

This image is based on Ubuntu 14.10, JDK 7 and Tomcat 8 and includes JDBC drivers for MySQL and PostgreSQL.

It starts automatically an empty Tomcat server and exposes the port 8080.

More details in this [blog post](http://nicolasbarbe.com/2015/01/02/a-docker-image-for-magnolia/).

## Additional images
Additional Dockerfiles are also provided in order to illustrate some common deployment patterns.

### one-author-derby
A straightforward Dockerfile used to illustrate basic usage of the base image. 

Magnolia CMS is running inside its own container as an author instance and uses Derby to persist the data.

More details in this [blog post](http://nicolasbarbe.com/2015/01/02/a-docker-image-for-magnolia/).

### one-author-one-public
A more complete but still simple Dockerfile to illustrate the deployment of a Magnolia public and author instances.

Fig is used to start four containers, a Magnolia public instance, a Magnolia author instance and their respective databases.

More details in this [blog post](http://nicolasbarbe.com/2015/01/07/architecture-patterns-single-author-and-public-instance/).

## Important notes
This images are still in early phase of development and not suited to be used in production. For instance, default Tomcat and JVM settings are still used.
