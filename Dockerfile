FROM ruby:2.3
MAINTAINER Michael Bates <mklbtz@gmail.com>

RUN apt-get update && \
    apt-get install -y cmake freeglut3-dev && \
    rm -rf /var/lib/apt/lists/*

RUN set -ex && \
    mkdir oce/build && \
    cd oce/build && \
    cmake .. && \
    make && \
    make install/strip && \
    cd ../.. && rm -rf oce

