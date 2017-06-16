FROM ring0club/python:2.7.13-r2
RUN apk add certbot=0.15.0-r0 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["certbot"]
CMD ["--version"]
