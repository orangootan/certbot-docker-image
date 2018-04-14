FROM ring0club/python:2.7.14-r4
RUN apk add certbot=0.23.0-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
