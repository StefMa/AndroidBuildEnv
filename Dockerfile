FROM openjdk:8-jdk

# Install Android SDK Tools and move to /usr/local/android-sdk/tools
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
RUN unzip -q sdk-tools-linux-3859397.zip
RUN mkdir /usr/local/android-sdk
RUN mv tools /usr/local/android-sdk/tools
RUN rm sdk-tools-linux-3859397.zip

# Setup Android SDK environment variables
ENV ANDROID_HOME /usr/local/android-sdk
ENV ANDROID_SDK_HOME $ANDROID_HOME
ENV PATH $PATH:$ANDROID_SDK_HOME

# Creating project directories prepared for build when running
# `docker run`
ENV PROJECT /project
RUN mkdir $PROJECT
WORKDIR $PROJECT

# Move right sdk location into local.properties
RUN echo "sdk.dir=$ANDROID_HOME" > local.properties
