FROM alpine:3.18

WORKDIR /project

# add primary dependencies
RUN apk add --no-cache --virtual .build-deps bash curl wget musl-dev build-base micro htop binutils coreutils git cmake meson bison ninja \
    perl python3-dev pkgconf automake autoconf libc-dev libstdc++ libtool linux-headers lz4-dev readline util-linux-misc \
    xz zlib-dev zlib-static zstd-dev zstd-static upx patchelf gettext-dev po4a doxygen

# add extra dependencies
RUN apk add --no-cache --virtual .build-deps bzip2-dev curl-dev icu-dev libgcrypt-dev libjpeg-turbo-dev libpq-dev libpng-dev libsodium-dev libwebp-dev \
    libxml2-dev libxslt-dev libzip-dev ncurses-dev oniguruma-dev readline-dev sqlite-dev tidyhtml-dev zstd-dev mbedtls-dev libidn2-dev \
    libevent-dev c-ares-dev pcre2-dev re2c fuse-dev libnfs-dev \
    bzip2-static curl-static icu-static libgcrypt-static libgpg-error-static libjpeg-turbo-static libpng-static \
    libsodium-static libwebp-static ncurses-static readline-static sqlite-static tidyhtml-static zlib-static mbedtls-static libidn2-static \
    libevent-static c-ares-static fuse-static brotli-static nghttp2-static openssl-libs-static zstd-static

ENTRYPOINT ["bash","-il"]

