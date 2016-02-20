FROM alpine
RUN apk add --no-cache openjdk8
ENV JAVA8_HOME /usr/lib/jvm/default-jvm
ENV JAVA_HOME $JAVA8_HOME
