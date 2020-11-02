# About

A blueprint project for creating a customized docker image for Magnolia CMS. Including helm-chart and pipeline for
its deployment in k8s.

## Magnolia Docker Image bundle

Creates a webapp and docker container for Magnolia CMS using `io.fabric8:docker-maven-plugin`. It inherits from ```magnolia-empty-webapp``` 
and relies on as little customizations as possible.

### Run the container

Pull and run the container:
`docker pull ghcr.io/magnolia-sre/magnolia-docker/magnolia-docker:latest`

See: 
[magnolia-sre/magnolia-docker Packages](https://github.com/orgs/magnolia-sre/packages/container/package/magnolia-docker%2Fmagnolia-docker)

## CI/CD

Refer to the [pipeline](.github/workflows/pipeline.yml) for more insights.

## Simplifications

* Uses H2 DB
* No persistent storage
* Only the author (will be addressed next)
* ..
