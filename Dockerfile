FROM alpine
MAINTAINER Santa Claus <job@dorry.io>
ENV KCP_VER 20170120
ENV KCP_URL https://github.com/xtaci/kcptun/releases/download/v$KCP_VER/kcptun-linux-amd64-$KCP_VER.tar.gz

RUN apk update && \
    apk upgrade && \
    apk add --update $KCP_DEP && \
    apk add --update bash vim curl && \
    rm -rf /var/cache/apk/*

RUN curl -sSL "$KCP_URL" | tar -xvzC /bin/

ADD init.sh ./

ENTRYPOINT ./init.sh
