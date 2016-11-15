FROM alpine

ENV KCP_VER 20161111
ENV KCP_URL https://github.com/xtaci/kcptun/releases/download/v$KCP_VER/kcptun-linux-386-$KCP_VER.tar.gz

RUN apk update && \
    apk upgrade && \
    apk add --update $KCP_DEP && \
    apk add --update bash vim curl && \
    rm -rf /var/cache/apk/*

RUN curl -sSL "$KCP_URL" | tar -xvzC /bin/

ADD init.sh ./

ENTRYPOINT sh init.sh
