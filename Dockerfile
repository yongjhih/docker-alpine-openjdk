FROM alpine
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --update openjdk8 && \
    rm /var/cache/apk/*
