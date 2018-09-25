FROM ring0club/python:2.7.15-r1
RUN apk add certbot=0.27.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
RUN apk add py2-pip && \
    pip install --upgrade pip && \
    pip install 'idna<2.7' --force-reinstall
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
