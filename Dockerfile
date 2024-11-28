FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL org.opencontainers.image.title="Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/hoanganhduc/VNU-HUS-MAT3508"
LABEL org.opencontainers.image.description="A custom Ubuntu installation with some extra packages"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.authors="Duc A. Hoang <anhduc.hoang1990@gmail.com>"

RUN apt update && \
    apt install -y swi-prolog gprolog && \
    apt clean

RUN git clone https://github.com/eprover/eprover.git && \
    cd eprover && \
    ./configure --bindir=/usr/bin && \
    make && make install && \
    cd .. && rm -rf eprover