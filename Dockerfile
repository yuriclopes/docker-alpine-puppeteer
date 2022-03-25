FROM alpine:latest

ARG BUILD_DATE
ARG VCS_REF

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.12/main" >> /etc/apk/repositories \
    && apk upgrade -U -a \
    && apk add \
    libstdc++ \
    chromium \
    harfbuzz \
    nss \
    freetype \
    ttf-freefont \
    font-noto-emoji \
    wqy-zenhei \
    tini \
    make \
    gcc \
    g++ \
    python3 \
    nodejs \
    nodejs-npm \
    yarn \
    && rm -rf /var/cache/* \
    && mkdir /var/cache/apk

COPY local.conf /etc/fonts/local.conf

RUN mkdir -p /usr/src/app \
    && adduser -D chrome \
    && chown -R chrome:chrome /usr/src/app

USER chrome
WORKDIR /usr/src/app

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD 1
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

COPY --chown=chrome package.json package-lock.json ./

RUN npm install

ENTRYPOINT ["tini", "--"]