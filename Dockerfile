FROM ring0club/python:3.8.7-r0
RUN apk add certbot=1.11.0-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
