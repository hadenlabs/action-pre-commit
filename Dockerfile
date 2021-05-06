FROM alpine:3.13

ENV PATH $PATH:/root/.local/bin

ENV BASE_DEPS \
    coreutils

ENV PERSIST_DEPS \
    bash \
    git \
    grep  \
    jq

ENV BUILD_DEPS \
    alpine-sdk \
    curl \
    fakeroot \
    build-base \
    freetype-dev \
    gcc \
    openssl

RUN apk --no-cache add $BASE_DEPS \
    $BASE_DEPS \
    && apk add --no-cache --virtual .build-deps $BUILD_DEPS \
    && sed -i "s/root:\/root:\/bin\/ash/root:\/root:\/bin\/bash/g" /etc/passwd \
    && apk del .build-deps \
    && rm -rf /root/.cache \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

COPY provision/script/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
