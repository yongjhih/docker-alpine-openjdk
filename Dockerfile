FROM alpine
RUN apk add --no-cache openjdk7
ENV JAVA7_HOME /usr/lib/jvm/default-jvm
ENV JAVA_HOME $JAVA7_HOME
