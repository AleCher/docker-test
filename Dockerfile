FROM debian:9.1

RUN \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
        openssh-client \
        bc \
        build-essential \
        bzip2 \
        ccache \
        cpio \
        git \
        gzip \
        libc6:i386 \
        libmpc3:i386 \
        libncurses5-dev \
        make \
        openssh-client \
        patch \
        python \
        rsync \
        sudo \
        unzip \
        wget \
        zlib1g:i386 \
    && \
    useradd --create-home --shell /bin/bash build && \
    true

WORKDIR /home/build
USER build
