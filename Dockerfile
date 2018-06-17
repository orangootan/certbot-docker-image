FROM ring0club/python:2.7.15-r0
RUN apk add py2-pip && \
    pip install requests-toolbelt
RUN apk add certbot=0.25.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
