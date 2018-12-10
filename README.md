# magnolia-docker
A repository containing docker images for [Magnolia CMS](http://magnolia-cms.com/).

## The base image
A base image is available as a starting point for any containers running Magnolia CMS.

The image exists in different flavors: **`magnolia/magnolia-base:<TOMCAT VERSION>-<JRE VERSION>-<DISTRIBUTION>`**.

## Usage
To create a Docker image for your Magnolia project you must create your own Dockerfile which _inherits_ the base image and copies the WAR file to the folder ``` $CATALINA_BASE/webapps```.

The base image expects the file ``files/setenv.sh`` be present in the build context. This file is used to configure the JRE, Tomcat and Magnolia using Java properties. 

The following example configure the Java Virtual Machine:

````
export CATALINA_OPTS="$CATALINA_OPTS -Xms64M -Xmx2048M -server -Djava.awt.headless=true"
````
## Examples

### Magnolia Community Edition
This image runs Magnolia Community Edition with the embedded H2 database. 

The image can be configured with the following environment variables:
- `IS_AUTHOR (true|false)` The instance is a author instance
- `DEVELOP_MODE (true|false)` The instance is started in development mode

**Example:** 
```docker run -p 8080:8080 -e IS_AUTHOR=false -e DEVELOP_MODE=false magnolia/magnolia-ce:6.0-9.0.13-jre11-slim```

### Magnolia Community Edition with Postgresql
This image runs Magnolia Community Edition with an external postgresql database. 

The image can be configured with the following environment variables:
- `IS_AUTHOR (true|false)` The instance is a author instance
- `DEVELOP_MODE (true|false)` The instance is started in development mode
- `DB_ADDRESS` Postgresql database address
- `DB_PORT` Postgresql database port
- `DB_SCHEMA` Postgresql database schema
- `DB_USERNAME` Postgresql database username
- `DB_PASSWORD` Postgresql database password

The docker compose file can be used to start a public and author instances with their respective database:

**Example:**
```docker-compose up```

The author instance is available at http://localhost:3000 and the public instance at http://localhost:3001

## Recommendations
- [Create your own bundle](https://documentation.magnolia-cms.com/display/DOCS60/Creating+a+custom+bundle).
- [Use a single build artefact (war)](https://documentation.magnolia-cms.com/display/DOCS60/WAR+file+with+multiple+configurations) that contains a deployment configuration for all your environments.
- Alternatively, use a agnostic build artifact and configure `magnolia.home` to point outside of `CATALINA_HOME` such as for example `/etc/magnolia` and configure Magnolia from the `Dockerfile`.
- Expose java properties as environment variable in the `setenv.sh` file to configure your container.
- By default, `MagnoliaServletContextListener` looks for `contextPath` or `servername` which are always the same inside a container. Instead, use environment variable inside your `<context-param>` of your `web.xml` : `WEB-INF/config/${env/INSTANCE_TYPE}/${env/DB_TYPE}/magnolia.properties`


## Important notes
These images are still in early phase of development and not suited to be used in production.
