# Magnolia Docker Image bundle

This reactor creates a webapp and docker container for Magnolia CMS. It inherits from ```magnolia-community-webapp``` 
and should rely on as little customizations as possible:

* There should not be any customizations underneath ```webapp/src/main/webapp``` directory.   
  * This implies no custom ```magnolia.properties``` files nor ```web.xml``` adaptations.
* properties should be directly passed to the JVM using jvm options, like ```-Dmagnolia.home=/opt/magnolia```
  or injected into the container, e.g. by using k8s ConfigMaps.

## Magnolia properties
```
-Dmagnolia.home=/opt/magnolia -Dmagnolia.bootstrap.dir=/opt/magnolia/bootstrap -Dmagnolia.update.auto=true -Dmagnolia.bootstrap.authorInstance=true
```

## Build the image
```shell script
mvn clean verify -U docker:build
```

