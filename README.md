# Magnolia Docker Image bundle

This reactor creates a webapp and docker container for Magnolia CMS. It inherits from ```magnolia-empty-webapp``` 
and relies on as little customizations as possible.

# Run the container

Pull and run the container:
`docker pull docker.pkg.github.com/magnolia-sre/magnolia-docker/magnolia-docker:latest`

You need to [authenticate even for public packages](https://github.community/t/docker-pull-from-public-github-package-registry-fail-with-no-basic-auth-credentials-error)

See: 
[magnolia-sre/magnolia-docker Packages](https://github.com/magnolia-sre/magnolia-docker/packages)

## Purpose

Currently, this project is more a showcase of how to set up a build pipeline for automated image creation with Magnolia.

More to come.

Refer to the [pipeline](.github/workflows/pipeline.yml) for more insights.

## Build steps

```shell script
mvn clean verify -U 
mvn docker:build
mvn docker:push
```

