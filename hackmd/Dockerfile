FROM hackmdio/hackmd

USER root
RUN mkdir /db && chown hackmd /db

USER hackmd

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY config.json /files/config.json
