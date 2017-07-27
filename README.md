# AndroidBuildEnv

This repository contains a simple `Dockerfile` (image) which enables everything you needed for a Android build environment.

## Where to find

This image was uploaded to Bintray and can be used with
```
FROM stefma-docker-hub.bintray.io/android-build-env:$VERSION
```

## Locally

You build the image locally and enter the container with the following commands:
```
docker build -t android-build-env // build the image
docker run -i -v $PWD:/project -t android-build-env /bin/bash // dig into it
```

> **Note:** $PWD:/project will be put the current path (and all of its files) into the /project folder in the container

## Version

* 0.1-alpha - Inital commit
