FROM ring0club/python:2.7.13-r1
ARG REPO=http://dl-cdn.alpinelinux.org/alpine/edge/community
ARG VERSION=0.14.1-r0
RUN apk add certbot=$VERSION --update-cache --repository $REPO
EXPOSE 80 443
VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["certbot"]
CMD ["--help"]
