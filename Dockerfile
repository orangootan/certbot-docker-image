FROM ring0club/python:2.7.14-r2
RUN apk add certbot=0.21.0-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
RUN apk add py2-pip \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache && \
    pip install josepy
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
