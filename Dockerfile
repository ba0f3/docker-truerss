FROM alpine:3.3
MAINTAINER Huy Doan <me@huy.im>

RUN apk add --update openjdk8 && rm -rf /var/cache/apk/*

RUN mkdir -p /opt/truerss
ADD https://github.com/truerss/truerss/releases/download/0.0.1/truerss-0.0.1.jar /opt/truerss

ADD entrypoint.sh /opt/truerss
RUN chmod +x /opt/truerss/entrypoint.sh

WORKDIR /opt/truerss

VOLUME /root/.truerss

EXPOSE 8000/tcp
EXPOSE 8080/tcp

ENTRYPOINT ["/opt/truerss/entrypoint.sh"]
