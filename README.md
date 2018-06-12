# AndroidBuildEnv

This repository contains a simple `Dockerfile` (image) which enables everything you needed for a Android build environment.

## Where to find

This image was uploaded to Bintray and can be used with
```
FROM stefma-docker-hub.bintray.io/android-build-env:$VERSION
```

## Locally

You can build the image locally and enter the container with the following commands:
```
docker build -t android-build-env // build the image
docker run -i -v $PWD:/project -t android-build-env /bin/bash // dig into it
```

> **Note:** `$PWD:/project` will be put the current path (and all of its files) into the `/project` folder in the container

## Create a image

The following `Dockerfile` can be used to create a image for an actual Android Project using this image
```
FROM stefma-docker-hub.bintray.io/android-build-env:0.2-alpha
COPY . /project
WORKDIR /project
RUN echo "sdk.dir=$ANDROID_HOME" > local.properties
RUN ./gradlew assembleDebug
```

## Publishing

How to publish a image to Bintray can be found [here](https://medium.com/@StefMa/publishing-a-docker-image-to-bintray-8f3ebd57f1c2).

## Version

* 0.1-alpha - Inital commit
* 0.2-alpha - Accept the licenses for API 26
