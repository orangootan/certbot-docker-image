FROM ring0club/python:2.7.14-r2
RUN apk add certbot=0.21.1-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
