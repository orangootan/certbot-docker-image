FROM ring0club/python:3.8.8-r0
RUN apk add certbot=1.13.0-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
