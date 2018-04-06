FROM hackmdio/hackmd

USER root
RUN mkdir /db && chown hackmd /db

USER hackmd

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY config.json /files/config.json

# bool 値は環境変数で
ENV HMD_PROTOCOL_USESSL=true \
    HMD_ALLOW_ANONYMOUS=false \
    HMD_ALLOW_ANONYMOUS_EDITS=true \
    HMD_EMAIL=true \
    HMD_ALLOW_EMAIL_REGISTER=false
