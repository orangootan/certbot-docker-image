FROM ring0club/python:2.7.13-r1
RUN apk add certbot=0.14.1-r0 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["certbot"]
CMD ["--version"]
