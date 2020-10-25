FROM ring0club/python:3.8.6-r0
RUN apk add certbot=1.9.0-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
RUN apk add py3-pip --no-cache && \
    pip install acme==1.8.0
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
