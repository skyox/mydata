FROM alpine:edge

ARG LEANOTE_VERSION=2.4

RUN apk add --no-cache --update curl ca-certificates \
    && curl -SL https://jaist.dl.sourceforge.net/project/leanote-bin/${LEANOTE_VERSION}/leanote-linux-amd64-v${LEANOTE_VERSION}.bin.tar.gz \
    |tar -zxC / \
    && rm -rf /leanote/mongodb_backup \
    && chmod a+x /leanote/bin/run.sh && chmod a+x /leanote/bin/leanote-linux-amd64 \
    && sed -i '/chmod/d' /leanote/bin/run.sh \
    && apk del --purge curl

VOLUME /leanote/public/upload

EXPOSE 9000

CMD ["/leanote/bin/run.sh"]
