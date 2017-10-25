FROM ring0club/python:2.7.13-r2
RUN apk add certbot=0.18.2-r0 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
