FROM ring0club/python:2.7.15-r2
RUN apk add certbot=0.29.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
RUN apk add py2-pip && \
    pip install --upgrade pip && \
    pip install zope.hookable && \
    pip install zope.deprecation && \
    pip install zope.deferredimport
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
