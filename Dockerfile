FROM alpine:3.3
ENV LANG C.UTF-8

# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN { \
              echo '#!/bin/sh -e'; \
              echo; \
              echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
    } > /usr/local/bin/docker-java-home && \
    chmod +x /usr/local/bin/docker-java-home

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

ENV JAVA_VERSION 8u66
ENV JAVA_ALPINE_VERSION 8.66.17-r2
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/bin

RUN set -x \
      && apk add --no-cache openjdk8=$JAVA_ALPINE_VERSION \
      && [ "$JAVA_HOME" = "$(docker-java-home)" ]
