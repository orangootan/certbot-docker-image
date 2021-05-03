FROM ring0club/python:3.9.4-r0
RUN apk add py3-six=1.15.0-r1 \
            py3-cryptography=3.3.2-r1 \
            py3-tz=2021.1-r1 \
            py3-setuptools=52.0.0-r3 \
            py3-requests=2.25.1-r3 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add certbot=1.14.0-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/letsencrypt /var/log/letsencrypt
ENTRYPOINT ["/bin/sh"]
