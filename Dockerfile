FROM ring0club/python:3.7.3-r0
RUN echo 'https://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN apk add certbot=0.34.2-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
