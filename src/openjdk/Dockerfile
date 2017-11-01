FROM openjdk:8

# RUN apt-get install -y --no-install-recommends \

WORKDIR /var/lib

# RUN set -xe; \
RUN set -xe; \
    hg clone http://hg.openjdk.java.net/jdk8u/jdk8u; \
    cd jdk8u; \
    sh ./get_source.sh; \
    apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cpio \
        file \
        libasound2-dev \
        libcups2-dev \
        libfreetype6 \
        libx11-dev \
        libxext-dev \
        libxrender-dev \
        libxt-dev \
        libxtst-dev \
        make \
        zip \
        ; \
    rm -rf /var/lib/apt/lists/*; \
    bash configure \
        --with-freetype-include=/usr/include/freetype2 \
        --with-freetype-lib=/usr/lib/x86_64-linux-gnu;
